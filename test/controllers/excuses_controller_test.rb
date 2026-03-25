require "test_helper"

class ExcusesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excuses_index_url
    assert_response :success
  end
end
