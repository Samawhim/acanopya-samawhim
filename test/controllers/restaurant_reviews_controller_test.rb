require 'test_helper'

class RestaurantReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get restaurant_reviews_create_url
    assert_response :success
  end

end
