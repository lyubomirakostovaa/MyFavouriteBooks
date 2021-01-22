FactoryBot.define do
    factory :book do
      title { 'A Fake Title' } # default values
      genre { 'Romance' }
      publish_date { 10.years.ago }
      isbn {'123-OPO-897'}
    end
  end