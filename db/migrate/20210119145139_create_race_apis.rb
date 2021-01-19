class CreateRaceApis < ActiveRecord::Migration[6.0]
  def change
    create_table :race_apis do |t|

      t.timestamps
    end
  end
end
