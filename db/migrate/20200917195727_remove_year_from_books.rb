class RemoveYearFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :year, :date
  end
end
