class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :type
      t.string :characteristic
      t.string :descriptor
      t.text :description
      t.text :use
      t.text :special_uses

      t.timestamps
    end
  end
end
