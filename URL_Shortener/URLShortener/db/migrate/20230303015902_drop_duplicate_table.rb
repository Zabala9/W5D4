class DropDuplicateTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :shortened_url_2s
  end
end
