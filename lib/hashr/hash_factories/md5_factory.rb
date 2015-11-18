module Hashr
  module HashFactories
    class MD5Factory
      def self.build(message)
        Digest::MD5.base64digest(message)
      end
    end
  end
end
