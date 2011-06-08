require 'lib/docsplit'
require 'fileutils'

class Test::Unit::TestCase
  include Docsplit

  OUTPUT = File.expand_path '../output', __FILE__

  def clear_output
    FileUtils.rm_r(OUTPUT) if File.exists?(OUTPUT)
  end

  def teardown
    clear_output
  end

end