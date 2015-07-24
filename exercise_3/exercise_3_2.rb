#[4] Continue in the Document class.
# add a 'words' function that returns the content of the document in the form of
# an array of words.
# Example: if content is "some more content here" then the function should return
# ["some", "more", "content", "here"]

#[5] Read about blocks in ruby [also check the ruby examples provided]
# add a function each_word that loops on the words in the document - you must use
# blocks
# This function is called like this:
# document.each_word do |word|
#  puts word
# end



class Document

 attr_accessor :author, :title ,:content
   
    def initialize(attributes = {})
        @author =attributes[:author]
        @title =attributes[:title]
        @content =attributes[:content]

	end 
	def words
		a = content.split(" ")
		return a.to_s	
	end
	def each_word
		lambda {[@content, Document.content, yield]}
	end

end


a=Document.new(:author => "someone", :title => "my book", :content => "this is the content of my book")
b=Document.new(:author => "someone", :title => "my book", :content => "and so is this.")
c="a b d"


puts b.words
#puts a.each_word

a.each_word do |word|
	puts word
end


