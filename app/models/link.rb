class Link
  include Sandra

  key_attribute :path, :string
  column :url, :string
  column :created_at, :datetime

  validates :url, :presence => true

  before_save :initialize_path

  def link
    "http://rbi.st/#{path}"
  end

  def redirect_url
    if url.match(/https?:\/\//)
      url
    else
      "http://#{url}"
    end
  end

  private

  def initialize_path
    self.path ||= RandomString.create(6)
  end
end
