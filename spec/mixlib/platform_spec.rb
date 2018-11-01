require "spec_helper"
require "mixlib/platform"

RSpec.describe Mixlib::Platform do
  it "find platform name" do
    platform = Mixlib::Platform.new
    platform.detect("Ubuntu")
    expect(platform.name).to eq "ubuntu"
    expect(platform.found?).to be true
  end
end
