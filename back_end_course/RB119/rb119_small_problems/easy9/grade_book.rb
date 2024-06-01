def get_grade(mark_1,mark_2, mark_3)
  average_mark = (mark_1 + mark_2 + mark_3) / 3
  # p average_mark
case 
when (average_mark >= 90) && (average_mark <= 100)
  "A"
when (average_mark >= 80) && (average_mark < 90)
  "B"
when (average_mark >= 70) && (average_mark < 80)
  "C"
when (average_mark >= 60) && (average_mark < 70)  
   "D"
else
  "F"
end

end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(30,45,37)