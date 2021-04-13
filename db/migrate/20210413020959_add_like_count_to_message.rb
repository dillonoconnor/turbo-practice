class AddLikeCountToMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :liked, :boolean, default: false
  end
end
