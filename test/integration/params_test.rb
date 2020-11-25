require 'test_helper'

class ParamsTest < ActionDispatch::IntegrationTest
  test "it fails with unknown parameter" do
    post '/bar/foo', params: { attr_1: 'foo', attr_2: 'bar' }, as: :json

    assert_response :success
  end

  test "it works" do
    post '/bar/foo', params: { attr_1: 'foo', attr_2: 'bar' }

    assert_response :success
  end
end
