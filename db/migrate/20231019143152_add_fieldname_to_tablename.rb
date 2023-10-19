class AddFieldnameToTablename < ActiveRecord::Migration[7.1]
  def change
    add_column :tablenames, :description, :string
  end
end
