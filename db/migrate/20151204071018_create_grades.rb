class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :user_id
      t.string :course_id
      t.float :number
      t.string :letter
      t.string :schoolyear
      t.string :name

      t.timestamps

    end
  end
end
