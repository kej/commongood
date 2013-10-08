class Report < ActiveRecord::Base
  belongs_to :company
  has_many :chapters

  def matrix
  	matrix = "no matrix specified yet"
  	unless chapters.first.indicator.matrix.blank?
  	  matrix = chapters.first.indicator.matrix
  	end
  	return matrix
  end


end
