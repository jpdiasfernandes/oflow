class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :age
      t.string :nactionality
      t.string :gender
      t.string :photo

      t.timestamps
    end
  end
end
