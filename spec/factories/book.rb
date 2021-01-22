FactoryBot.define do
    factory :book do
      title { 'A Fake Title' } # default values
      genre { 'Romance' }
      publish_date { 10.years.ago }
      isbn {'123_OPO_897'}
    end
  end