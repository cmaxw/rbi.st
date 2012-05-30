class Link
  include Sandra

  key_attribute :path, :string
  column :url, :string
  column :created_at, :datetime

  validates :url, :presence => true

  before_save :initialize_path

  private

  def initialize_path
    self.path ||= RandomString.create(6)
  end
end
