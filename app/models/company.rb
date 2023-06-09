class Company < ApplicationRecord
  has_many :offices,   dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :projects,  dependent: :destroy

  has_one_attached :company_image

  validates :name, presence: true, uniqueness: true

  scope :latest, -> {order(created_at: :desc)} #descは降順…作成日が新しい順になる(10,9,8...)
  scope :old, -> {order(created_at: :asc)}    #ascは昇順…作成日が古い順になる(1,2,3...)

  def get_company_image(width, height)
    unless company_image.attached?
      file_path = Rails.root.join('app/assets/images/company.jpg')
      company_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    company_image.variant(resize_to_limit: [width, height]).processed
  end

  # 検索方法は部分一致のみ
  def self.looks(search, word)
    if search == "partial"
      @company = Company.where("name LIKE?","%#{word}%")
    end
  end

end
