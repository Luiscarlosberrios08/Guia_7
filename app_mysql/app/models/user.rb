class User < ApplicationRecord
  # Validación de la presencia de nombre
  validates :name, presence: true, length: { maximum: 15 }, format: { with: /\A[a-zA-Z]+\z/, message: "solo permite letras" }

  # Validación de la presencia y longitud de la contraseña
  validates :password, presence: true, length: { is: 8 }

  # Validaciones para el email
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "no es un formato válido" }
validates_presence_of :email, presence: true
validates_uniqueness_of :email
validates_format_of :email, with: /@/
end
