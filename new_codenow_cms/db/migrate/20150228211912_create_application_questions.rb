class CreateApplicationQuestions < ActiveRecord::Migration
  def change
    create_table :application_questions do |t|
        t.text          :question
        t.string        :question_type
        t.integer       :num_options
        t.text          :question_options
    end
  end
end
