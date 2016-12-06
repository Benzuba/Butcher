class Section < ActiveRecord::Base
  belongs_to :course
  has_many :lessons

  include RankedModel
  ranks :row_order, with_same: :course_id

  def next_section
    section = course.sections.where('row_order > ?', row_order).rank(:row_order).first

    section
  end
end
