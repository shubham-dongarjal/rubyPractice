module Bank
    class NewUser
        attr_accessor :current_balance, :account_number
        def initialize
            @current_balance = 0
        end

        def setUser(name)
            @current_balance +=500
            @account_number = rand(10000000..90000000)
            # puts "#{name} your account has been created with #{account_number} is an account number \nand 500 has been added in your current account as your initial deposite"

            puts "Hello #{name}, your account has been created!"
            puts "Account Number: #{@account_number}"
            # account = Account.new(@current_balance)
            # account.currentBalance()
            return @account_number
        end
    end

    class Account
        
        def initialize(current_balance)
            @current_balance = current_balance
        end

        def currentBalance
            puts "Current balance is #{@current_balance}"
        end

        def withdraw(amount_remove)
            if amount_remove <= 0
                puts "Please enter a positive amount to withdraw.\n"
                return
            end
            if @current_balance > amount_remove
                @current_balance = @current_balance - amount_remove
                puts ""
                puts "Current balance after withdrawal is #{@current_balance}"
            else 
                puts ""
                puts "balance is zero or negative cannot withdraw!"
            end
        end

        def deposit(amount_added)
            if amount_added <= 0
                puts "\nPlease enter a positive amount to deposit."
                return
            end       
            @current_balance = @current_balance + amount_added
            # puts ""
            puts "\nCurrent balance after deposit is #{@current_balance}"
        end
        
    end
    
    # account = Account.new(0)

    account = nil

    users = {}

        
    loop do 
        puts "\n1. Create User"
        puts "2. Deposit"
        puts "3. Withdraw"
        puts "4. Display balance"
        puts "5. exit"
        print "Enter Your choice - "
        choice = gets.chomp.to_i
        puts ""
        
        case choice 
        when 1
            print "Enter a name - "
            username = gets.chomp
            puts ""
            new_user = NewUser.new()
            new_user.setUser(username)
            account = Account.new(new_user.current_balance)
            users[new_user.account_number] = account
        when 2
            # print "Enter ammount want to deposite - "  66758351 71692656
            # deposit_ammount = gets.chomp.to_i
            # account.deposit(deposit_ammount)

            # if account.nil?
            #     puts "Please create an account first."
            # else
            #     print "Enter amount to deposit - "
            #     deposit_amount = gets.chomp.to_i
            #     account.deposit(deposit_amount)
            # end

            print "Enter your account number: "
            acc_no = gets.chomp.to_i

            if users[acc_no]
                print "Enter amount to deposit - "
                deposit_amount = gets.chomp.to_i
                users[acc_no].deposit(deposit_amount)
            else
                puts "Account not found!"
            end
        when 3

            print "Enter your account number: "
            acc_no = gets.chomp.to_i

            if users[acc_no]
                print "Enter amount to withdraw - "
                withdrawl_amount = gets.chomp.to_i
                users[acc_no].withdraw(withdrawl_amount)
            else
                puts "Account not found!"
            end



            # if account.nil?
            #     puts "Please create an account first."
            # else
            #     print "Enter ammount want to withdraw - "
            #     withdraw_ammount = gets.chomp.to_i
            #     account.withdraw(withdraw_ammount)
            # end
            
        when 4
            print "Enter your account number: "
            acc_no = gets.chomp.to_i
        
            if users[acc_no]
                users[acc_no].currentBalance
            else
                puts "Account not found!"
            end
        when 5 
            break
        else
            puts "Enter correct option"
        end
    end
end




        # new_user = NewUser.new()
        
        # new_user.setUser(username)
        
        # print "Enter a name - "
        # puts ""
        # username = gets.chomp
        
        # account = Account.new(new_user.current_balance)
    
        # print "Enter ammount want to deposite - "
        # deposite_ammount = gets.chomp.to_i
        # account.deposite(deposite_ammount)
    
        # print "Enter ammount want to withdraw - "
        # withdraw_ammount = gets.chomp.to_i
        # account.withdraw(withdraw_ammount)  
    
        # account.currentBalance
