class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :rsvp
      t.boolean :confirmation

      t.timestamps null: false
    end
  end
end
