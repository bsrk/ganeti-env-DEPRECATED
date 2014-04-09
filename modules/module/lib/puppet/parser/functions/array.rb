module Puppet::Parser::Functions
  newfunction(:array, :type => :rvalue) do |args|
    eval args[0]
  end
end
