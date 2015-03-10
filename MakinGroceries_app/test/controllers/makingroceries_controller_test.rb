require 'test_helper'

class MakingroceriesControllerTest < ActionController::TestCase
  setup do
    @makingrocery = makingroceries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makingroceries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create makingrocery" do
    assert_difference('Makingrocery.count') do
      post :create, makingrocery: { coupon: @makingrocery.coupon, done: @makingrocery.done, item: @makingrocery.item, quantity: @makingrocery.quantity }
    end

    assert_redirected_to makingrocery_path(assigns(:makingrocery))
  end

  test "should show makingrocery" do
    get :show, id: @makingrocery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @makingrocery
    assert_response :success
  end

  test "should update makingrocery" do
    patch :update, id: @makingrocery, makingrocery: { coupon: @makingrocery.coupon, done: @makingrocery.done, item: @makingrocery.item, quantity: @makingrocery.quantity }
    assert_redirected_to makingrocery_path(assigns(:makingrocery))
  end

  test "should destroy makingrocery" do
    assert_difference('Makingrocery.count', -1) do
      delete :destroy, id: @makingrocery
    end

    assert_redirected_to makingroceries_path
  end
end
