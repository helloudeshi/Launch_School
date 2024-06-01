def triangle(angle_1, angle_2, angle_3)
  if (angle_1 + angle_2 + angle_3 == 180) && ([angle_1, angle_2, angle_3].all? { |angle| angle > 0 })
    if [angle_1, angle_2, angle_3].any? { |angle| angle == 90 }
      :right
    elsif [angle_1, angle_2, angle_3].all? { |angle| angle < 90 }
      :acute
    else
      :obtuse
    end
  else
    :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
