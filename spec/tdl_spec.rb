require "tdl"

RSpec.describe TodoList do
  context 'initially incomplete list' do
    it 'will be empty' do
      todo_list = TodoList.new
      expect(todo_list.complete).to eq []
    end
  end

  context 'initially complete list' do
    it 'will be empty' do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
  end
end