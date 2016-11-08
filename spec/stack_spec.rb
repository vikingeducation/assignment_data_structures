require 'stack'

describe Stack do
  let(:sample_stack){ Stack.new }
  let(:long_stack){ Stack.new([1,2,3,4,5,6]) }

  describe "#push_to_stack" do

    it 'pushs an input to the end of the stack' do
      sample_stack.push_to_stack(1)
      expect(sample_stack.stack[0]).to eq(1)
    end

    it 'pushs an input to the end of a long stack' do
      long_stack.push_to_stack(7)
      expect(long_stack.stack[6]).to eq(7)
    end
  end

  describe '#pop_from_stack' do

    it 'removes from the end of the stack' do
      long_stack.pop_from_stack
      expect(long_stack.stack[5]).to be_nil
    end

    it 'returns the value from the end of the stack' do
      expect(long_stack.pop_from_stack).to eq(6)
    end

  end 

  describe '#peek' do 
    it 'looks at top of stack' do
      expect(long_stack.peek).to eq(6)
    end
  end

  describe "basic integration test" do
    it "reverses a string" do 
      sample_stack.push_to_stack("H")
      sample_stack.push_to_stack("e")
      sample_stack.push_to_stack("l")
      sample_stack.push_to_stack("l")
      sample_stack.push_to_stack("o")  
      return_string = []
      5.times {return_string << sample_stack.pop_from_stack}
      expect(return_string).to eq(["o","l","l","e","H"])
    end
  end

end
