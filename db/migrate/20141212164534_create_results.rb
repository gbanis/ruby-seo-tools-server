class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :audit, index: true
      t.boolean :path_good_length
      t.boolean :path_contains_keyword
      t.boolean :title_good_length
      t.boolean :title_contains_keyword
      t.boolean :meta_description_good_length
      t.boolean :meta_description_contains_keyword
      t.integer :overall_score
    end
  end
end
