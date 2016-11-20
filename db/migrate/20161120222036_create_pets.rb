class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :age
      t.text :description

      t.timestamps
    end
  end
end
