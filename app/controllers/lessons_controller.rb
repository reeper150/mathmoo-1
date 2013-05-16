class LessonsController < ApplicationController
  def add_lesson
  end
  def show
    @on_page = 2;
    @lesson = Lesson.find(params[:id])
  end
  def create
    @on_page = 0;
    @lesson = Lesson.new(params[:lesson])
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render json: @lesson, status: :created, location: @lesson }
      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end
end
