require "test_helper"

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get static_page_top_url
    assert_response :success
  end

  test "should get privacy" do
    get static_page_privacy_url
    assert_response :success
  end

  test "should get disclaimer" do
    get static_page_disclaimer_url
    assert_response :success
  end
end
