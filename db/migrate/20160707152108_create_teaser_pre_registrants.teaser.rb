# This migration comes from teaser (originally 20160707151532)
class CreateTeaserPreRegistrants < ActiveRecord::Migration[5.0]
  def change
    create_table :teaser_pre_registrants do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
