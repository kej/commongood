require 'test_helper'

class ChapterTest < ActiveSupport::TestCase

  test "chapter attributes must not be empty" do chapter = Chapter.new
    assert chapter.invalid?
  end

  test "chapter attributes must be valid objects" do chapter = Chapter.new
  	report = Report.new
  	indicator = Indicator.new
  	chapter.report = report
  	chapter.indicator = indicator
    assert chapter.invalid?
  end

end
