class User < ApplicationRecord
    has_many :posts
    validates :name, presence: { message: "Debe tener un nombre, ¿O acaso no se llama?" }
    validates :email, presence: { message: "Debe ingresar un correo electronico valido" }, uniqueness: { message: "Oye pero sin copiar jsjsj." }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Falta el @ al momento de agregar el correo electronico." }
    validates :password, presence: { message: "La contraseña no puede estar en blanco" }, length: { minimum: 6, message: "La contraseña es poco segura, debe tener al menos 6 caracteres." }
end