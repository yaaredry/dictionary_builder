
class BooksCollection
   @@num_of_books = 0
   @@names = Array.new
   @@WORDS_COUNT = {}
   def initialize(dir_path)
      @dir_path = dir_path
   end
   
   def form_array()
       Dir.foreach(@dir_path){|file|
        next if file == '.' or file == '..'
        @@names << file
        @@num_of_books +=1
      }
   end
   
   def form_dictionary()
      @@names.each { |x| index_one_book(x) }
   end
   
   
   def index_one_book(book_name)
      
      file = File.open( @dir_path+book_name, "r") 
      
      puts "Indexing #{book_name}"
      
      file.each_line do |line|
        words = line.split 
        words.each do |word|
          word = word.gsub(/[,()'"]/,'')
          if @@WORDS_COUNT[word]
            @@WORDS_COUNT[word] += 1
          else
            @@WORDS_COUNT[word] = 1
          end
        end
      end
      
      puts "Indexed #{book_name}"
   end
   
   
   def toString()
     puts (@num_of_books)
     puts @names
   end
   def print_path()
     puts (@dir_path)
   end
   
   def print_names()
   puts ("size:" +@@num_of_books.to_s)
     puts (@@names)
   end
   
    def print_words_count()
       @@WORDS_COUNT.each do |key, value|
          puts key + ' : ' + value.to_s
          end
   end
   
def sort_by_value()
   @@WORDS_COUNT.sort_by {|a,b| b}
end

end

