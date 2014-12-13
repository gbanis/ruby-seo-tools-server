class Page < ActiveRecord::Base
  belongs_to :website
  has_many :audits, dependent: :destroy
end
