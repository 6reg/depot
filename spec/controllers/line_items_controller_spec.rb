require 'spec_helper'
require 'app/controllers/line_items_controller.rb'

describe LineItemsController, type: :controller do
  describe 'GET #index' do
    let(:line_item) { { product_id: 1, cart_id: 1 } }
    it 'should get index' do
      get line_items_url
      assert_response :success
    end
  end
end
