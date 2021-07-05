require 'pry'
class Patient

  @@all = []

  attr_accessor = :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
    # binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    # binding.pry
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
    #binding.pry
  end

end
