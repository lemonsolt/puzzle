require "test_helper"

class Users::PuzzleImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_puzzle_images_index_url
    assert_response :success
  end

  test "should get show" do
    get users_puzzle_images_show_url
    assert_response :success
  end

  test "should get new" do
    get users_puzzle_images_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_puzzle_images_edit_url
    assert_response :success
  end
end
