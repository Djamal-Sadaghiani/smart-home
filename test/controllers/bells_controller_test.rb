require 'test_helper'

class BellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bell = bells(:one)
  end

  test "should get index" do
    get bells_url
    assert_response :success
  end

  test "should get new" do
    get new_bell_url
    assert_response :success
  end

  test "should create bell" do
    assert_difference('Bell.count') do
      post bells_url, params: { bell: {  } }
    end

    assert_redirected_to bell_url(Bell.last)
  end

  test "should show bell" do
    get bell_url(@bell)
    assert_response :success
  end

  test "should get edit" do
    get edit_bell_url(@bell)
    assert_response :success
  end

  test "should update bell" do
    patch bell_url(@bell), params: { bell: {  } }
    assert_redirected_to bell_url(@bell)
  end

  test "should destroy bell" do
    assert_difference('Bell.count', -1) do
      delete bell_url(@bell)
    end

    assert_redirected_to bells_url
  end
end
