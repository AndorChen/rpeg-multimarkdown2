require 'mkmf'

dir_config('peg_multimarkdown')

$objs = %w[markdown.o markdown_lib.o markdown_output.o markdown_parser.o]

create_header
create_makefile('peg_multimarkdown')
