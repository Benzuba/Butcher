class AddRowToSections < ActiveRecord::Migration
  def change
    add_column :sections, :row_order, :integer
  end
end
