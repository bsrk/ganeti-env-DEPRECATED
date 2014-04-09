module Puppet::Parser::Functions
  newfunction(:hostname, :type => :rvalue) do |args|
    args[0].to_s + '.example.org'
  end
end
