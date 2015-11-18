lib_dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grape'
require 'grape-swagger'

Dir[File.join(lib_dir, '**', '*.rb')].each do |file|
  require file
end
