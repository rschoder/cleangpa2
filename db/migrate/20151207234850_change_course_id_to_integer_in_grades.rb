class ChangeCourseIdToIntegerInGrades < ActiveRecord::Migration
  def change
    change_column :grades, :course_id, :integer
    remove_column :users, :course_id, :integer
    remove_column :grades, :name, :string
  end


end
