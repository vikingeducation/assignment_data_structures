require 'spec_helper'

describe LinkedList do
	let(:node_zero){Node.new('zero', 0)}
	let(:node_one){Node.new('one', 1)}
	let(:node_two){Node.new('two', 2)}
	let(:node_three){Node.new('three', 3)}
	let(:node_four){Node.new('four', 4)}
	let(:nodes){[node_zero, node_one, node_two, node_three, node_four]}
	let(:list){LinkedList.new}

	describe '#prepend' do
		before do
			nodes.each {|n| list.prepend(n)}
		end

		it 'takes a node as a parameter' do
			expect {list.prepend(node_zero)}.to_not raise_error
		end

		it 'puts the node at index 0 in the list' do
			expect(list.read(0)).to eq(node_four)
		end

		it 'sets next on the prepended node to the node that was at index 0' do
			expect(list.read(0).next).to eq(node_three)
		end
	end

	describe '#append' do
		before do
			nodes.each {|n| list.append(n)}
		end

		it 'takes a node as a parameter' do
			expect {list.append(node_zero)}.to_not raise_error
		end

		it 'puts the node at the last index of the list' do
			expect(list.read(4)).to eq(node_four)
		end

		it 'sets next on the last node in the list to the appended node' do
			expect(list.read(3).next).to eq(node_four)
		end
	end

	describe '#insert' do
		before do
			list.append(node_zero)
			list.append(node_one)
		end

		it 'takes a node and index as parameters' do
			expect {list.insert(node_two, 1)}.to_not raise_error
		end

		it 'inserts the node at the given index' do
			list.insert(node_two, 1)
			expect(list.read(1)).to eq(node_two)
		end

		it 'sets next on the passed node to the node in the next index' do
			next_node = list.read(1)
			list.insert(node_two, 1)
			expect(node_two.next).to eq(next_node)
		end

		it 'sets next on the node before the index to the passed node' do
			prev_node = list.read(0)
			list.insert(node_two, 1)
			expect(prev_node.next).to eq(node_two)
		end
	end

	describe '#read' do
		before do
			list.prepend(node_zero)
		end

		it 'takes an index as a parameter' do
			expect {list.read(0)}.to_not raise_error
		end

		it 'returns the node at the index' do
			expect(list.read(0)).to eq(node_zero)
		end
	end

	describe '#reverse' do
		before do
			list.append(node_zero)
			list.append(node_one)
			list.append(node_two)
			list.reverse
		end

		it 'reverses the order of the entire linked list' do
			expect(list.read(0)).to eq(node_two)
			expect(list.read(2)).to eq(node_zero)
		end

		it 'sets head and tail so append and prepend work' do
			list.prepend(node_three)
			expect(list.read(0)).to eq(node_three)
			list.append(node_four)
			expect(list.read(4)).to eq(node_four)
		end
	end

	describe '#empty?' do
		it 'returns true when there are no nodes in the list' do
			expect(list.empty?).to eq(true)
		end

		it 'returns false when there are nodes in the list' do
			list.append(node_zero)
			expect(list.empty?).to eq(false)
		end
	end

	describe '#to_s' do
		before do
			nodes.each {|n| list.append(n)}
		end

		it 'returns a string representing the full length of the list' do
			expect("#{list}").to be_kind_of(String)
			expect("#{list}".split('->').length).to eq(5)
		end
	end
end