require "test_helper"

class Mockups2ControllersTest < ActionDispatch::IntegrationTest
  # Test that all controller actions respond with success
  
  # Public and Auth controllers
  test "index controller home action responds successfully" do
    get mockups2_root_path
    assert_response :success
  end

  test "public controller about action responds successfully" do
    get mockups2_about_path
    assert_response :success
  end

  test "auth controller login action responds successfully" do
    get mockups2_auth_login_path
    assert_response :success
  end

  test "auth controller register action responds successfully" do
    get mockups2_auth_register_path
    assert_response :success
  end

  # Admin controllers
  test "admin dashboard controller responds successfully" do
    get mockups2_admin_dashboard_path
    assert_response :success
  end

  test "admin projects controller index responds successfully" do
    get mockups2_admin_projects_path
    assert_response :success
  end

  test "admin projects controller show responds successfully" do
    get mockups2_admin_project_path(id: 1)
    assert_response :success
  end

  test "admin users controller index responds successfully" do
    get mockups2_admin_users_path
    assert_response :success
  end

  test "admin milestones controller index responds successfully" do
    get mockups2_admin_milestones_path
    assert_response :success
  end

  test "admin statistics controller responds successfully" do
    get mockups2_admin_statistics_path
    assert_response :success
  end

  # Entrepreneur controllers
  test "entrepreneur dashboard controller responds successfully" do
    get mockups2_entrepreneur_dashboard_path
    assert_response :success
  end

  test "entrepreneur projects controller index responds successfully" do
    get mockups2_entrepreneur_projects_path
    assert_response :success
  end

  test "entrepreneur interests controller responds successfully" do
    get mockups2_entrepreneur_interests_path
    assert_response :success
  end

  test "entrepreneur messages controller responds successfully" do
    get mockups2_entrepreneur_messages_path
    assert_response :success
  end

  test "entrepreneur profile controller responds successfully" do
    get mockups2_entrepreneur_profile_path
    assert_response :success
  end

  # Investor controllers
  test "investor dashboard controller responds successfully" do
    get mockups2_investor_dashboard_path
    assert_response :success
  end

  test "investor projects controller index responds successfully" do
    get mockups2_investor_projects_path
    assert_response :success
  end

  test "investor interests controller responds successfully" do
    get mockups2_investor_interests_path
    assert_response :success
  end

  test "investor messages controller responds successfully" do
    get mockups2_investor_messages_path
    assert_response :success
  end

  test "investor profile controller responds successfully" do
    get mockups2_investor_profile_path
    assert_response :success
  end
end
