require 'spec_helper'

describe Stack do
	let(:stack){Stack.new}

	describe '#push' do
		it 'adds a value to the top of the stack' do
			stack.push(1)
			expect(stack.peek).to eq(1)
		end
	end

	describe '#pop' do
		it 'removes a value from the top of the stack and returns that value' do
			stack.push(5)
			expect(stack.pop).to eq(5)
			expect(stack.peek).to be_nil
		end
	end

	describe '#peek' do
		it 'returns the value at the top of the stack' do
			stack.push(5)
			expect(stack.peek).to eq(5)
			stack.push(10)
			expect(stack.peek).to eq(10)
		end
	end

	describe '#empty?' do
		it 'returns true when the stack contains no values' do
			expect(stack.empty?).to eq(true)
		end

		it 'returns false when the stack contains values' do
			stack.push(10)
			expect(stack.empty?).to eq(false)
		end
	end
end