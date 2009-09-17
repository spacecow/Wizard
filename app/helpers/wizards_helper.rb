module WizardsHelper
	def quiz_template( quiz )
		"quizzes/#{quiz.class.name.underscore}"
	end
end
