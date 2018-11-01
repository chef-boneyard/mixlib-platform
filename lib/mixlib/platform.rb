module Mixlib
  class Platform

    attr_reader :command, :name

    def initialize
      @command = "uname -v" # default command will be methodized
    end

    def found?
      !!@name
    end

    def detect(value)
      @name = find_platform_name(value)
    end

    def find_platform_name(detect_result)
      case detect_result
      when /Ubuntu/i
        "ubuntu"
      else
        raise "not found"
      end
    end
  end
end
