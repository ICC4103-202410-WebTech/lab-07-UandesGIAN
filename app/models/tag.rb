class Tag < ApplicationRecord
    has_many :post_tags, class_name: "PostTag", dependent: :destroy
    has_many :posts, through: :post_tags
    validates :name, presence: { message: "No puede faltar un nombre de tag, osea, es el único atributo en la tabla ¿Que espera xD?" }, uniqueness: { message: "Debe crearse un nombre de tag más creativo..." }
end