class TaskboardsController < ApplicationController
  def index
    @taskboads = Taskboard.all.order(created_at: :desc)
  end

  def show
    @taskboard = Taskboard.find(params[:id])
  end

  def new
    @taskboard = Taskboard.new
  end

  def create
    @taskboard = Taskboard.new(taskboard_params)

    if @taskboard.save
      redirect_to @taskboard, notice: "タスク「#{@taskboard.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @taskboard = Taskboard.find(params[:id])
  end

  def update
    @taskboard = Taskboard.find(params[:id])

    if @taskboard.update(taskboard_params)
      redirect_to taskboards_url, notice: "タスク「#{@taskboard.name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    taskboard = Taskboard.find(params[:id])

    if taskboard.destroy
      redirect_to taskboards_url, notice: "タスク「#{taskboard.name}」を削除しました。"
    else
      redirect_to taskboards_url, alert: "削除できません"
    end
  end

  private

  def taskboard_params
    params.require(:taskboard).permit(:name, :description)
  end
end
