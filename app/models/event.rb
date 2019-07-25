class Event < ApplicationRecord
	
	validates :name, :place, :start_hour, :end_hour, :description, :event_date, :max_capacity, :speakers, presence: true
	validates :speakers, format: { with: /\A[a-zA-Z]+\z/}
	validates :name, length: { maximum: 30 }
	validates :place, length: { maximum: 30 }
	validates :name, uniqueness: true
	validates :description, length: { in: 50..300 }

	validates :max_capacity, numericality: { only_integer: true }

	validate :validar_fecha
	validate :validar_hora

	def validar_hora
		if start_hour.present?and
			end_hour.present?and
			start_hour > end_hour
			errors.add(:start_hour, "Hora de inicio inválida")
			errors.add(:end_hour, "Hora de fin inválida")
		end
	end

	def validar_fecha
		if event_date < Time.now
			errors.add(:event_date, "Fecha inválida")
		end
	end
end

