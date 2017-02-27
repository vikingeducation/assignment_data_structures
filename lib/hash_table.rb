require "linked_list"

class HashTable
  attr_accessor :buckets

  def initialize(b = [])
    @buckets = b
  end

  def hash(word)
    # 97 is the #ord of a
    word[0].downcase.ord - 97
  end

  def append(k, v)
    bucket = buckets[hash(k)]
    if bucket.nil?
      @buckets[hash(k)] = LinkedList.list([k, v])
    else
      @buckets[hash(k)] = bucket.append([k, v])
    end
  end

  def render_list
    buckets.map do |bucket|
      letter = bucket.first[0][0]
      [letter, bucket.length]
    end
  end

  def define(k)
    index = hash(k)
    lst, result, steps = buckets[index], nil, 1
    while lst != nil
      break if lst.first.nil?
      if lst.first[0] == k
        result = lst.first[1]
        break
      else
        lst, steps = lst.rest, steps + 1
      end
    end
    puts("#{steps} step#{steps > 1 ? 's' : nil}!")
    result || "not found"
  end

end
