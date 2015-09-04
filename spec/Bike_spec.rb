require_relative "../lib/Bike"

describe Bike do

  it {expect(subject).to respond_to(:working?)}

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'is expected to not be broken if it is new' do
  expect(subject).not_to be_broken
end

it 'is expected to be not be working after being reported broken' do
  subject.report_broken
  expect(subject).not_to be_working
end


  # it'if bike is not broken, it should be working' do
  #   expect
  # end


end
