class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: 'ビジネス'},
    { id: 2, name: 'エンターテイメント'},
    { id: 3, name: '健康'},
    { id: 4, name: '理科'},
    { id: 5, name: 'スポーツ'},
    { id: 6, name: '技術'},
  ]

  include ActiveHash::Associations
  has_many :news
end