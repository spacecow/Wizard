module QuizzesHelper
	def question_template(question)
		"questions/#{question.class.name.underscore}"
	end
end