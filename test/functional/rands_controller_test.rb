require 'test_helper'

class RandsControllerTest < ActionController::TestCase
  setup do
    @rand = rands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rand" do
    assert_difference('Rand.count') do
      post :create, rand: { file: @rand.file, file_desc: @rand.file_desc }
    end

    assert_redirected_to rand_path(assigns(:rand))
  end

  test "should show rand" do
    get :show, id: @rand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rand
    assert_response :success
  end

  test "should update rand" do
    put :update, id: @rand, rand: { file: @rand.file, file_desc: @rand.file_desc }
    assert_redirected_to rand_path(assigns(:rand))
  end

  test "should destroy rand" do
    assert_difference('Rand.count', -1) do
      delete :destroy, id: @rand
    end

    assert_redirected_to rands_path
  end
end
