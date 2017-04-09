require 'test_helper'

class NewProductTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test 'create a new product' do
    visit '/products/new'

    fill_in 'product_name', with: 'Le Wagon'
    fill_in 'product_tagline', with: 'Change your life: Learn to code'
    click_button 'Create Product'

    # Should be redirected to Home with new product
    assert_equal product_path(Product.last), page.current_path
    assert_equal 200, page.status_code
    assert page.has_content?('Change your life: Learn to code')
  end
end
