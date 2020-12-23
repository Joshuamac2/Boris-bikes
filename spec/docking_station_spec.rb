require 'docking_station.rb'

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike}

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes avilable' do
      expect { subject.release_bike }.to raise_error 'No bikes avilable'
    end

    it 'raises an error when bike is broken' do
      bike = double(:bike, working?: false)
      subject.bikes.push(bike)
      expect {subject.release_bike}.to raise_error 'Broken bike'
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns docked bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq subject.bikes
    end

    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe '#remove_bikes' do
    it 'removes broken bikes' do
      bike = double(:bike, working?: false)
      subject.dock(bike)
      subject.remove_bikes
      expect(subject.bikes).to be_empty
    end
  end
end
