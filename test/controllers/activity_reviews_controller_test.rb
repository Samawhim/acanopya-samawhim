require 'test_helper'

class ActivityReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get activity_reviews_create_url
    assert_response :success
  end

end
