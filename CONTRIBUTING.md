# Table of contents

- [How to contribute](#how-to-contribute)
- [How to submit changes](#how-to-submit-changes)
- [Testing](#testing)
- [What to work on](#what-to-work-on)
- [Request enhancements](#request-enhancements)
- [Talk to us](#talk-to-us)
- [Last words](#last-words)

# How to contribute

Thank you very much for your interest in helping openSNP! We're always happy to see new faces here. To make this a safe and inclusive space there is a [code of conduct for the project](https://github.com/ericjohnston/snpr/blob/master/CODE_OF_CONDUCT.md). To see how to run openSNP in your development environment see [INSTALL.md](https://github.com/ericjohnston/snpr/blob/master/INSTALL.md)

We do have a [Roadmap](https://github.com/ericjohnston/snpr/blob/master/ROADMAP.md) file to see what we want to achieve over the next weeks and months.

## How to submit changes

We accept [pull requests](https://help.github.com/articles/using-pull-requests/) via the [GitHub interface](https://github.com/ericjohnston/snpr/pull/new/master)!  

We are using rubocop and Travis-CI. After you have submitted the request, rubocop will complain about any style-breaks (and it always complains) while Travis-CI will run all tests in the background to see whether the pull request broke anything.

## Testing

Inside snpr/:

```
bundle exec rake
```

This runs RSpec tests as well as the **legacy** test/unit ones.

## What to work on
We do have a [Roadmap](https://github.com/ericjohnston/snpr/blob/master/ROADMAP.md) file to see what we want to achieve over the next weeks and months.

Additionally the [issues page](https://github.com/ericjohnston/snpr/issues) has several open issues, some of which are [marked as "easy-first-bugs"](https://github.com/ericjohnston/snpr/issues?q=is%3Aopen+is%3Aissue+label%3Aeasy-first-bugs). Some other, general things to work on:

- Currently we have two different testing environments - the legacy ones in test/unit, and the RSpec tests. It would be great to have all tests inside RSpec.
- There are many minor style-problems which live in .rubocop_todo.yml inside snpr/.
- There are some feature ideas floating around in the issues, if you are interested in those please make sure you [implement tests for the new features at the same time](https://github.com/ericjohnston/snpr/issues/168).

## Request enhancements

Open an issue on the [issues page](https://github.com/ericjohnston/snpr/issues), or send a mail to snpr-development@googlegroups.com so we can get the ball rolling!

## Talk to us

You can always open an issue for specific problems, or send a mail to snpr-development@googlegroups.com if you want to discuss something or if you have any questions or need help with something. There's also info@opensnp.org if something broke on the webpage itself.

We're also available on Twitter:

@[gedankenstuecke](https://twitter.com/gedankenstuecke)
@[helgerausch](https://twitter.com/helgerausch)
@[philippbayer](https://twitter.com/philippbayer)

[There's also a Gitter](https://gitter.im/openSNP/snpr) where you can talk with us.

## Last words

![Thank you!](https://media1.giphy.com/media/10NVUaFVKzbUpW/200.gif)

Thank you very much for your interest in the project and for the help of all volunteers who've helped us so far! There is a [humans.txt](https://github.com/ericjohnston/snpr/blob/master/public/humans.txt) where we celebrate all of you!
