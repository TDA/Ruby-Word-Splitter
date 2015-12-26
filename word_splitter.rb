class WordSplitter
  attr_accessor :string

  # mixin Enumerable
  include Enumerable

  def initialize(string)
    self.string = string
  end

  def each
    # override the each method to yield the
    # words to the outer calling block
    string.split(' ').each { |word| yield word }
  end
end


w = WordSplitter.new("Hello my name is Sai")
w.each { |word| puts word}

p w.find_all { |word| word.include?('a')}
p w.reject { |word| word.include?('a')}
p w.map { |word| word.reverse}