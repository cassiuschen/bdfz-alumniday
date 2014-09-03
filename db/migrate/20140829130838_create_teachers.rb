class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :photo
      t.text :des
      t.integer :vote, default: 0

      t.timestamps
    end
  end
end
