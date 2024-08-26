require "test_helper"

class ComapniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comapny = comapnies(:one)
  end

  test "should get index" do
    get comapnies_url
    assert_response :success
  end

  test "should get new" do
    get new_comapny_url
    assert_response :success
  end

  test "should create comapny" do
    assert_difference("Comapny.count") do
      post comapnies_url, params: { comapny: { name: @comapny.name } }
    end

    assert_redirected_to comapny_url(Comapny.last)
  end

  test "should show comapny" do
    get comapny_url(@comapny)
    assert_response :success
  end

  test "should get edit" do
    get edit_comapny_url(@comapny)
    assert_response :success
  end

  test "should update comapny" do
    patch comapny_url(@comapny), params: { comapny: { name: @comapny.name } }
    assert_redirected_to comapny_url(@comapny)
  end

  test "should destroy comapny" do
    assert_difference("Comapny.count", -1) do
      delete comapny_url(@comapny)
    end

    assert_redirected_to comapnies_url
  end
end
