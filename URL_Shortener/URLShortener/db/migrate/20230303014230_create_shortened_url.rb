class CreateShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null:false
      add_index :shortened_urls, :long_url, unique: true
      add_index :shortened_urls, :short_url, unique: true
      t.timestamps
    end
  end
end
