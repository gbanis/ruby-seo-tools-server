class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :url
      t.text :page_content
      t.string :keyword
      t.string :title
      t.string :meta_description
      t.boolean :path_good_length
      t.boolean :path_contains_keyword
      t.boolean :title_good_length
      t.boolean :title_contains_keyword
      t.boolean :meta_description_good_length
      t.boolean :meta_description_contains_keyword
    end
  end
end
