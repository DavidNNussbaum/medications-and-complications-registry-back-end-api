class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name_strength
      t.string :string
      t.string :frequency
      t.string :administration_route

      t.timestamps
    end
  end
end
