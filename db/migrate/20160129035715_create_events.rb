class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :details
      t.datetime :when
      t.string :where
      t.string :uid
      t.string :user_response

      t.timestamps null: false
    end
  end
end
