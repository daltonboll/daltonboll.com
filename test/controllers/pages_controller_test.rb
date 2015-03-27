require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get contact" do
    get :contact
    assert_response :redirect
  end

  test "should get about" do
    get :about
    assert_response :redirect
  end

  test "should get blog" do
    get :blog
    assert_response :redirect
  end

  test "should get resume" do
    get :resume
    assert_response :redirect
  end

  test "should get projects" do
    get :projects
    assert_response :redirect
  end

end
