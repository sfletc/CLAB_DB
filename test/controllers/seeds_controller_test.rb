require 'test_helper'

class SeedsControllerTest < ActionController::TestCase
  setup do
    @seed = seeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seed" do
    assert_difference('Seed.count') do
      post :create, seed: { GMO: @seed.GMO, descrip: @seed.descrip, genotype: @seed.genotype, par_tube: @seed.par_tube, seed_col_date: @seed.seed_col_date, sourced_by: @seed.sourced_by, tube_no: @seed.tube_no }
    end

    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should show seed" do
    get :show, id: @seed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seed
    assert_response :success
  end

  test "should update seed" do
    patch :update, id: @seed, seed: { GMO: @seed.GMO, descrip: @seed.descrip, genotype: @seed.genotype, par_tube: @seed.par_tube, seed_col_date: @seed.seed_col_date, sourced_by: @seed.sourced_by, tube_no: @seed.tube_no }
    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should destroy seed" do
    assert_difference('Seed.count', -1) do
      delete :destroy, id: @seed
    end

    assert_redirected_to seeds_path
  end
end
