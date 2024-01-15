def foo(_param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
puts foo
puts bar(foo)