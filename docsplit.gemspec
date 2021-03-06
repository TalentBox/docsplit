Gem::Specification.new do |s|
  s.name      = 'talentbox-docsplit'
  s.version   = '0.5.3'         # Keep version in sync with docsplit.rb
  s.date      = '2011-05-13'

  s.homepage    = "http://documentcloud.github.com/docsplit/"
  s.summary     = "Break Apart Documents into Images, Text, Pages and PDFs"
  s.description = <<-EOS
    Docsplit is a command-line utility and Ruby library for splitting apart
    documents into their component parts: searchable UTF-8 plain text, page
    images or thumbnails in any format, PDFs, single pages, and document
    metadata (title, author, number of pages...)
  EOS

  s.authors           = ['Jeremy Ashkenas', 'Samuel Clay']
  s.email             = 'jeremy@documentcloud.org'
  s.rubyforge_project = 'docsplit'

  s.require_paths     = ['lib']
  s.executables       = ['docsplit']

  s.files = Dir['build/**/*', 'lib/**/*', 'bin/*', 'vendor/**/*',
                'docsplit.gemspec', 'LICENSE', 'README']

  s.add_runtime_dependency("file_wrapper", ["~> 0.4.1"])
end