# frozen_string_literal: true

class Snp < ApplicationRecord
  include PgSearchCommon

  has_many :user_snps, foreign_key: :snp_name, primary_key: :name
  has_many :users, through: :user_snps
  has_many :pgp_annotations
  has_many :snp_references
  has_many :snp_comments

  serialize :allele_frequency
  serialize :genotype_frequency

  extend FriendlyId
  friendly_id :name, use: :history, slug_column: :name

  validates_uniqueness_of :name

  pg_search_common_scope against: :name

  after_create :default_frequencies

  def default_frequencies
    # if variations is empty, put in our default array
    self.allele_frequency ||= { "A" => 0, "T" => 0, "G" => 0, "C" => 0}
    self.genotype_frequency ||= {}
  end

  def self.update_frequencies
    Snp.find_each do |s|
      Sidekiq::Client.enqueue(Frequency,s.id)
    end
  end

  %w(snpedia mendeley genome_gov plos).each do |source|
    define_method(:"#{source}_papers") do
      klass = "#{source.camelize}Paper".constantize
      klass.joins(:snp_references).where(snp_references: { snp_id: id })
    end

    define_method(:"#{source}_updated!") do
      update_column(:"#{source}_updated", Time.current)
      update_ranking
    end
  end

  def update_ranking
    rank = mendeley_papers.count   +
      2 * plos_papers.count       +
      5 * snpedia_papers.count    +
      2 * genome_gov_papers.count +
      2 * pgp_annotations.count
    update_column(:ranking, rank)
  end

  def total_genotypes
    genotype_frequency.values.sum
  end

  def total_alleles
    allele_frequency.values.sum
  end
end
