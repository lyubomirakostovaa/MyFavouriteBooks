class Book < ApplicationRecord
    def self.all_genres ; %w['Science fiction' 'Drama' 'Action and Adventure' 'Romance' 'Mystery' 'Horror'] ; end
    validates :title, :presence => true
    validates :publish_date, :presence => true
    validate :published_1967_or_later 
    validates :isbn, :unless => :grandfathered?
    validate :genre, :inclusion  => {:in => Book.all_genres}
   
    def published_1967_or_later
      errors.add(:publish_date, 'must be 1967 or later') if
      publish_date && publish_date < Date.parse('1 Jan 1967')
    end
   
    @@grandfathered_date = Date.parse('1 Jan 1967')
   
    def grandfathered?
      publish_date && publish_date < @@grandfathered_date
    end
  end