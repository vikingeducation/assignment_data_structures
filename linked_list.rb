class LinkedList
  attr_accessor = :list_end

  def initialize(entry = nil)
    @entry = entry
    @list_end = entry.word
  end

  def add_entry(entry)
    list_end.point = entry.word
  end

  def read
  end

  def insert
  end

end

Entry = Struct.new(:word, :definition, :pointer)


s = Entry.new("cat", "dog that barks", nil)

dictionary = LinkedList.new
dictionary.add_entry(s)