require 'test_helper'

class MentionsLegalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentions_legale = mentions_legales(:one)
  end

  test "should get index" do
    get mentions_legales_url
    assert_response :success
  end

  test "should get new" do
    get new_mentions_legale_url
    assert_response :success
  end

  test "should create mentions_legale" do
    assert_difference('MentionsLegale.count') do
      post mentions_legales_url, params: { mentions_legale: {  } }
    end

    assert_redirected_to mentions_legale_url(MentionsLegale.last)
  end

  test "should show mentions_legale" do
    get mentions_legale_url(@mentions_legale)
    assert_response :success
  end

  test "should get edit" do
    get edit_mentions_legale_url(@mentions_legale)
    assert_response :success
  end

  test "should update mentions_legale" do
    patch mentions_legale_url(@mentions_legale), params: { mentions_legale: {  } }
    assert_redirected_to mentions_legale_url(@mentions_legale)
  end

  test "should destroy mentions_legale" do
    assert_difference('MentionsLegale.count', -1) do
      delete mentions_legale_url(@mentions_legale)
    end

    assert_redirected_to mentions_legales_url
  end
end
