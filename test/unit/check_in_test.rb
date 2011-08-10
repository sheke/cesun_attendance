require 'test_helper'

class CheckInTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end  
  test 'can_create' do
    assert_difference 'CheckIn.count', 3 do
      3.times{ |n| Factory.create( :check_in)}
    end
  end
  test 'can_update' do
    assert check_in = Factory.create( :check_in )
    assert check_in.update_attributes!( :indate=> Time.now,:enddate=> Time.now,:teachers_id=>89)        
  end
  test 'can_delete' do
    assert check_in = Factory.create( :check_in )
    assert check_in.destroy
  end
end
