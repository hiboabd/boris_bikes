require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it "gets bike" do
    subject.dock(Bike.new) # had to add this as doesn't work when shed is empty
    expect(subject.release_bike).to be_a(Bike)
  end

  it "gets working bike" do
    subject.dock(Bike.new) # had to add this as doesn't work when shed is empty
    expect(subject.release_bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock)}


  it "dock takes one argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "stores bike in shed" do
      subject.dock(Bike.new)
      expect(subject.shed).to be_a(Bike)
  end

  it "raises error if shed empty" do
    expect{ subject.release_bike }.to raise_error 'Error: shed empty'
  end
end
