require "docking_station"

describe Dockingstation do

  it { is_expected.to respond_to :release_bike }

  it "releases the bike" do
  	bike = Bike.new
  	expect(bike).to be_working
  end

  # Check to see if Dockingstation.dock method exists/responds
  # with 1 argument being taken in.
  it { is_expected.to respond_to(:dock).with(1).arguments }

  # Check to see if the dock method returns a value (the Bike
  # we docked) & not nil.
 	it "This allows us to dock our bike" do
 	  bike = Bike.new
 		expect(subject.dock(bike)).to eq bike
 end

end
