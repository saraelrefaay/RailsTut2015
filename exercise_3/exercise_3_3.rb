# Mixing in modules
#[6] Create a method that returns today's date. Method name should be 'current_date'
# This method should be in a module called 'Generic'.
# Try mixing in this module into the Document class
# Now use this method to create another method that returns
# The tite of the document and today's date like below:
# "document_title 2014-06-22". This method should be called 'title_with_date'


#[7] we would like to add a function that replaces a word with another
# replace_word(old_word, new_word)

#Metaprogramming
#[8] instead of calling document.replace_word(old,new) we would like to be able to
# do something like this: document.replace_book('pen') where book is the old word
# and pen is the new word. This should work on any word (not just book).
# hint:  'method_missing'


require 'time'

module Generic
	def current_date	
		current_time = Time.now.to_date
	end
end
class Document
	include Generic 
	attr_accessor :author, :title ,:content
    def initialize(attributes = {})
        @author =attributes[:author]
        @title =attributes[:title]
        @content =attributes[:content]
	end
	def title_with_date 
        return "#{title} #{current_date}"
	end

	def replace_word(old_word, new_word)
		 @content.gsub!(old_word, new_word)
	end     
end

a=Document.new(:author => "someone", :title => "my book", :content => "this is the content of my book")

puts a.title_with_date
 
puts a.replace_word("content" , "abd ")