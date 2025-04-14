class Node
    attr_accessor :value, :next
  
    def initialize(value)
      @value = value
      @next = nil
    end
  end
  
  class LinkedList
    def initialize
      @head = nil
    end
  
    def append(value)
      new_node = Node.new(value)
      if @head.nil?
        @head = new_node
      else
        current = @head
        while current.next != nil
          current = current.next
        end
        current.next = new_node
      end
    end
  
    def prepend(value)
      new_node = Node.new(value)
      new_node.next = @head
      @head = new_node
    end
  
    def insert_at(index, value)
      return prepend(value) if index == 0
  
      new_node = Node.new(value)
      current = @head
      (index - 1).times do
        return if current.nil?
        current = current.next
      end
  
      return if current.nil?
      new_node.next = current.next
      current.next = new_node
    end
  
    def delete(value)
      return if @head.nil?
  
      if @head.value == value
        @head = @head.next
        return
      end
  
      current = @head
      while current.next && current.next.value != value
        current = current.next
      end
  
      if current.next
        current.next = current.next.next
      end
    end
  
    def show
      current = @head
      while current
        print "#{current.value} -> "
        current = current.next
      end
      puts "nil"
    end
  
    def length
      count = 0
      current = @head
      while current
        count += 1
        current = current.next
      end
      count
    end
  
    def includes?(value)
      current = @head
      while current
        return true if current.value == value
        current = current.next
      end
      false
    end
  end

list = LinkedList.new

list.append(10)
list.append(20)
list.prepend(5)
list.insert_at(2, 15)

list.show

puts "Length: #{list.length}"        
puts "Has 15? #{list.includes?(15)}" 

list.delete(10)
list.show


  
