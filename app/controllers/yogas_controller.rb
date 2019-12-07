class YogasController < ApplicationController
  before_action :fetch_yogaList, only: [:edit, :edit_confirm, :destroy, :update]
  def index
    @yogas = Yoga.all
  end

  def new
    @yoga = Yoga.new
  end

  def confirm
    @yoga = Yoga.new(yoga_params)
    return if @yoga.valid?
    render :index
  end

  def create
    @yoga = Yoga.new(yoga_params)
    if @yoga.save
      redirect_to root_path, notice:"ヨガレッスンの新規登録が完了しました"
    else
      render :new
    end
  end

  def edit
  end

  def edit_confirm
    @yoga.update(yoga_params)
  end

  def update
    if @yoga.update(yoga_params)
      redirect_to root_path, notice:"変更を反映しました。"
    end
  end

  def destroy
    @yoga.destroy
    redirect_to root_path, notice:"ヨガレッスンを削除しました"
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
