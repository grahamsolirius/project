class CreateFocus < ActiveRecord::Migration[7.1]
  def change
    create_table :focus do |t|
      t.string :name

      t.timestamps
    end
  end
end
