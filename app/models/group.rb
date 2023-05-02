class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users

  validates :name, presence: true
  # active_recordを導入している為、下記にてカラムと同じようにimageを呼び出す事が出来る
  has_one_attached :group_image

  # imageを呼び出した時に中身が空だったら、assets/images/no_image.jpgを呼び出す
  # def get_group_image
  #   (group_image.attached?) ? image : 'no_image.jpg'
  # end

  def get_group_image(width, height)
    unless group_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      group_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    group_image.variant(resize_to_limit: [width, height]).processed
  end

end
