class AddBookIdToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_reference :feedbacks, :book, null: false, foreign_key: true
  end
end
