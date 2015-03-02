class CreateJoinTableApplicationApplicationQuestion < ActiveRecord::Migration
  def change
    create_join_table :applications, :application_questions do |t|
      t.index [:application_id, :application_question_id], unique: true, name: 'index_application_questions_applications_on_application_id_and'
      t.index [:application_question_id, :application_id], unique: true, name: 'index_applications_application_questions_on_application_questi'
    end
  end
end
