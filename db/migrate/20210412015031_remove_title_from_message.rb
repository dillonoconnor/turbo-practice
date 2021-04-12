class RemoveTitleFromMessage < ActiveRecord::Migration[6.1]
  def change
    remove_column :messages, :title, :string
  end
end
