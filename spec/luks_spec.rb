require 'spec_helper'
# rspec spec/luks_spec.rb
describe Luks do
  it 'has a version number' do
    expect(Luks::VERSION).not_to be nil
  end

  describe ".colors" do
    it "should output available color puts methods" do
      expect(STDOUT).to receive(:puts).exactly(6).times

      Luks.colors
    end
  end
end
