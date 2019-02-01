require "pry"

class Appointment

  @@all = []

  attr_reader :doctor, :patient, :date

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end



end
