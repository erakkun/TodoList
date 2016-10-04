class TasksController < ApplicationController
  def index
    if !params.has_key?(:format)
      @tasks = Task.all
    else
      @tasks = Task.where(task_type_id: params[:format]).to_a
    end

    @tasktypes = TaskType.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save(task_params)
      redirect_to tasks_path
    else
      redirect_to tasks_path
    end
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path
    else
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
    def task_params
      params.require(:task).permit(:title, :task_type_id, :deadline)
    end
end
