class CreateKlassApis < ActiveRecord::Migration[6.0]
  def change
    create_table :klass_apis do |t|

      t.timestamps
    end
  end
end
