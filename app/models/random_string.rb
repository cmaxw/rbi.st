module RandomString
  ALNUM = ['A'..'Z', 'a'..'z', 0..9].map(&:to_a).flatten

  def self.create(length = 6)
    (1..length).map {|i| ALNUM[rand(ALNUM.length)]}.join
  end
end
