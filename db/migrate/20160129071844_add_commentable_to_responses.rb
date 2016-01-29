class AddCommentableToResponses < ActiveRecord::Migration
  def change

    add_column :responses, :commentable_id, :int
    add_column :responses, :commentable_type, :string

  end
end
