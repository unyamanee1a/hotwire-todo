class AddMemberIdToTodos < ActiveRecord::Migration[7.2]
  def change
    add_reference :todos, :member, null: true, foreign_key: true
  end
end
