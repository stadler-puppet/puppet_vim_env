# homedir.rb

require 'etc'

Facter.add("homedir") do
  setcode do
    login = Etc.getlogin
    Etc.getpwnam(login).dir    
  end
end
