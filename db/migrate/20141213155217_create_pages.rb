class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :path
      t.belongs_to :website, index: true
    end
  end
end
