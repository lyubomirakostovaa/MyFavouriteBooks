class Book <  ActiveRecord::Base
    def self.all_genres ; ['Science fiction', 'Drama', 'Action and Adventure', 'Romance', 'Mystery', 'Horror'] ; end
    validates :title, :presence => true
    validates :publish_date, :presence => true
    validate :published_1967_or_later 
    validates :isbn, :presence => true, :unless => :grandfathered?
    validates :genre, :presence => true, :inclusion  => {:in => Book.all_genres}
   
    def published_1967_or_later
      errors.add(:publish_date, 'must be 1967 or later') if
      publish_date && publish_date < Date.parse('1 Jan 1967')
    end
   
    @@grandfathered_date = Date.parse('1 Jan 1967')
   
    def grandfathered?
      publish_date && publish_date < @@grandfathered_date
    end

    def self.similar_books(book)
    end
  end