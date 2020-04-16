require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it "gets bike" do
    expect(subject.release_bike).to be_a(Bike)
  end

  it "gets working bike" do
    expect(subject.release_bike.working?).to eq(true)
  end

end
