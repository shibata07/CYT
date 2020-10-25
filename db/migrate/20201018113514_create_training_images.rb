class CreateTrainingImages < ActiveRecord::Migration[5.2]
  def change
    create_table :training_images do |t|
      t.integer :training_id
      t.string :image_id

      t.timestamps
    end
  end
end
