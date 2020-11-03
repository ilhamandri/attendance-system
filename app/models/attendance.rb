class Attendance < ApplicationRecord
  belongs_to :user

  enum status: {
    absent: 0,
    present: 1,
  }, _prefix: "asd"

  validates :date_attend, presence: true
end
