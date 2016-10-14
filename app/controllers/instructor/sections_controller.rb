class Instructor::SectionsController < ApplicationController
  def new 
    @course = Course.find(params[:course_id])
  end 
end
