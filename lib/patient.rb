class Patient

  attr_accessor :name, :appointments, :doctors

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    array = []
    self.appointments.each do |appointment|
        array << appointment.doctor
    end
    array
  end
end
