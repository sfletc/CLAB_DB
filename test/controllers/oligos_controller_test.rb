require 'test_helper'

class OligosControllerTest < ActionController::TestCase
  setup do
    @oligo = oligos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oligos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oligo" do
    assert_difference('Oligo.count') do
      post :create, oligo: { descrip: @oligo.descrip, designer: @oligo.designer, name: @oligo.name, oligo_no: @oligo.oligo_no, sequence: @oligo.sequence, tm: @oligo.tm }
    end

    assert_redirected_to oligo_path(assigns(:oligo))
  end

  test "should show oligo" do
    get :show, id: @oligo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oligo
    assert_response :success
  end

  test "should update oligo" do
    patch :update, id: @oligo, oligo: { descrip: @oligo.descrip, designer: @oligo.designer, name: @oligo.name, oligo_no: @oligo.oligo_no, sequence: @oligo.sequence, tm: @oligo.tm }
    assert_redirected_to oligo_path(assigns(:oligo))
  end

  test "should destroy oligo" do
    assert_difference('Oligo.count', -1) do
      delete :destroy, id: @oligo
    end

    assert_redirected_to oligos_path
  end
end
