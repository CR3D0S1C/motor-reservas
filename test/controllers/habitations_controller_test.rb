require "test_helper"

class HabitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habitation = habitations(:one)
  end

  test "should get index" do
    get habitations_url
    assert_response :success
  end

  test "should get new" do
    get new_habitation_url
    assert_response :success
  end

  test "should create habitation" do
    assert_difference("Habitation.count") do
      post habitations_url, params: { habitation: { airc: @habitation.airc, private_bat: @habitation.private_bat, type: @habitation.type } }
    end

    assert_redirected_to habitation_url(Habitation.last)
  end

  test "should show habitation" do
    get habitation_url(@habitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_habitation_url(@habitation)
    assert_response :success
  end

  test "should update habitation" do
    patch habitation_url(@habitation), params: { habitation: { airc: @habitation.airc, private_bat: @habitation.private_bat, type: @habitation.type } }
    assert_redirected_to habitation_url(@habitation)
  end

  test "should destroy habitation" do
    assert_difference("Habitation.count", -1) do
      delete habitation_url(@habitation)
    end

    assert_redirected_to habitations_url
  end
end
