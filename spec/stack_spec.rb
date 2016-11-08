require 'stack'

describe Stack do
  let(:sample_stack){ Stack.new }
  let(:long_stack){ [1,2,3,4,5,6] }

  describe "#push_to_stack" do

    it 'pushs an input to the end of the stack' do
      sample_stack.push_to_stack(1)
      expect(sample_stack.stack[0]).to eq(1)
    end

    it 'pushs an input to the end of a long stack' do
      sample_stack.stack = long_stack
      sample_stack.push_to_stack(7)
      expect(sample_stack.stack[6]).to eq(7)
    end
  end

  describe '#pop_from_stack' do

    it 'removes from the end of the stack' do
      sample_stack.stack = long_stack
      sample_stack.pop_from_stack
      expect(sample_stack.stack[5]).to be_nil
    end

  end

end
