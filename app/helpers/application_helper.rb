module ApplicationHelper
  def beverage_store_hours(station)
    return nil unless station.beverage_store_open && station.beverage_store_close

    "#{station.beverage_store_open.strftime('%I:%M %p')} - #{station.beverage_store_close.strftime('%I:%M %p')}"
  end
end
