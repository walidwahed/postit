class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps # automatically adds created at and updated at column
    end
  end
end
