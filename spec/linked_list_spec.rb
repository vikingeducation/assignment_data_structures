require "linked_list"

describe Node do
  let(:node){ Node.new }

  it "has a first attribute that defaults to nil" do
    expect(node.first).to eq(nil)
  end

  it "has a rest attribute that defaults to nil" do
    expect(node.rest).to eq(nil)
  end

  it "can be given a first and rest attributes" do
    n = Node.new(:car, :cdr)
    expect(n.first).to eq(:car)
    expect(n.rest).to eq(:cdr)
  end

end

describe LinkedList do
  let(:flat_lst){ LinkedList.new(Node.new(:a, Node.new(:b, nil))) }
  let(:head){ Node.new(:a, :b) }
  let(:tail){ Node.new(Node.new(:c, :d), Node.new(:e, :f)) }
  let(:nested_lst){ LinkedList.new(Node.new(head, tail)) }

  describe "#initialize" do
    it "it creates a new node as its child as default" do
      lst = LinkedList.new
      expect(lst.child.is_a? Node).to be(true)
    end
  end

  describe "#first" do
    it "returns the first item in the node" do
      expect(flat_lst.first).to eq(:a)
      expect(nested_lst.first).to eq(Node.new(:a, :b))
    end
  end

  describe "#rest" do
    it "returns the second item in the node" do
      expect(flat_lst.rest).to eq(Node.new(:b, nil))
      expect(nested_lst.rest).to eq(tail)
    end
  end

  describe "#cons" do
    it "returns a new LinkedList with the given itens" do
      lst = LinkedList.cons(:a, :b)
      control = LinkedList.new(Node.new(:a, :b))
      expect(lst.first).to eq(control.first)
      expect(lst.rest).to eq(control.rest)
    end
  end

  describe "#list" do
    it "returns a LinkedList with the given inputs" do
      lst = LinkedList.list(:a, :b)
      control = LinkedList.new(Node.new(:a, Node.new(:b, nil)))
      expect(lst.first).to eq(control.first)
      expect(lst.rest).to eq(control.rest)
    end
  end

  describe "#append" do
    it "returns a LinkedList with the item at its end" do
      lst = LinkedList.list(:a, :b)
      expect(lst.append(:c).child).to eq(LinkedList.list(:a, :b, :c).child)
    end
  end

  describe "#find" do
    it "returns the node at the given index" do
      expect(nested_lst.find(0)).to eq(nested_lst)
      expect(nested_lst.find(1)).to eq(nested_lst.rest)
    end
  end

  describe "#reverse" do
    it "returns a LinkedList with the elements reverse" do
      lst = LinkedList.list(:a, :b, :c)
      reverse_lst = LinkedList.list(:c, :b, :a)
      expect(lst.reverse.child).to eq(reverse_lst.child)
    end
  end

end
