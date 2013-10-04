class Report < ActiveRecord::Base
  belongs_to :company
  has_many :chapters
end
