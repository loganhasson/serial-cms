class Post

  attr_accessor :title, :content, :post_date, :author, :day, :month, :year

  def post_date=(date)
    @post_date = date
    @year = date.year
    @month = date.month
    @day = date.day
  end

end