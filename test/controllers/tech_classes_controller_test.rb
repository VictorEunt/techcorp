require 'test_helper'

class TechClassesControllerTest < ActionController::TestCase
  setup do
    @tech_class = tech_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tech_class" do
    assert_difference('TechClass.count') do
      post :create, tech_class: { day: @tech_class.day, number: @tech_class.number, section: @tech_class.section, time: @tech_class.time, year: @tech_class.year }
    end

    assert_redirected_to tech_class_path(assigns(:tech_class))
  end

  test "should show tech_class" do
    get :show, id: @tech_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tech_class
    assert_response :success
  end

  test "should update tech_class" do
    patch :update, id: @tech_class, tech_class: { day: @tech_class.day, number: @tech_class.number, section: @tech_class.section, time: @tech_class.time, year: @tech_class.year }
    assert_redirected_to tech_class_path(assigns(:tech_class))
  end

  test "should destroy tech_class" do
    assert_difference('TechClass.count', -1) do
      delete :destroy, id: @tech_class
    end

    assert_redirected_to tech_classes_path
  end
end
