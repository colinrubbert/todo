class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @todo_lists = TodoList.all
    respond_with(@todo_lists)
  end

  def show
    respond_with(@todo_list)
  end

  def new
    @todo_list = TodoList.new
    respond_with(@todo_list)
  end

  def edit
  end

  def create
    @todo_list = TodoList.new(todo_list_params)
    @todo_list.save
    respond_with(@todo_list)
  end

  def update
    @todo_list.update(todo_list_params)
    respond_with(@todo_list)
  end

  def destroy
    @todo_list.destroy
    respond_with(@todo_list)
  end

  private
    def set_todo_list
      @todo_list = TodoList.find(params[:id])
    end

    def todo_list_params
      params.require(:todo_list).permit(:title, :description)
    end
end
