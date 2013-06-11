class TasksController < ApplicationController
  
  def index
      @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(params[:task])
    flash[:notice] = "Your task was added to the list"
    redirect_to :root
  end

  
end
