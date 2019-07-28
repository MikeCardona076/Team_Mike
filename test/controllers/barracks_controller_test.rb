require 'test_helper'

class BarracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barrack = barracks(:one)
  end

  test "should get index" do
    get barracks_url
    assert_response :success
  end

  test "should get new" do
    get new_barrack_url
    assert_response :success
  end

  test "should create barrack" do
    assert_difference('Barrack.count') do
      post barracks_url, params: { barrack: { code_id: @barrack.code_id, location: @barrack.location, name_barracks: @barrack.name_barracks } }
    end

    assert_redirected_to barrack_url(Barrack.last)
  end

  test "should show barrack" do
    get barrack_url(@barrack)
    assert_response :success
  end

  test "should get edit" do
    get edit_barrack_url(@barrack)
    assert_response :success
  end

  test "should update barrack" do
    patch barrack_url(@barrack), params: { barrack: { code_id: @barrack.code_id, location: @barrack.location, name_barracks: @barrack.name_barracks } }
    assert_redirected_to barrack_url(@barrack)
  end

  test "should destroy barrack" do
    assert_difference('Barrack.count', -1) do
      delete barrack_url(@barrack)
    end

    assert_redirected_to barracks_url
  end
end
