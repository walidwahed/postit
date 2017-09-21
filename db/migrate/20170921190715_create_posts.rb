class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :url
      t.text :description
      t.integer :user_id
      # foreign keys are always integers
    end
  end

  # the old rails way:
  # def up
    # code to make changes to our schema
    # execute this when running the migration
    # create_table :posts
  # end

  # def down
    # this method is executed when the migration is rolled back
    # drop_table :posts
  # end
  # got rid of the up and down and replaced it with a change method, since they figured that we can probably just figure out what we want to do when we are rolling the migration back (i.e. drop table)
end
