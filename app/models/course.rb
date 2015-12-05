class Course < ActiveRecord::Base

  has_many :grades , :class_name => "Grade", :foreign_key => "course_id"

end
