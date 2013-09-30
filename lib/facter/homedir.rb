# homedir.rb

require 'etc'

Facter.add("homedir") do
  setcode do
    Etc.getpwnam('postgres').dir    
  end
end
