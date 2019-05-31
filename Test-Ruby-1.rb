class Auto_Machine
	def initialize
		@balance = 0
		@name = "admn"
		@pass = "1"
	end

	def username(name, pass, balance)
		
		p "----------------------------------"
		p "|                                |"
		p "| Welcome To Our Smart Machine |"
		p "|                                |"
		p "----------------------------------"
		p " Log In "

		p "Username"
		name = gets.chomp().to_s
		p "Password"
		pass = gets.chomp().to_s

		if name == "panha" && pass == "1"
			dashboard(balance)
		else
			p "Wrong"
			username(name, pass, balance)
		end
		
	end

	def dashboard(balance)
			
		p "Please Select Items Categories "
		p " 1- Drink "
		p " 2- Cafe"
		p " 3- Top Up"
		p " 4- Check Balance"

		item_selected = gets.chomp().to_i

			if item_selected == 1
				drink
			elsif item_selected == 2
				p "Release Soon"
			elsif item_selected == 3
				p "Please input your money"
				balance = gets.chomp().to_i
				@balance += balance
				dashboard(balance)
			elsif item_selected == 4
				p "Your balance is #{@balance} $"
				dashboard(balance)
			else
				dashboard(balance)
			end


	end

	def drink
		
		@balance

		item_drink = { :coca => 1, :fanta => 1, :vodka => 20 }
		p item_drink.keys
		p item_drink.values
		
		p "1 - Cocacola     1$"
		p "2 - Fanta        1$"
		p "Please Select Drink"

		select_drink = gets.chomp().to_i

		item_drink.each do |key, value|
			p key
			# if key == select_drink
			# 	p "True"
			# else
			# 	p "False"
			# end
		end
			

			# if select_drink.key == 1
			# 	p select_drink.value
			# elsif 
			# 	p "Try again"
			# 	dashboard(@balance)
			# end

		
		# select_drink = gets.chomp().to_i
		# if select_drink == 1
		# 	coca = item_drink[:coca]
		# 	@balance -= coca
		# 	p "Cocacola Purchased ! " + "Remaining Balance #{@balance}$"
		# 	dashboard(@balance)
		# elsif select_drink == 2
		# 	fanta = item_drink[:fanta]
		# 	@balance -= fanta
		# 	p "Remaining Balance #{@balance}"
		# 	dashboard(@balance)
		# end
		 
	end

end

cls = Auto_Machine.new
cls.username(@name, @pass, @balance)