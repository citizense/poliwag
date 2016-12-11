class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :bill_number
      t.string :bill_type
      t.string :body
      t.string :body_id
      t.string :current_body
      t.string :current_body_id
      t.string :session_title
      t.string :committee
      t.string :progress
      t.string :history
      t.string :subjects
      t.string :votes
      t.string :amendments
      t.string :supplements
      t.string :sponsors
      t.string :calendar
      t.string :lbill_id, foreign_key: true
      t.integer :bill_id
      t.timestamps null: false
    end
  end
end
