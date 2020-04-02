class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.string :video

      t.timestamps
    end
  end
end
