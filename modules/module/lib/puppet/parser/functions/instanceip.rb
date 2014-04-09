module Puppet::Parser::Functions
  newfunction(:instanceip, :type => :rvalue) do |args|
    instance = args[0].to_s
    number = instance[8,instance.length-8].to_i
    '33.33.33.'+ (50+number).to_s
  end
end
