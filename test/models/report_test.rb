require 'test_helper'

class ReportTest < ActiveSupport::TestCase

  test "report title must not be empty" do report = Report.new
    assert report.invalid?
  end

end
