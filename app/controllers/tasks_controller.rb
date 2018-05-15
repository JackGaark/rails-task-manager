class TasksController < ApplicationController
before_action :set_task, only: [ :show, :edit, :destroy ]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    # Rendering the form
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(tasks_params)
    @tasks.save

    redirect_to tasks_path(@tasks)
  end

  def edit
    # Render the update form
  end

  def update
    # Update in the DB
    @tasks.update(tasks_params)

    redirect_to tasks_path(@tasks)
  end

  def destroy
    @tasks.destroy

    redirect_to tasks_path
  end

  private

  # Strong params
  def tasks_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    # set restaurant by id
    @tasks = Task.find(params[:id])
  end
end
