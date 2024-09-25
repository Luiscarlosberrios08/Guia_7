require 'rails_helper'
class Estudiante < ApplicationRecord
  validates :nombres, presence: { message: "El nombre es obligatorio" }, 
                      length: { maximum: 50, message: "El nombre debe tener como máximo 50 caracteres" }
  
  validates :apellidos, presence: { message: "El apellido es obligatorio" }, 
                        length: { maximum: 50, message: "El apellido debe tener como máximo 50 caracteres" }
  
  validates :carrera, presence: { message: "La carrera es obligatoria" }
  
  validates :carnet, presence: { message: "El carnet es obligatorio" }, 
                     uniqueness: { message: "El carnet debe ser único" }
end

require 'rails_helper'

RRSpec.describe Estudiante, type: :model do
  context "with fixture" do
    let(:estudiante) { create(:estudiante, :with_fixture) }

    it "should load fixture data" do
      expect(estudiante.nombres).to eq("Juan") # O cualquier otro valor de tu fixture
    end
  end
end

