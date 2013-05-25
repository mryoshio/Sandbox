require 'yaml'
require 'openstruct'

conf = OpenStruct.new

path = './y.yaml'
if File.exists?(path)
  YAML.load_file(path).each do |k, v|
    conf.send("#{k}=", v)
  end
end

p conf
