require 'test_helper'

class MatrixTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "matrix is not valid without a unique title" do 
  	matrix = Matrix.new(title: matrices(:m40).title)
    assert matrix.invalid?
    assert_equal ["has already been taken"], matrix.errors[:title] 
  end
end
