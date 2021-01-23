class RemoveColumnFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :race, :string
    add_column :characters, :race_name, :string
  end
end
