class Doctor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
      # binding.pry
    end
  end

  def patients
    self.appointments.map do |appointment|
      # binding.pry
      appointment.patient
    end
  end

end
