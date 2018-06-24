require_relative 'my_dictionary_builder'

books = BooksCollection.new("books/")
books.form_array()
#books.print_names();

books.form_dictionary()

books.sort_by_value()
books.print_words_count()

