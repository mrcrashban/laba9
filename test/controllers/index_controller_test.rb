require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test 'should get output' do
    get index_output_url
    assert_response :success
  end
  test 'it should get 13 iter' do
    get index_output_url
    assert_response :success
    assert_equal 17, assigns(:arr).size
  end
end
