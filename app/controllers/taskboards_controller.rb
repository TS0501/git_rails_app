class TaskboardsController < ApplicationController
  def index
    @taskboads = Taskboard.all
  end

  def show
    @taskboard = Taskboard.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
    taskboard = Taskboard.find(params[:id])

    if taskboard.destroy
      redirect_to taskboards_url, notice: "タスク「#{taskboard.name}」を削除しました。"
    else
      redirect_to taskboards_url, alert: "削除できません"
    end
  end
end
