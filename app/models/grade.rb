class Grade < ActiveRecord::Base

  belongs_to :course , :class_name => "Course", :foreign_key => "course_id"

  belongs_to :user

  validates :course, :uniqueness => {:scope => :user}

end
