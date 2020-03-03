require 'test_helper'

class DriveroutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get driveroutes_index_url
    assert_response :success
  end

  test "should get new" do
    get driveroutes_new_url
    assert_response :success
  end

  test "should get create" do
    get driveroutes_create_url
    assert_response :success
  end

  test "should get show" do
    get driveroutes_show_url
    assert_response :success
  end

  test "should get edit" do
    get driveroutes_edit_url
    assert_response :success
  end

  test "should get update" do
    get driveroutes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get driveroutes_destroy_url
    assert_response :success
  end

end
