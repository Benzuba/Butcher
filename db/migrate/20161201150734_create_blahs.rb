class CreateBlahs < ActiveRecord::Migration
  def change
    create_table :blahs, &:timestamps
  end
end
