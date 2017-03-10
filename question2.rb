class Book
  attr_accessor  :title, :chapters

  def initialize
     @title = title
    @chapters = [] #or Array.new
  end

  def add_chapter chapter_title
    @chapters << chapter_title
  end

  def chapters
      puts "your book #{title} has #{@chapters.length} chapters "
    @chapters.each_with_index do |item,index|
      puts "#{index+1}. #{item}"
    end
  end

end


book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My second chapter")
book.add_chapter("My third chapter...")
book.add_chapter("My fourth chapter...")
book.chapters
