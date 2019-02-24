class Appointment

  @@all = []

  attr_accessor :doctor, :patient, :appointment

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end

  def self.all
    @@all
  end


end
