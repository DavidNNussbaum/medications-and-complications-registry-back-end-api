class AddSecondIndexToComplication < ActiveRecord::Migration[6.1]
  def change
    add_index :complications, :user_id
  end
end
