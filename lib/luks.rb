require "luks/version"

class Luks
  # See http://pueblo.sourceforge.net/doc/manual/ansi_color_codes.html
  COLOR_CODES = {
    reset: "[0m", # this is not a color, but the code that resets previous changes
    red: "[31m",
    green: "[32m",
    yellow: "[33m",
    blue: "[34m",
    magenta: "[35m",
    cyan: "[36m"
  }.freeze

  def self.colors
    color_symbols.each do |color_symbol|
      Kernel.send(color_symbol, "#{color_symbol}!")
    end
  end

  private
    def self.color_symbols
      return %i|red green blue yellow magenta cyan|
    end

    def self.apply_escape_sequences(color_symbol, text)
      raise "The argument for :#{color_symbol} does not implement :to_s" unless text.respond_to?(:to_s)
      escape = "\e#{Luks::COLOR_CODES[color_symbol]}".freeze
      reset = "\e#{Luks::COLOR_CODES[:reset]}".freeze

      return puts("#{escape}#{text}#{reset}")
    end

end

require 'luks/color_puts'
