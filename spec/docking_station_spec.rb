require_relative "../lib/DockingStation.rb"

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "Does release_bike release working bikes?" do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
end

describe '#release_bike' do
   it 'raises an error when there are no bikes available' do
     expect {subject.release_bike}.to raise_error 'No bikes available'
   end
 end

 describe '#dock' do
  it 'raises an error when full' do
  subject.dock(Bike.new)
  expect { subject.dock Bike.new }.to raise_error 'Docking station full'
end
end
end


# 2) DockingStation#release_bike raises an error when there are no bikes available
#      Failure/Error: expect (subject.release_bike).to raise_error 'No bikes available'
#      RuntimeError:
#        No bikes available
#      # ./lib/DockingStation.rb:6:in `release_bike'
#      # ./spec/docking_station_spec.rb:16:in `block (3 levels) in <top (required)>'
#
# Finished in 0.00166 seconds (files took 0.07396 seconds to load)
# 5 examples, 2 failures
#
# Failed examples:
#
# rspec ./spec/docking_station_spec.rb:9 # DockingStation Does release_bike release working bikes?
# rspec ./spec/docking_station_spec.rb:15 # DockingStation#release_bike raises an error when there are no bikes available
