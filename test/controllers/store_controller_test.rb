require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main ul.catalog li', 3
    assert_select '.price', /\$[,\d]+\.\d\d/ # dollar sign followed by at least one numbers,
    # commas, or digits, followed by decimal point and 2 digits $12.99 /\$[,\d\]+\.\d\d/]
    assert_select 'div.price', minimum: 1
    assert_select 'h2', 'MyString'
  end

end
