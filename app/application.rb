class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..5)
    num_2 = Kernel.rand(1..5)
    num_3 = Kernel.rand(1..5)

    resp.write "Your numbers are: #{num_1} #{num_2} #{num_3}\n"
    #resp.write "#{num_2}\n"
    #resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win!"
    else
      resp.write "You Lose."
    end

    resp.finish
  end

end
