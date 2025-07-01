require "test_helper"

class Api::V1::SummaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_summary_index_url
    assert_response :success
  end
end
