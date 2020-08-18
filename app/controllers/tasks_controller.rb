class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.all.find do |x|
      x.id == params['id'].to_i
    end
  end

  def new

  end

  def create
    task = Task.new(strong_params)
    task.save!
  end

  private

  def strong_params
    params.require(:task).permit(:title, :details)
  end
end
