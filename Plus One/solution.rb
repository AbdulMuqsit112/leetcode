def plus_one(digits)
  val = digits.join.to_i
  val+=1
  val.digits.reverse
end