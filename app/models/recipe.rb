class Recipe < ApplicationRecord
  validates :name, presence: true
  validates_numericality_of :level, if: Proc.new { |p| (p.level.is_a? Integer and p.level >= 1 and p.level <= 5) ? true : false }
end
