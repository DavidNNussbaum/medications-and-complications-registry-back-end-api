class RemoveStringFromMedication < ActiveRecord::Migration[6.1]
  def change
    remove_column :medications, :string, :string
  end
end
