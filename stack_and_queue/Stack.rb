class Stack

    attr_accessor:items

    def initialize
        @items = []
    end

    def push(item)
        @items.push(item)
    end 

    def pop
        puts "The value poped is #{@items.pop}"
    end

    def size
        @items.length
    end

    def prints
        print "#{@items}\n\n"
    end

    def empty?
        if @items.empty?
            puts "Stack is empty!"
        else
            puts "Stack have values!"
        end
    end
end

stack = Stack.new
 
stack.push(10)

stack.push(11)
stack.push(12)
stack.push(13)
stack.push(14)

stack.prints

stack.pop

puts ""

stack.prints

stack.empty?



 
