require 'spec_helper'

describe Queue do
	let(:queue){Queue.new}

	it 'can print a string in the same order it was given' do
		"Hello Queue!".chars.each do |c|
			queue.enqueue(c)
		end
		str = c = ''
		until (c == nil)
			str += c
			c = queue.dequeue
		end
		expect(str).to eq("Hello Queue!")
	end

	describe '#enqueue' do
		it 'adds a value onto the back of the queue' do
			queue.enqueue(10)
			expect(queue.back).to eq(10)
		end
	end

	describe '#dequeue' do
		it 'removes a value from the front of the queue' do
			queue.enqueue(10)
			expect(queue.dequeue).to eq(10)
		end
	end

	describe '#peek' do
		it 'returns the value from the front and back of the queue' do
			queue.enqueue(1)
			queue.enqueue(2)
			queue.enqueue(3)
			expect(queue.peek).to eq([3, 1])
		end
	end

	describe '#front' do
		it 'returns the value from the front of the queue' do
			queue.enqueue(1)
			queue.enqueue(2)
			expect(queue.front).to eq(1)
		end
	end

	describe '#back' do
		it 'returns the value from the back of the queue' do
			queue.enqueue(1)
			queue.enqueue(2)
			expect(queue.back).to eq(2)
		end
	end

	describe '#empty?' do
		it 'returns true when the queue contains no values' do
			expect(queue.empty?).to eq(true)
		end

		it 'returns false when the queue contains values' do
			queue.enqueue(1)
			expect(queue.empty?).to eq(false)
		end
	end
end