class YogasController < ApplicationController
  before_action :fetch_yogaList, only: [:update, :confirm, :edit, :destroy]
  def index
    @yogas = Yoga.all
  end

  def new
    @yoga = Yoga.new
  end

  def edit
  end

  def create
    @yoga = Yoga.new(yoga_params)
    if params[:back]
      render :new
    elsif @yoga.save
      redirect_to root_path, notice:"新規登録が完了しました"
    else
      render :new
    end
  end

  def confirm
    if @yoga.update(yoga_params)
      redirect_to root_path, notice:"修正が完了しました"
    else
      render 'edit'
    end
  end

  def update
  end

  def destroy
    @yoga.destroy
    redirect_to root_path, notice:"削除が完了しました"
  end

  private

  def fetch_yogaList
    @yoga = Yoga.find(params[:id])
  end

  def yoga_params
    params.require(:yoga).permit(
      :date,
      :lesson,
      :category,
      :level
    )
  end
end
