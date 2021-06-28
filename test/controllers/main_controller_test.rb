require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get process_form" do
    get main_process_form_url
    assert_response :success
  end

  test "should get survey_result" do
    get main_survey_result_url
    assert_response :success
  end
end
