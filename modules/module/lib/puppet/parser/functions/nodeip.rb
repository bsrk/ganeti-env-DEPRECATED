module Puppet::Parser::Functions
  newfunction(:nodeip, :type => :rvalue) do |args|
    node = args[0].to_s
    number = node[4,node.length-4].to_i
    '33.33.33.'+ (10+number).to_s
  end
end
