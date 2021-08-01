class CreateComplications < ActiveRecord::Migration[6.1]
  def change
    create_table :complications do |t|
      t.integer :complication_severity
      t.string :complication_duration
      t.text :complication_description
      t.boolean :completely_resolved
      t.integer :medication_id
      t.integer :user_id

      t.timestamps
    end
  end
end
