class Grade < ActiveRecord::Base

  belongs_to :course , :class_name => "Course", :foreign_key => "course_id"

  belongs_to :user

  validates :course, :presence => true
  validates :letter, :presence => true
  validates :number, :presence => true
  validates :schoolyear, :presence => true

  validates :course, :uniqueness => {:scope => :user}, :on => :save

end
