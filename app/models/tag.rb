class Tag < ApplicationRecord
  has_many :project_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :projects, through: :project_tags

  # 検索方法は部分一致のみ
  def self.looks(search, word)
    if search == "partial"
      tags = Tag.where("tag_name LIKE?","%#{word}%")
    end
    return tags
  end

end
