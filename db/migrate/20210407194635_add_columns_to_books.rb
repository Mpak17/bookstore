class AddColumnsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column(:books, :dimensions, :string)
    add_column(:books, :materials, :string)
  end
end
