class Doctor
  attr_reader :name
  @@all = Array.new

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    Appointment.all.map do |appointment|
      if appointment.doctor == self
        appointment.patient
      end
    end
  end

end
