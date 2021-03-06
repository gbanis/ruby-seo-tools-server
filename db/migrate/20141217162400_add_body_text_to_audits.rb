class AddBodyTextToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :body_text, :text
    add_column :audits, :body_text_flesch_score, :decimal, precision: 5, scale: 2
    add_column :audits, :body_text_flesch_score_good, :boolean
  end
end
