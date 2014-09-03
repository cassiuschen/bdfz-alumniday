class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :detail
      t.belongs_to :teacher, index: true
      t.integer :vote, default: 0

      t.timestamps
    end
  end
end
