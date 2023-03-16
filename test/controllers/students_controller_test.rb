require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: { first: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
end
