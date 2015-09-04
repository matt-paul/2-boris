require_relative "../lib/Bike"

describe Bike do

  it {expect(subject).to respond_to(:working?)}
end