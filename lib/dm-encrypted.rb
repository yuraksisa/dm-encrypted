require 'rcrypt'
require 'dm-core'

module DataMapper
  class Property  
    autoload :Encrypted, 'dm-encrypted/encrypted'
  end
end

