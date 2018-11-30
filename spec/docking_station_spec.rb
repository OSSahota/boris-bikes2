require "docking_station"

describe Dockingstation do

  it { is_expected.to respond_to :release_bike }

  it "release the bike" do
  	bike = Bike.new
    expect(bike).to be_working
  end

  # it "releases bike and raises error" do
  # 	bike = Bike.new
  #   # subject.dock(bike)
  # 	# expect(subject.release_bike).to eq bike
  #
  #   expect{ subject.release_bike }.to raise_error "No bikes to release"
  # end

  # Challenge 13 - raise error if attempting to dock a bike at docking_station
  # station when a bike is already docked and therefore at full capacity
  describe '#dock' do
    it "raise error if docking station is full (has 1 bike docked)" do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error "Docking station is at full capacity"
    end
  end

  # Check to see if Dockingstation.dock method exists/responds
  # with 1 argument being taken in.
  it { is_expected.to respond_to(:dock).with(1).arguments }

  # Check to see if the dock method returns a value (the Bike
  # we docked) & not nil.
 	it "dock the bike" do
 	  bike = Bike.new
 		expect(subject.dock(bike)).to eq bike
 end

end
