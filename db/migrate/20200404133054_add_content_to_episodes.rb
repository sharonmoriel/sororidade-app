class AddContentToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :content, :text
  end
end
