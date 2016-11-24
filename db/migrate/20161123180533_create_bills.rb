class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :bill_id
      t.string :number
      t.string :change_hash
      t.string :url
      t.string :status_date
      t.string :staus
      t.string :last_action_date
      t.string :last_action
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end

