class AddUserIdToTextMemory < ActiveRecord::Migration[5.0]
  def change
    add_column :text_memories, :user_id, :integer
  end
end
