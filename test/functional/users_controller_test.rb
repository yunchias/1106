require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @update = {
        :title   => "Mr",
        :first_name => "Arnab",
        :middle_name =>  "kumar",
        :last_name => "banik",
        :street => "ahmadi",
        :city => "kuwait",
        :state => "kuwait",
        :country => "kuwait",
        :zipcode  => 12345,
        :phone_number => "234-567-5445",
        :dob => "23/13/1988",
        :email => "abanik@gmail.com",
        :r_email => "abanik@gmail.com",
        :username => "abanik",
        :password => "hello",
        :r_password => "hello",
        :secret_q  => "whats your name",
        :secret_a => "arnab"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: @user.attributes
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user.to_param
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user.to_param, user: @user.attributes
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user.to_param
    end

    assert_redirected_to users_path
  end
end
