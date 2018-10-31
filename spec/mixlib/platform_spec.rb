require "spec_helper"
require "mixlib/platform"

RSpec.describe Mixlib::Platform do
  it "has a version number" do
    expect(Mixlib::Platform::VERSION).not_to be nil
  end

  it "does something useful" do
    platform = Mixlib::Platform.new
    until platform.found? != true
      result = platform.command.next
      platform.result(result)
    end
  end
end
