class Estudiante < ApplicationRecord
  validates :nombres, presence: true, length: { maximum: 50 }
  validates :apellidos, presence: true, length: { maximum: 50 }
  validates :carrera, presence: true
  validates :carnet, presence: true, uniqueness: true
end
