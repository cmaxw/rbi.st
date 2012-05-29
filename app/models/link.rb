class Link
  include Sandra

  key_attribute :path, :string
  column :url, :string
  column :created_at, :datetime

  validates :url, :presence => true
end
