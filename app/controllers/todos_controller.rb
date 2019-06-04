class TodosController < ApplicationController
    def index 
        @todos = Todo.all 
        
    end
    def create 
        @todo = Todo.new(todo_params)
        @todo.completed = false 
        @todo.save 
        redirect_to todos_path
end
