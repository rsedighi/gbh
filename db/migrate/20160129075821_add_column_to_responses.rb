class AddColumnToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :first_name, :string
    add_column :responses, :last_name, :string
    add_column :responses, :phone_number, :integer
  end
end
