class QuizzesController < ApplicationController
	def edit
		@quiz = Quiz.find(params[:id], :include=>[:answers, :questions])
	end
	
	def update
		@quiz = Quiz.find( params[:id] )
	
		if @quiz.update_attributes( params[:quiz] )
			redirect_to edit_wizard_path
		else
			render :action => 'edit'
		end
	end
end