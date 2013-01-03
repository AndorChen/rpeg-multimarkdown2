# Ruby PEG MultiMarkdown 2

An extension library around [Fletcher Penney's implementation][1]
of MultiMarkdown in C. This library is based (almost entirely) on
[rpeg-multimarkdown][2].

[1]: http://github.com/fletcher/peg-multimarkdown/
[2]: https://github.com/djungelvral/rpeg-multimarkdown

## Synopsis

    >> require 'multimarkdown2'

    >> puts MultiMarkdown.new('Hello, world.').to_html
    # <p>Hello, world.</p>

    >> puts MultiMarkdown.new('_Hello World!_', :smart, :filter_html).to_html
    # <p><em>Hello World!</em></p>

    >> puts MultiMarkdown.new('_Hello World!_').to_latex
    # \emph{Hello World!}

    >> puts MultiMarkdown.new("Title: Some document\n\nSome text in the document").extract_metadata("title")
    # Some document

    >> PEGMultiMarkdown.new('Hello! World!')

## Installation / Hacking

This library requires a recent version of glib2. All modern GNU userland
systems should be fine.

Install from GEM:

    $ sudo gem install rpeg-multimarkdown2

Hacking:

    $ git clone git://github.com/AndorChen/rpeg-multimarkdown2.git
    $ cd rpeg-multimarkdown2
    $ rake test

## Changes

  * [Version 0.1.1](http://github.com/djungelvral/rpeg-multimarkdown/tree/v0.1.1)

## COPYING

The peg-markdown, peg-multimarkdown, and Ruby PEG Markdown extension sources
are licensed under the GPL and the Ruby PEG MultiMarkdown extension sources
adopts this license. See the file LICENSE included with this distribution for
more information.
