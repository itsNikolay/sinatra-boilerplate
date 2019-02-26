# frozen_string_literal: true

# create imported workers table
class ImportedWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :imported_workers do |t|
      t.column :name, :string, null: false
      t.column :email, :string, null: false
      # Other fields here
    end
  end
end
