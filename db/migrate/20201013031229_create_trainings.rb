class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|

      t.integer :muscle_id
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
