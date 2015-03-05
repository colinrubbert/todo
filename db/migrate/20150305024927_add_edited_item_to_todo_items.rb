class AddEditedItemToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :edited_item, :string
    add_reference :todo_items, :todo_item, index: true
  end
end
