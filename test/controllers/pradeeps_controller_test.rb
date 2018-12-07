require 'test_helper'

class PradeepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pradeep = pradeeps(:one)
  end

  test "should get index" do
    get pradeeps_url
    assert_response :success
  end

  test "should get new" do
    get new_pradeep_url
    assert_response :success
  end

  test "should create pradeep" do
    assert_difference('Pradeep.count') do
      post pradeeps_url, params: { pradeep: { email: @pradeep.email, name: @pradeep.name } }
    end

    assert_redirected_to pradeep_url(Pradeep.last)
  end

  test "should show pradeep" do
    get pradeep_url(@pradeep)
    assert_response :success
  end

  test "should get edit" do
    get edit_pradeep_url(@pradeep)
    assert_response :success
  end

  test "should update pradeep" do
    patch pradeep_url(@pradeep), params: { pradeep: { email: @pradeep.email, name: @pradeep.name } }
    assert_redirected_to pradeep_url(@pradeep)
  end

  test "should destroy pradeep" do
    assert_difference('Pradeep.count', -1) do
      delete pradeep_url(@pradeep)
    end

    assert_redirected_to pradeeps_url
  end
end
