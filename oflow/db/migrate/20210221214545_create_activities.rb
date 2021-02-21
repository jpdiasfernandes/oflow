class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.datetime :date_time
      t.float :distance
      t.time :elapsed_time
      t.integer :elevation
      t.integer :avg_hr
      t.integer :max_hr
      t.integer :effort

      t.timestamps
    end
  end
end
