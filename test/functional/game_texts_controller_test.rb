require 'test_helper'

class GameTextsControllerTest < ActionController::TestCase
  setup do
    @game_text = game_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_text" do
    assert_difference('GameText.count') do
      post :create, game_text: { background: @game_text.background, characterFace: @game_text.characterFace, fontSize: @game_text.fontSize, music: @game_text.music, orderNum: @game_text.orderNum, part: @game_text.part, scene_id: @game_text.scene_id, talker: @game_text.talker }
    end

    assert_redirected_to game_text_path(assigns(:game_text))
  end

  test "should show game_text" do
    get :show, id: @game_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_text
    assert_response :success
  end

  test "should update game_text" do
    put :update, id: @game_text, game_text: { background: @game_text.background, characterFace: @game_text.characterFace, fontSize: @game_text.fontSize, music: @game_text.music, orderNum: @game_text.orderNum, part: @game_text.part, scene_id: @game_text.scene_id, talker: @game_text.talker }
    assert_redirected_to game_text_path(assigns(:game_text))
  end

  test "should destroy game_text" do
    assert_difference('GameText.count', -1) do
      delete :destroy, id: @game_text
    end

    assert_redirected_to game_texts_path
  end
end
