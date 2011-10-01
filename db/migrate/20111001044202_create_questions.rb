class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :qId
      t.string :Text
      t.string :AnswerId

      t.timestamps
    end
  end
end
