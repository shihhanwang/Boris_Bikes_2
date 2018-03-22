require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :release_bike }

  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  # it 'docks something' do
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end

  # it 'return docked bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end

  describe '#release_bike' do
    it 'raises an error' do
      expect { subject.release_bike }.to raise_error ("No bike available")
    end
  end

  describe '#dock' do
    it ' raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock("bike") }.to raise_error ("Docking station is full")
    end
  end

end
