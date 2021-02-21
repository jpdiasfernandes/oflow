class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.float :distance
      t.integer :avg_hr
      t.integer :max_hr
      t.integer :effort
      t.integer :user_id
      t.integer :elevation
      t.string :image_path

      t.timestamps
    end
  end
end
