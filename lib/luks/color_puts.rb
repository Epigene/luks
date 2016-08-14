module Kernel

  # def red
  # def ...
  Luks.send(:color_symbols).each do |color_symbol|
    define_method(color_symbol) do |*args|
      args.each do |arg_item|
        Luks.send(:apply_escape_sequences, __method__, arg_item)
      end

      return nil
    end
  end

end
