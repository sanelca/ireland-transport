require 'test_helper'

class RoutepointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get routepoints_index_url
    assert_response :success
  end

  test "should get show" do
    get routepoints_show_url
    assert_response :success
  end

  test "should get new" do
    get routepoints_new_url
    assert_response :success
  end

  test "should get create" do
    get routepoints_create_url
    assert_response :success
  end

  test "should get edit" do
    get routepoints_edit_url
    assert_response :success
  end

  test "should get update" do
    get routepoints_update_url
    assert_response :success
  end

  test "should get destroy" do
    get routepoints_destroy_url
    assert_response :success
  end

end
