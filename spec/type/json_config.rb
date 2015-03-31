require 'json'

module Serverspec
  module Type
    class JSONConfig < Base
      def initialize(file)
        file = ::File.read(file)
        @data = JSON.parse(file)
      end

      def has_key?(key)
        @data.has_key?(key)
      end

      def has_key_value?(key, value)
        @data.has_key?(key) && @data[key] == value
      end
    end

    def json_config(file)
      JSONConfig.new(file)
    end
  end
end

include Serverspec::Type
