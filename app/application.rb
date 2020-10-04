class Application

  def call(env) #calls the environment?
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    #slot game will need to randomize numbers to function

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
    #makes the randomized nums visible to the user with new lines separating them

    if num_1==num_2 && num_2==num_3 
      #if all of the numbers match
      resp.write "You Win"
      #must use write not puts for html
    else 
      resp.write "You Lose"
      #unless the nums match you lose
    end

    resp.finish
  end

end
