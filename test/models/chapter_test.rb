require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  test "chapter attributes must not be empty" do chapter = Chapter.new
    assert chapter.invalid?
 	assert chapter.errors[:report_id].any?
    assert chapter.errors[:indicator_id].any?
  end
end
