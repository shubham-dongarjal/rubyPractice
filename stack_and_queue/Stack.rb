# 1st way
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

#2nd way
class Stack 
    attr_accessor:items

    def initialize(size)
        @size = size
        # @items = Array.new(size)
        @items = []
        @top = -1
    end

    def push(item)
        @top = @top + 1
        if @top >=@size
            puts "Stack is full! Can not push #{item}. Max size is #{@size}"
        else
            @items[@top] = item
        end
    end 

    # def prints
    #     items = []
    #     @items.each do |a|
    #         if a != nil
    #             items << a 
    #         end
    #     end
    #     print "#{items}\n"
    # end
    
    def prints
        print "#{@items}\n"
    end

    def len
       puts "Size is #{@items.length}"
    end

    def pop 
        if @top == -1
            return puts "stack is empty"
        end
        puts "The value poped is #{@items.delete_at(-1)}"
    end
end

stack = Stack.new(10)

stack.push(10)
stack.push(11)
stack.push(12)
stack.push(13)
stack.push(14)
stack.push(15)
stack.push(12)
stack.push(13)
stack.push(14)
stack.push(14)
stack.push(14)



stack.prints

stack.pop

stack.len


 
