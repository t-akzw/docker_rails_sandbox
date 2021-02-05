require 'test_helper'

class SampleUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_user = sample_users(:one)
  end

  test "should get index" do
    get sample_users_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_user_url
    assert_response :success
  end

  test "should create sample_user" do
    assert_difference('SampleUser.count') do
      post sample_users_url, params: { sample_user: { age: @sample_user.age, name: @sample_user.name } }
    end

    assert_redirected_to sample_user_url(SampleUser.last)
  end

  test "should show sample_user" do
    get sample_user_url(@sample_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_user_url(@sample_user)
    assert_response :success
  end

  test "should update sample_user" do
    patch sample_user_url(@sample_user), params: { sample_user: { age: @sample_user.age, name: @sample_user.name } }
    assert_redirected_to sample_user_url(@sample_user)
  end

  test "should destroy sample_user" do
    assert_difference('SampleUser.count', -1) do
      delete sample_user_url(@sample_user)
    end

    assert_redirected_to sample_users_url
  end
end
