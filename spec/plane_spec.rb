require 'plane'
# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
describe Plane do
 
	let(:plane) { Plane.new }
	let(:airborne_plane) do
		Plane.new.airborne!
	end

	it 'is not flying status when created' do
		expect(plane).not_to be_flying
	end

	it 'has a flying status when in the air' do
		expect(airborne_plane).to be_flying
	end

	it 'can land' do
		expect(airborne_plane.land!).not_to be_flying
	end

	it 'can take off' do
		airport = double :airport
		expect(airport).to receive(:clearance_request)
 		plane.take_off_from airport
	end
	
	it 'changes its status to flying after taking off' do
		airport = double :airport, clearance_request: :plane
		plane.take_off_from(airport)
		expect(plane).to be_flying
	end

end
 
# grand finale
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do

	it 'all planes can land and all planes can take off'

end