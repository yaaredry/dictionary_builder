require_relative 'WordCountParser'

my_parser = WordCountParser.new("books/")

my_parser.form_dictionary()

#my_parser.sort_by("key")
my_parser.sort_by("value") 
my_parser.print_dictionary_to_file("my_file.txt")

