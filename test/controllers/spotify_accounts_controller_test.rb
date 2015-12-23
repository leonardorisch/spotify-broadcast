require 'test_helper'

class SpotifyAccountsControllerTest < ActionController::TestCase
  setup do
    @spotify_account = spotify_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spotify_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spotify_account" do
    assert_difference('SpotifyAccount.count') do
      post :create, spotify_account: {  }
    end

    assert_redirected_to spotify_account_path(assigns(:spotify_account))
  end

  test "should show spotify_account" do
    get :show, id: @spotify_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spotify_account
    assert_response :success
  end

  test "should update spotify_account" do
    patch :update, id: @spotify_account, spotify_account: {  }
    assert_redirected_to spotify_account_path(assigns(:spotify_account))
  end

  test "should destroy spotify_account" do
    assert_difference('SpotifyAccount.count', -1) do
      delete :destroy, id: @spotify_account
    end

    assert_redirected_to spotify_accounts_path
  end
end
