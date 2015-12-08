class Course < ActiveRecord::Base

  has_many :grades , :class_name => "Grade", :foreign_key => "course_id"

  validates :course_name, :presence => true, :uniqueness => true

  validates_uniqueness_of :course_name, :case_sensitive => false

end
