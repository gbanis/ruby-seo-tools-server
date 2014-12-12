class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.belongs_to :page, index: true
      t.text :page_content
      t.string :keyword
      t.string :title
      t.string :meta_description
    end
  end
end
