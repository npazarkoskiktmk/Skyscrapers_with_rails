class AddYearToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :year, :integer
  end
end
