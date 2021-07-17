require "test_helper"

class BanglasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bangla = banglas(:one)
  end

  test "should get index" do
    get banglas_url
    assert_response :success
  end

  test "should get new" do
    get new_bangla_url
    assert_response :success
  end

  test "should create bangla" do
    assert_difference('Bangla.count') do
      post banglas_url, params: { bangla: { khawa: @bangla.khawa, mangso: @bangla.mangso } }
    end

    assert_redirected_to bangla_url(Bangla.last)
  end

  test "should show bangla" do
    get bangla_url(@bangla)
    assert_response :success
  end

  test "should get edit" do
    get edit_bangla_url(@bangla)
    assert_response :success
  end

  test "should update bangla" do
    patch bangla_url(@bangla), params: { bangla: { khawa: @bangla.khawa, mangso: @bangla.mangso } }
    assert_redirected_to bangla_url(@bangla)
  end

  test "should destroy bangla" do
    assert_difference('Bangla.count', -1) do
      delete bangla_url(@bangla)
    end

    assert_redirected_to banglas_url
  end
end
