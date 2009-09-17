class Quiz < ActiveRecord::Base
	has_many :answers, :dependent => :destroy
	has_many :questions
	belongs_to :wizard

	validates_presence_of :title, :tag
	validates_uniqueness_of :title, :tag
	
	after_update :save_answers
	
	def new_answer_attributes=( answer_attributes )
		answer_attributes.each do |attributes|
		  answers.build(attributes) unless attributes[:value].blank?
		end
	end

	def existing_answer_attributes=( answer_attributes )
		answers.reject(&:new_record?).each do |answer|
			answer.attributes = answer_attributes[ answer.id.to_s ]
		end
	end
	
	def save_answers
		answers.each do |answer|
			answer.save( false )
		end
	end
end
