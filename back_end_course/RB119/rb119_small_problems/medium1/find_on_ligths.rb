=begin    
1000 Lights You have a bank of switches before you, 
numbered from 1 to n. Each switch is connected to exactly one light 
that is initially off. You walk down the row of switches
 and toggle every one of them. You go back to the beginning, 
 and on this second pass, you toggle switches 2, 4, 6, and so on. 
 On the third pass, you go back again to the beginning 
 and toggle switches 3, 6, 9, and so on. 
 You repeat this process and keep going until 
 you have been through n repetitions.

Write a method that takes one argument, 
the total number of switches, and 
returns an Array that identifies which lights 
are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on 
round 2: lights 2 and 4 are now off; 1, 3, 5 are on 
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on 
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on 
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on 
The result is that 2 lights are left on, lights 1 and 4. 
The return value is [1, 4].

With 10 lights, 3 lights are left on: 
lights 1, 4, and 9. The return value is [1, 4, 9].


E: 
        1 2 3 4 5
1round  1 1 1 1 1
2round  1 0 1 0 1
3round  1 0 0 0 1
4round  1 0 0 1 1
5round  1 0 0 1 0 --> [1,4] lights are on

Algo :
 -  create a hash of n integer as key and lights on/off [on-->boolean true and off --> boolean flase ] as value
 - itarete n-1 times for rounds -since we create hash as it on like 1st iteration
  - nested iteration for each lights 
  - if light_no is multiple of round toggle the lights on/off -->assign not value

    -return keys of value are equal to boolean true
=end

def on_lights(n)
  light_hash ={}
  (1..n).each do |num|
    light_hash[num] = true
  end

 (2..n).each do |round|
  (1..n).each do |light_no| 
    light_hash[light_no] = !light_hash[light_no]  if light_no % round == 0
 end
end
 light_hash.select{|k,v| v== true}.keys
end

 p on_lights(5) == [1,4]
 p on_lights(10) == [1,4,9]
 p on_lights(20)