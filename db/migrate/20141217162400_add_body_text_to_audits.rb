class AddBodyTextToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :body_text, :text
    add_column :audits, :body_text_flesh_score, :numeric, precision: 5, scale: 2
    add_column :audits, :body_text_flesch_score_good
  end
end
