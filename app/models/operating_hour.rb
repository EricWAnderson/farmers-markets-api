class OperatingHour < ApplicationRecord
  belongs_to :market

  def day_of_week
    Date::DAY_NAMES[self[:day_of_week]]
  end

  def day_of_week=(value)
    day = Date::DAY_NAMES.index(value)
    self[:day_of_week] = day if day.present?
  end
end
