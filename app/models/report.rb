class Report < ActiveRecord::Base
  belongs_to :company
  has_many   :chapters

  validates :title, presence: true

  def matrix
  	matrix = "no matrix specified yet"
  	unless chapters.first.indicator.matrix.blank?
  	  matrix = chapters.first.indicator.matrix
  	end
  	return matrix
  end


end
