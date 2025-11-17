require "test_helper"

class Mockups2RoutesTest < ActionDispatch::IntegrationTest
  # Override the global fixtures :all from test_helper
  fixtures # No fixtures for this test class
  
  test "root path loads mockups2 home" do
    get root_path
    assert_response :success
  end

  test "mockups2 root path loads home page" do
    get mockups2_root_path
    assert_response :success
  end

  # Public pages tests
  test "mockups2 about page loads successfully" do
    get mockups2_about_path
    assert_response :success
  end

  test "mockups2 login page loads successfully" do
    get mockups2_auth_login_path
    assert_response :success
  end

  test "mockups2 register page loads successfully" do
    get mockups2_auth_register_path
    assert_response :success
  end

  # Admin routes tests
  test "mockups2 admin dashboard loads successfully" do
    get mockups2_admin_dashboard_path
    assert_response :success
  end

  test "mockups2 admin projects index loads successfully" do
    get mockups2_admin_projects_path
    assert_response :success
  end

  test "mockups2 admin project show loads successfully" do
    get mockups2_admin_project_path(id: 1)
    assert_response :success
  end

  test "mockups2 admin project validation loads successfully" do
    get mockups2_admin_project_validation_path(id: 1)
    assert_response :success
  end

  test "mockups2 admin users index loads successfully" do
    get mockups2_admin_users_path
    assert_response :success
  end

  test "mockups2 admin user show loads successfully" do
    get mockups2_admin_user_path(id: 1)
    assert_response :success
  end

  test "mockups2 admin milestones index loads successfully" do
    get mockups2_admin_milestones_path
    assert_response :success
  end

  test "mockups2 admin milestone show loads successfully" do
    get mockups2_admin_milestone_path(id: 1)
    assert_response :success
  end

  test "mockups2 admin statistics loads successfully" do
    get mockups2_admin_statistics_path
    assert_response :success
  end

  # Entrepreneur routes tests
  test "mockups2 entrepreneur dashboard loads successfully" do
    get mockups2_entrepreneur_dashboard_path
    assert_response :success
  end

  test "mockups2 entrepreneur projects index loads successfully" do
    get mockups2_entrepreneur_projects_path
    assert_response :success
  end

  test "mockups2 entrepreneur new project loads successfully" do
    get mockups2_entrepreneur_new_project_path
    assert_response :success
  end

  test "mockups2 entrepreneur project show loads successfully" do
    get mockups2_entrepreneur_project_path(id: 1)
    assert_response :success
  end

  test "mockups2 entrepreneur edit project loads successfully" do
    get mockups2_entrepreneur_edit_project_path(id: 1)
    assert_response :success
  end

  test "mockups2 entrepreneur interests loads successfully" do
    get mockups2_entrepreneur_interests_path
    assert_response :success
  end

  test "mockups2 entrepreneur messages loads successfully" do
    get mockups2_entrepreneur_messages_path
    assert_response :success
  end

  test "mockups2 entrepreneur profile loads successfully" do
    get mockups2_entrepreneur_profile_path
    assert_response :success
  end

  test "mockups2 entrepreneur edit profile loads successfully" do
    get mockups2_entrepreneur_edit_profile_path
    assert_response :success
  end

  # Investor routes tests
  test "mockups2 investor dashboard loads successfully" do
    get mockups2_investor_dashboard_path
    assert_response :success
  end

  test "mockups2 investor projects index loads successfully" do
    get mockups2_investor_projects_path
    assert_response :success
  end

  test "mockups2 investor project show loads successfully" do
    get mockups2_investor_project_path(id: 1)
    assert_response :success
  end

  test "mockups2 investor interests loads successfully" do
    get mockups2_investor_interests_path
    assert_response :success
  end

  test "mockups2 investor new interest loads successfully" do
    get mockups2_investor_new_interest_path
    assert_response :success
  end

  test "mockups2 investor messages loads successfully" do
    get mockups2_investor_messages_path
    assert_response :success
  end

  test "mockups2 investor profile loads successfully" do
    get mockups2_investor_profile_path
    assert_response :success
  end

  test "mockups2 investor edit profile loads successfully" do
    get mockups2_investor_edit_profile_path
    assert_response :success
  end
end
