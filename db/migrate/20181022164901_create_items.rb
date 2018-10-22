class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      #wiring the schema the DB
      #wire the model with association
      t.timestamps
    end
  end
end
