require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it "gets bike" do
    expect(subject.release_bike).to be_a(Bike)
  end

  it "gets working bike" do
    expect(subject.release_bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock)}


  it "dock takes one argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "stores bike in shed" do
      subject.dock(Bike.new)
      expect(subject.shed[-1]).to be_a(Bike)
  end

  it "adds bike in shed" do
      shed_length = subject.shed.length
      subject.dock(Bike.new)
      expect(subject.shed.length).to eq(shed_length +1)
  end

  it "raises error if shed empty" do
    puts subject.release_bike
    expect{subject.release_bike}.to raise_error 'Error: shed empty'
  end
end
