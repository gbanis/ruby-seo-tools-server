class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :domain
    end
  end
end
