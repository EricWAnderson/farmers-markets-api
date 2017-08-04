class OperatingHour < ApplicationRecord
  belongs_to :market

  def day_of_week
    Date::DAYNAMES[self[:day_of_week]]
  end

  def day_of_week=(value)
    day = Date::DAYNAMES.index(value)
    self[:day_of_week] = day if day.present?
  end
end
