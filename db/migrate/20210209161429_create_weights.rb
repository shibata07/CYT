class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :user_id
      t.float :value
      t.date :when

      t.timestamps
    end
  end
end
