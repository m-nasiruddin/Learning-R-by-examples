# break statement
# --------------- (terminates the loop statement and transfers execution to the statement immediately following the loop)
v <- c("Hello","loop")
cnt <- 2
repeat {
  print(v)
  cnt <- cnt+1
  if(cnt>5) {
    break
  }
}

# next statement
# -------------- (it's useful when we want to skip the surrent iteration of a loop without terminating it)
v <- LETTERS[1:6]
for(i in v) {
  if(i == "D") {
    next
  }
  print(i)
}
