class Audit < ActiveRecord::Base
  belongs_to :page
  has_one :result, dependent: :destroy
end
