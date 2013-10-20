class PostDate

  attr_accessor :year, :month, :day, :long_date

  def initialize(long_date)
    @long_date = Time.parse(long_date)
    make_date_attributes
  end

  def make_date_attributes
    @year = @long_date.year
    @month = @long_date.month
    @day = @long_date.day
  end

end