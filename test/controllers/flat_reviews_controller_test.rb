require 'test_helper'

class FlatReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get flat_reviews_create_url
    assert_response :success
  end

end
