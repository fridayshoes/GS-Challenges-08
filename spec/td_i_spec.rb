 require 'td'
 require 'tdl'

RSpec.describe 'todo integration' do
  context "when a todo/multiple todos are added" do
    it "puts them on the incomplete list" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Do the dishes")
      todo_2 = Todo.new("Clean windows")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo_1, todo_2]
    end
  end

  context "when todos are marked as done" do
    it "returns a list of completed todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Do the dishes")
      todo_2 = Todo.new("Clean windows")
      todo_3 = Todo.new("Bath the dog")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_1.mark_done!
      todo_2.mark_done!
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end
  end

  context "when todos are marked as done" do
    it "returns a list of incomplete todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Do the dishes")
      todo_2 = Todo.new("Clean windows")
      todo_3 = Todo.new("Bath the dog")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_1.mark_done!
      todo_2.mark_done!
      expect(todo_list.incomplete).to eq [todo_3]
    end
  end

  context "marks all todos as complete" do
    it "returns an empty list of incomplete todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Do the dishes")
      todo_2 = Todo.new("Clean windows")
      todo_3 = Todo.new("Bath the dog")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.give_up!
      expect(todo_list.incomplete).to eq []
      expect(todo_list.complete).to eq [todo_1, todo_2, todo_3]
    end
  end



end