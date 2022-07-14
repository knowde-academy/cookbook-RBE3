class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }, allow_nil: true
  validates :cooking_time, numericality: { only_integer: true, greater_than:0 }, allow_nil:true
  validates :video_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_nil: true
  validates :level, numericality: {only_integer: true, in: 1..5}, allow_nil: true
end
