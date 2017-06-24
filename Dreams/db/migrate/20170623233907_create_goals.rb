class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :title, null:false
      t.text :body, null:false
      t.boolean :reached, default: false
      t.integer :user_id
      t.timestamps
    end

    add_index(:goals, :user_id)
    
  end
end
