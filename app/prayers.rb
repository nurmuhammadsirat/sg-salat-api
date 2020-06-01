require 'csv'

class Prayers
  def self.create(csv_file)
    new csv_file
  end

  def initialize(csv_file)
    @csv_file = csv_file
    @prayer_times = {}
    load_csv_data
  end

  def get_today
    current_date = Time.now.strftime("%-d/%-m/%Y")
    prayer_times[current_date]
  end

  private

  def load_csv_data
  end
end
