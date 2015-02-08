require 'test_helper'

class GameDataControllerTest < ActionController::TestCase
  setup do
    @game_datum = game_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_datum" do
    assert_difference('GameDatum.count') do
      post :create, game_datum: { money1: @game_datum.money1, money2: @game_datum.money2, money3: @game_datum.money3, money4: @game_datum.money4 }
    end

    assert_redirected_to game_datum_path(assigns(:game_datum))
  end

  test "should show game_datum" do
    get :show, id: @game_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_datum
    assert_response :success
  end

  test "should update game_datum" do
    patch :update, id: @game_datum, game_datum: { money1: @game_datum.money1, money2: @game_datum.money2, money3: @game_datum.money3, money4: @game_datum.money4 }
    assert_redirected_to game_datum_path(assigns(:game_datum))
  end

  test "should destroy game_datum" do
    assert_difference('GameDatum.count', -1) do
      delete :destroy, id: @game_datum
    end

    assert_redirected_to game_data_path
  end
end
