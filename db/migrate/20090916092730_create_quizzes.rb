class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.references :wizard
      t.string :tag
			t.string :title
			t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :quizzes
  end
end
