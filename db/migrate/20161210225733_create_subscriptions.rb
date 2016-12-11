class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :comment 
      t.integer :detail_id
      
      t.references :details, foreign_key: true
      t.timestamps null: false
    end
  end
end
