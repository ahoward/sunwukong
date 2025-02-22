class SunWukong
  VERSION = '0.4.2'

  class << SunWukong
    def version
      VERSION
    end

    def repo
      'https://github.com/ahoward/sunwukong'
    end

    def summary
      <<~____
        sunwukong is the ai agenic framework for super monkeys
      ____
    end

    def description
      <<~____
        sunwukong is a a library, framework, and set of tools that allow
        non-technical users to manage and deploy complex ai agenic frameworks
        in seconds for free at best, and cheap at worst.
      ____
    end

    def libs
      %w[
      ]
    end

    def dependencies
      {
      }
    end

    def libdir(*args, &block)
      @libdir ||= File.dirname(File.expand_path(__FILE__))
      args.empty? ? @libdir : File.join(@libdir, *args)
    ensure
      if block
        begin
          $LOAD_PATH.unshift(@libdir)
          block.call
        ensure
          $LOAD_PATH.shift
        end
      end
    end

    def load(*libs)
      libs = libs.join(' ').scan(/[^\s+]+/)
      libdir { libs.each { |lib| Kernel.load(lib) } }
    end

    def load_dependencies!
      libs.each do |lib|
        require lib
      end

      begin
        require 'rubygems'
      rescue LoadError
        nil
      end

      has_rubygems = defined?(gem)

      dependencies.each do |lib, dependency|
        gem(*dependency) if has_rubygems
        require(lib)
      end
    end
  end
end
