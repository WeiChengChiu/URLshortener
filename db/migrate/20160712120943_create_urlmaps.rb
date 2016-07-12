class CreateUrlmaps < ActiveRecord::Migration[5.0]
  def change
    create_table :urlmaps do |t|
      t.string :short_url
      t.string :long_url

      t.timestamps
    end
  end
end
