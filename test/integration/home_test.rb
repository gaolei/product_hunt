require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'loads correctly' do
    visit '/'
    assert_title 'ProductHunt'
    assert page.has_content?('Products')
  end
end
