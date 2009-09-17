class Wizard < ActiveRecord::Base
	has_many :quizzes

	validates_presence_of :title
	
	acts_as_state_machine :initial => :q10

	state :q10, :after => :current_quiz
	state :q20, :after => :current_quiz
#	state :q30, :after => :current_quiz

	event :next do
		transitions :to => :q20, :from => :q10
#		transitions :to => :q30, :from => :q20
	end

	event :previous do
		transitions :to => :q10, :from => :q20
#		transitions :to => :q20, :from => :q30
	end

	def current_quiz
		@current_quiz ||= find_quiz( self.current_state )
	end

	def to_s
		"#{title} - #{state}"
	end
		
private
	def find_quiz( state )
		Quiz.find_by_tag( state.to_s )
	end
end