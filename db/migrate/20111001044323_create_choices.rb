class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :cId
      t.string :Text
      t.string :QuestionId

      t.timestamps
    end
  end
end
