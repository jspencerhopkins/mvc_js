class TodosController < ApplicationController

	def index
		@todo = Todo.new
		@todos = Todo.all
	end

	def create
		@todo = Todo.create(todo_params)
		respond_to do |format|
			format.html {redirect_to root_url}
			format.js {}
		end
	end



	private
	def todo_params
		params.require(:todo).permit(:item, :complete)
	end

end
