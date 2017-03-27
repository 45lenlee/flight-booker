class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings

  def date_formatted
    self.start_time.strftime("%a %b %d, %Y")
  end

  def self.sorted
    self.order(:start_time)
  end

  def self.search(params)
    if params
      Flight.where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport])
    else
      Flight.none
    end
  end

end
