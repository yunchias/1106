require 'test_helper'

class AuctionControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
    assert_select '#main .entry', 3
    assert_select '.item_price', /\$[,\d]+\.\d\d/

  end

end
