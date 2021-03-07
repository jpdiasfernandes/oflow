class AddUserIdToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :user_id, :integer
    add_index :activities, :user_id
  end
end
