class TodosController < ApplicationController

	def index
		@todo = Todo.new
	end

	def create
		@todo = Todo.create(todo_params)
		redirect_to root_url
	end

	private
	def todo_params
		params.require(:todo).permit(:item, :complete)
	end

end
