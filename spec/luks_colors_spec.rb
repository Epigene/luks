# rspec spec/luks_colors_spec.rb
RSpec.describe "Luks colors" do
  describe ".red(text)" do
    it "should output red text" do
      expect(STDOUT).to receive(:puts).with("\e[31m This is red! \e[0m")

      red " This is red! "
    end
  end

  describe ".green(text)" do
    it "should output green text" do
      expect(STDOUT).to receive(:puts).with("\e[32m This is green! \e[0m")

      green " This is green! "
    end
  end

  describe ".yellow(text)" do
    it "should output yellow text" do
      expect(STDOUT).to receive(:puts).with("\e[33m This is yellow! \e[0m")

      yellow " This is yellow! "
    end
  end

  describe ".blue(text)" do
    it "should output blue text" do
      expect(STDOUT).to receive(:puts).with("\e[34m This is blue! \e[0m")

      blue " This is blue! "
    end
  end

  describe ".magenta(text)" do
    it "should output magenta text" do
      expect(STDOUT).to receive(:puts).with("\e[35m This is magenta! \e[0m")

      magenta " This is magenta! "
    end
  end

  describe ".cyan(text)" do
    it "should output red text" do
      expect(STDOUT).to receive(:puts).with("\e[36m This is cyan! \e[0m")

      cyan " This is cyan! "
    end
  end

  describe ".gray(text)" do
    it "should output grey text" do
      expect(STDOUT).to receive(:puts).with("\e[36m This is grey! \e[0m")

      gray " This is grey! "
    end
  end
end
