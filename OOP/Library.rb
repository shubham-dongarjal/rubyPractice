class Book
    attr_reader :title, :author
    attr_accessor :available
  
    def initialize(title, author)
      @title = title
      @author = author
      @available = true
    end
  
    def borrow
      if available
        self.available = false
        puts "#{@title} has been borrowed!"
      else
        puts "#{@title} is currently not available!"
      end
    end
  
    def return_books
      self.available = true
      puts "#{@title} has been returned!"
    end
  
    def info
      "#{@title} by #{@author} - is #{available ? 'available' : 'not available'}"
    end
  end
  
  class User
    attr_reader :name, :email, :book_borrowed
  
    def initialize(name, email)
      @name = name
      @email = email
      @book_borrowed = []
    end
  
    def borrow_book(book)
      if book.available
        book.borrow
        @book_borrowed << book
      else
        puts "#{book.title} is not available as of now.!"
      end
    end
  
    def return_book(book)
      if @book_borrowed.include?(book)
        book.return_books
        @book_borrowed.delete(book)
      else
        puts "#{@name} has not borrowed #{book.title}"
      end
    end
  
    def info
      puts "\nName: #{name}"
      puts "Email: #{email}"
      puts "Borrowed Books: #{@book_borrowed.map(&:title).join(', ')}"
    end
  end
  
  class Library
    attr_accessor :books, :users
  
    def initialize
      @books = []
      @users = []
    end
  
    def add_book(book)
      books << book
      puts "#{book.title} has been added!"
    end
  
    def list_books
      puts "\nList of books -\n"
      books.each { |book| puts book.info }
    end
  
    def add_user(user)
      if users.any? { |u| u.email == user.email }
        puts "User with email #{user.email} already exists!"
      else
        users << user
        puts "#{user.name} has been registered!"
      end
    end
  
    def find_user_by_email(email)
      users.find { |user| user.email == email }
    end
  
    def list_users
      puts "\nRegistered Users:"
      users.each { |u| puts "#{u.name} (#{u.email})" }
    end
  end
  
  library = Library.new
  default_user = User.new("Library", "library@gmail.com")
  library.add_user(default_user)
  current_user = default_user
  
  loop do
    puts "\n1. Add book"
    puts "2. List of books"
    puts "3. Borrow book"
    puts "4. Return book"
    puts "5. Current user info"
    puts "6. Register new user"
    puts "7. Switch user"
    puts "8. List users"
    puts "9. Exit"
    print "\nEnter your choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      print "Enter Book title: "
      title = gets.chomp
      print "Enter Book Author: "
      author = gets.chomp
      book = Book.new(title, author)
      library.add_book(book)
  
    when 2
      library.list_books
  
    when 3
      print "Enter the title of the book to borrow: "
      title = gets.chomp
      book = library.books.find { |b| b.title == title }
      if book
        current_user.borrow_book(book)
      else
        puts "Book not found!"
      end
  
    when 4
      print "Enter the title of the book to return: "
      title = gets.chomp
      book = current_user.book_borrowed.find { |b| b.title == title }
      if book
        current_user.return_book(book)
      else
        puts "Book not in your borrowed list!"
      end
  
    when 5
      current_user.info
  
    when 6
      print "Enter name: "
      name = gets.chomp
      print "Enter email: "
      email = gets.chomp
      new_user = User.new(name, email)
      library.add_user(new_user)
  
    when 7
      print "Enter email of user to switch to: "
      email = gets.chomp
      user = library.find_user_by_email(email)
      if user
        current_user = user
        puts "Switched to user #{user.name}"
      else
        puts "User not found!"
      end
  
    when 8
      library.list_users
  
    when 9
      puts "Logged out!"
      break
  
    else
      puts "Invalid option!"
    end
  end
  
