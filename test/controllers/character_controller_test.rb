require 'test_helper'

class CharacterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get character_new_url
    assert_response :success
  end

  test "should get create" do
    get character_create_url
    assert_response :success
  end

  test "should get show" do
    get character_show_url
    assert_response :success
  end

end
