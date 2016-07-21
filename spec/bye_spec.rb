require 'spec_helper'

describe Bye do
  describe Object do
    it 'does not have a try method' do
      expect(Object.methods).to_not include(:try)
    end
  end
end
