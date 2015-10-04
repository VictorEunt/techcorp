require 'test_helper'

class CorpusEntriesControllerTest < ActionController::TestCase
  setup do
    @corpus_entry = corpus_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corpus_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corpus_entry" do
    assert_difference('CorpusEntry.count') do
      post :create, corpus_entry: { note: @corpus_entry.note }
    end

    assert_redirected_to corpus_entry_path(assigns(:corpus_entry))
  end

  test "should show corpus_entry" do
    get :show, id: @corpus_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corpus_entry
    assert_response :success
  end

  test "should update corpus_entry" do
    patch :update, id: @corpus_entry, corpus_entry: { note: @corpus_entry.note }
    assert_redirected_to corpus_entry_path(assigns(:corpus_entry))
  end

  test "should destroy corpus_entry" do
    assert_difference('CorpusEntry.count', -1) do
      delete :destroy, id: @corpus_entry
    end

    assert_redirected_to corpus_entries_path
  end
end
