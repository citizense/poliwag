class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :state
      t.string :session_id
      t.string :session_name
      t.string :bill_id
      t.string :number
      t.string :change_hash
      t.string :url
      t.string :status_date
      t.string :status
      t.string :last_action_date
      t.string :last_action
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end