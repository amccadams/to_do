class ListsController < ApplicationController
  def index
    @lists = List.all
    @task = Task.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(params[:list])
    flash[:notice] = "Your list was created!"
    redirect_to :root
  end

  def show
    @list = List.find(params[:id])
    @task = @list.tasks.new
  end

def delete
  
  
end

end