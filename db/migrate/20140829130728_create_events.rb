class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :des
      t.string :thumb
      t.integer :sym, default: 0

      t.timestamps
    end
  end
end
