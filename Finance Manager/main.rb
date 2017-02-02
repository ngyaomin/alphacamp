load 'account.rb'
load 'interface.rb'
require 'yaml'

parsed = begin
  YAML.load(File.open("/Finance Manager/data.yml"))
rescue ArgumentError => e
  puts "Could not parse YAML: #{e.message}"
end

Interface.new()
