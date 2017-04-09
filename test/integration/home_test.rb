require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test 'loads correctly' do
    visit '/'
    assert_equal 200, page.status_code
    assert_title 'ProductHunt'
    assert page.has_content?('Products')
  end
end
