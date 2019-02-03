class Patient

  @@all = []

  attr_accessor :name

  def initialize(name, doctor)
    @name = name
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  # def doctors
  #   appointments.map(&:doctor)
  # end

end
