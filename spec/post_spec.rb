require_relative 'spec_helper'

describe Post do

  let(:post) { Post.new }
  let(:post_date) { PostDate.new("2013-10-20 16:43:02 -0400") }
  let(:author) { Author.new }

  before(:each) do
    post.post_date = post_date
    post.author = author
  end

  it "is an instance of Post" do
    post.should be_a(Post)
  end

  context "data" do

    it "has a title" do
      post.title = "Chapter 1"
      post.title.should eq("Chapter 1")
    end

    it "has content" do
      post.content = "This is a post, woo!"
      post.content.should eq("This is a post, woo!")
    end

  end

  context "post_date" do

    it "has a post_date" do
      post.post_date.should eq(post_date)
    end

    it "has a day" do
      post.day.should eq(post_date.day)
    end

    it "has a month" do
      post.month.should eq(post_date.month)
    end

    it "has a year" do
      post.year.should eq(post_date.year)
    end

  end

  context "author" do

    it "has an author" do
      post.author.should eq(author)
    end

  end

end