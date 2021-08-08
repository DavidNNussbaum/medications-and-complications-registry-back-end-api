class AddKeywordsSizeToProduct < ActiveRecord::Migration[6.1]
  def change
    add_index :complications, :medication_id
  end
end
