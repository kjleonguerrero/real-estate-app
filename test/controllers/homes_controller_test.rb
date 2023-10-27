require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/home.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "show" do
    get "/home/#{Photo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["description", "year_built", "square_feet", "bedrooms", "bathrooms", "floors", "availability", "address", "price"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { description: "test product", year_built: 1, square_feet: 12312, bedrooms: 1, bathrooms: 1, floors: 1, availability: true, address: "Test address", price: 1232122 }
    end
  end
end
