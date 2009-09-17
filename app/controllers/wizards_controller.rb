class WizardsController < ApplicationController

def index
	@wizards = Wizard.all
end

def new
	@wizard = Wizard.new
end

def create
	@wizard = Wizard.new( params[:wizard] )
	
	if @wizard.save
		redirect_to wizards_path
	else
		render :action => :new
	end
end

def edit
	@wizard = Wizard.find( params[:id] )
end

def update
	@wizard = Wizard.find( params[:id] )

	if @wizard.current_quiz.update_attributes( params[:quiz] )
		redirect_to edit_wizard_path
	else
		render :action => 'edit'
	end

	case params[:direction]
		when 'next'
			@wizard.next!
		when 'previous'
			@wizard.previous!
		else
			flash[:error] = "Invalid direction!"
	end
end

end
