require 'converter/version'
require 'converter/pattern'
require 'converter/string'

module Converter
  class Error < StandardError; end

  def self.proceed(str)
    str.split('\n').each_with_object({}) do |line, object|
      line.scan(Converter::PATTERN) do |match|
        object[match[0]] ||= {} if match[0]
        if match[1]
          object[match[0]][match[1]] ||= []
          object[match[0]][match[1]] << String.formatting(match[4])
        elsif match[0]
          object[match[0]][match[3]] = String.formatting(match[4])
        else
          object[match[3]] = String.formatting(match[4])
        end
      end
    end
  end
end
