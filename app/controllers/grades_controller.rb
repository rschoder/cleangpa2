class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
    @name = Course.find(params[:course_name])
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new
    @grade.user_id = params[:user_id]
    @grade.course_id = params[:course_id]
    @grade.number = params[:number]
    @grade.letter = params[:letter]
    @grade.schoolyear = params[:schoolyear]

    if @grade.save
      redirect_to "/grades", :notice => "Grade created successfully."
    else
      render 'new'
    end
  end

  def edit
    @grade = Grade.find(params[:id])
    @courseid = Course.find(params[:id])
    @name = @courseid.course_name
  end

  def update
    @grade = Grade.find(params[:id])

    @grade.user_id = params[:user_id]
    @grade.course_id = params[:course_id]
    @grade.number = params[:number]
    @grade.letter = params[:letter]
    @grade.schoolyear = params[:schoolyear]

    if @grade.save
      redirect_to "/grades", :notice => "Grade updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @grade = Grade.find(params[:id])

    @grade.destroy

    redirect_to "/grades", :notice => "Grade deleted."
  end
end
