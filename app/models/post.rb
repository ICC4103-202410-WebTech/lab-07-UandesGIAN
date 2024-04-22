class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags, class_name: "PostTag", dependent: :destroy
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id" 

    validates :title, presence: { message: "El titulo no puede estar en blanco." }
    validates :content, presence: { message: "Le falta chamullo a su contenido." }
    validates :user_id, presence: { message: "Debe agregarse un ID de usuario o ¿No se llama?" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "No existen los comentarios negativos xd." }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Tecnicamente si existen likes negativos, pero apreciamos la salud mental de nuestro usuarios, así que porfavor ingrese un número igual o mayor a 0." }
    before_validation :set_published_at
  
    private
    def set_published_at
      self.published_at ||= Time.now
    end
end