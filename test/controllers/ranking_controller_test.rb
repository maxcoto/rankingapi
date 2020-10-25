require 'test_helper'

class RankingControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get ranking_get_url
    assert_response :success
  end

  test "should get set" do
    get ranking_set_url
    assert_response :success
  end

end
