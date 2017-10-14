class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :username,    null: false
      t.string  :api_key,     null: false
      t.string  :app_version
      t.string  :os_version
      t.integer :visits_count, null: false, default: 0

      t.timestamps
    end
  end
end
