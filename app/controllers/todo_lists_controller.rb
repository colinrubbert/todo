class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  respond_to :html

  def index
    @todo_lists = current_user.TodoLists
    respond_with(@todo_lists)
  end

  def show
    respond_with(@todo_list)
  end

  def new
    @todo_list = current_user.TodoLists.build
    respond_with(@todo_list)
  end

  def edit
    respond_with(@todo_list)
  end

  def create
    @todo_list = current_user.TodoLists.build(todo_list_params)
    @todo_list.save
    respond_with(@todo_list)
  end

  def update
    @todo_list.update_attributes(todo_list_params)
    respond_with(@todo_list)
  end

  def destroy
    @todo_list.destroy
    respond_with(@todo_list)
  end

  private
  
    def set_todo_list
      @todo_list = current_user.TodoLists.find_by(id: params[:id])
      redirect_to todo_lists_path if @todo_list.nil?
    end

    def todo_list_params
      params.require(:todo_list).permit(:title, :description)
    end
end
