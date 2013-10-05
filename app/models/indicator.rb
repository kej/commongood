class Indicator < ActiveRecord::Base
  belongs_to :matrix
  has_many   :indicator_values
  has_many   :values, through: :indicator_values
  has_many   :indicator_stakeholders
  has_many   :stakeholders, through: :indicator_stakeholders

  def summary
 	short + ': ' + title.truncate(12, :omission => '')
  end

  def value_summary
  	if values.length > 1
        summary = values.collect{|v| v.title.truncate(2, :omission => '')}.join('.')
    else
    	summary = values.first.title
    end
    return summary
  end

  def stakeholder_summary
  	if stakeholders.length > 1
        summary = stakeholders.collect{|s| s.title.truncate(2, :omission => '')}.join('.')
    else
    	summary = stakeholders.first.title
    end
    return summary
  end

end
