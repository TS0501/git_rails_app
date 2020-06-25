class TaskboardsController < ApplicationController
  def index
    @taskboads = Taskboard.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
