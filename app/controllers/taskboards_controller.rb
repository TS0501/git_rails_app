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
end
