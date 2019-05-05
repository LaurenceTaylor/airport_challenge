require 'airports'
require 'planes'

describe Airport do
  it 'should store landed planes' do
    plane = Plane.new
    allow(subject).to receive(:stormy?) { false }
    plane.land_at(subject)
    expect(subject.planes.include?(plane)).to eq(true)
  end

  it 'should not contain planes which have taken off' do
    plane = Plane.new
    allow(subject).to receive(:stormy?) { false }
    plane.land_at(subject)
    plane.take_off_from(subject)
    expect(subject.planes.include?(plane)).to eq(false)
  end
end