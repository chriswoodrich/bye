require 'spec_helper'

describe Bye do
  it 'has a version number' do
    expect(Bye::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Bye).to eq(true)
  end
end
