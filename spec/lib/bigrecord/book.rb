class Book < BigRecord::Base
  include BigIndex::Resource

  column 'attribute:title',       'string'
  column 'attribute:author',      'string'
  column 'attribute:description', 'string'


  index :title, :string
  index :title_partial_match do |book|
    book.title
  end
  index :author, :string
  index :author_partial_match do |book|
    book.author
  end
  index :description
  index :current_time
  index :skipped_field, :skip => Proc.new{|book| true} do |book|
    book.title
  end

  def current_time
    Time.now.to_s
  end

end
