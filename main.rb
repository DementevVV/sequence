# encoding: utf-8
class Sequence
  attr_reader :elements
  def initialize(elements)
    @elements = elements
  end

  def continue
    current = "1"
    puts current
    (1...elements).each do |i|
      out = String.new
      chunks = current.chars.chunk_while {|x, y|
        x == y
      }.map(&:join)
      chunks.each_with_index {|chunk, index|
        out << chunk.size.to_s + chunk[0]
      }
      puts out
      current = out
    end
  end
end

print "Enter the number of iterations:"
elements = gets.chomp.to_i
@sequence = Sequence.new(elements)
@sequence.continue
