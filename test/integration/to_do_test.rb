require 'test_helper'

class ToDoTest < ActionDispatch::IntegrationTest
  
  test "view a list of to do items" do
    Task.create!(name: "Do This!!")
    Task.create!(name: "Then, Do This!")
    assert_equal 2, Task.count

    visit '/tasks'
    assert_include page.body, "Do This!!"
    assert_include page.body, "Then, Do This!"
    # click_link "View All Items"
    # assert_current_path '/list'
    # assume we have a page variabl
  end
end