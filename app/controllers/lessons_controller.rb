class LessonsController < ApplicationController
  before_action :fetch_lessonList, only: [:edit, :edit_confirm, :update, :destroy]
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create_confirm
    @lesson = Lesson.new(lesson_params)
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lessons_path, notice:"ヨガのレッスンを新しく登録しました"
    else
      render :new
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path, notice:"ヨガのレッスンを削除しました"
  end

  def edit
  end

  def edit_confirm
    @lesson.update(lesson_params)
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lessons_path, notice:"ヨガのレッスン情報を更新しました"
    end
  end

  private

  def fetch_lessonList
    @lesson =Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(
      :lesson,
      :category,
      :level
    )
  end

end
