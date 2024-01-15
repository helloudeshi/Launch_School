=begin
    Modify this method so it will truncate 
    the message if it will be too wide to fit 
    inside a standard terminal window 
    (80 columns, including the sides of the box). 
    For a real challenge, try word wrapping 
    very long messages so they appear on 
    multiple lines, but still within a box.
=end

 # def print_in_box(message)
 #     horizonal_lines = "+#{'-' * (message.size+2)}+"
 #     empty_line = "|#{' ' * (message.size+2)}|"

    def msg_check(message)
        if message.size > 20
            puts "| #{message[0..20]}|"
            puts "| #{message[20..message.size]} |"
        else 
            puts "| #{message} |"
        end
    end
    
 msg_check('hello welcome to cnada and ottawa')

 #     puts horizonal_lines
 #     puts empty_line
 #     msg_check
 #     puts empty_line
 #     puts horizonal_lines

 # end

 # print_in_box('welcome')
 # print_in_box('To boldly go where no one has gone before.')
 # print_in_box(' ')