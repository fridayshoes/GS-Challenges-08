require "td"

RSpec.describe Todo do
  it "constructs" do
    todo = Todo.new("Polish my shoes")
    expect(todo.task).to eq "Polish my shoes"
  end

  context 'when todo is done' do
    it "returns true" do
      todo = Todo.new("Polish my shoes")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end

  context 'when todo is is not done' do
    it "returns false" do
      todo = Todo.new("Polish my shoes")
      expect(todo.done?).to eq false
    end
  end
end