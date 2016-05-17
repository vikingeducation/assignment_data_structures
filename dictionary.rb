Word = Struct.new(:word, :definition, :next)

class WordList
  attr_accessor :head, :tail

  def initialize(first_node=nil)
    @head = first_node
    @tail = first_node
  end

  def add_first_word(word, definition)
    @head = Word.new(word, definition, nil)
    @tail = @head
    puts "Added first word which was #{word}!"
  end

  def find_word(index)
    counter = 0
    current_word = @head

    while counter < index
      current_word = current_word.next
      counter += 1
    end
    puts "Found #{current_word.word} at index #{index}"
    current_word
  end

  def add_word(word, definition)
    if @head.nil?
      add_first_word(word, definition)
    else
      new_word = Word.new(word, definition, nil)
      @tail.next = new_word
      @tail = new_word
      puts "Added new word: #{word}!"
    end
  end

  def insert_word(word, definition, index)
    before_insertion = find_word(index-1)
    after_insertion = before_insertion.next
    new_word = Word.new(word, definition, after_insertion)
    before_insertion.next = new_word
  end

  def reverse
    current_word = @head
    @tail, @head = @head, @tail
    last_word = nil
    until current_word == nil
      next_word = current_word.next
      current_word.next = last_word
      last_word = current_word
      current_word = next_word
    end
  end
end

class MyHash

end
