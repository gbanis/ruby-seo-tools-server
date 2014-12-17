class BodyKeywordToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :body_text_num_words, :integer
    add_column :audits, :body_text_num_keyword_occurences, :integer
    add_column :audits, :body_text_keyword_density, :decimal, precision: 5, scale: 2
    add_column :audits, :body_text_num_words_good, :boolean
    add_column :audits, :body_text_num_keyword_occurences_good, :boolean
    add_column :audits, :body_text_keyword_density_good, :boolean
  end
end
