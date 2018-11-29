require "docking_station"

describe Dockingstation do

  it { is_expected.to respond_to :release_bike }

  it "releases the bike" do
  	bike = Bike.new
    expect(bike).to be_working
  end

  it "releases bike and raises error" do
  	bike = Bike.new
    # subject.dock(bike)
  	# expect(subject.release_bike).to eq bike

    expect{ subject.release_bike }.to raise_error "No bikes to release"
  end

  it "raises error if docking station is full" do
    bike = Bike.new
    # subject.dock(bike)
    # expect(subject.release_bike).to eq bike

    expect({ subject.bike }.to be_nil).to raise_error "Docking station full"
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
