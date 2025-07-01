require "test_helper"

class Api::V1::CashFlowEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_cash_flow_entries_index_url
    assert_response :success
  end
end
