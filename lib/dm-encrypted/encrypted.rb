module DataMapper
  class Property 
    class Encrypted < String 

      def load(value)
        return unless value
        RCrypt.decrypt(value, ::PRIVATE_KEY)
      end

      def dump(value)
        return unless value
        RCrypt.encrypt(value, ::PUBLIC_KEY)
      end

      def typecast(value)
        return value if value.is_a?(String)
        return value.to_s if value.respond_to? :to_s
        value
      end
    end
  end
end

