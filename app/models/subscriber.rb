class Subscriber < ApplicationRecord
  require 'csv'

  def self.to_csv
    attributes = %w{id email}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |subscriber|
        csv << attributes.map{ |attr| subscriber.send(attr) }
      end
    end
  end
end
