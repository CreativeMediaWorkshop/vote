class Article < ActiveRecord::Base
   has_many :signs, dependent: :destroy
   validates :title, presence: true,
                    length: { minimum: 5 }
end
