require 'test_helper'

class BurnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @burn = burns(:one)
  end

  test "should get index" do
    get burns_url
    assert_response :success
  end

  test "should get new" do
    get new_burn_url
    assert_response :success
  end

  test "should create burn" do
    assert_difference('Burn.count') do
      post burns_url, params: { burn: { burn: @burn.burn } }
    end

    assert_redirected_to burn_url(Burn.last)
  end

  test "should show burn" do
    get burn_url(@burn)
    assert_response :success
  end

  test "should get edit" do
    get edit_burn_url(@burn)
    assert_response :success
  end

  test "should update burn" do
    patch burn_url(@burn), params: { burn: { burn: @burn.burn } }
    assert_redirected_to burn_url(@burn)
  end

  test "should destroy burn" do
    assert_difference('Burn.count', -1) do
      delete burn_url(@burn)
    end

    assert_redirected_to burns_url
  end
end
