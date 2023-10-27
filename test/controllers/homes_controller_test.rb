require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/home.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "show" do
    get "/homes/#{Photo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["description", "year_built", "square_feet", "bedrooms", "bathrooms", "floors", "availability", "address", "price"], data.keys
  end
end
