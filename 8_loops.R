# repeat loop
# ----------- (executes a sequence of statements multiple times and abbreviates the code that manages the loop variable)
v <- c("Hello","loop")
cnt <- 2
repeat {
  print(v)
  cnt <- cnt+1
  if(cnt>5) {
    break
  }
}

# while loop
# ---------- (repeats a statement or group of statements while a given condition is true)
v <- c("Hello","while loop")
cnt <- 2
while (cnt<7) {
  print(v)
  cnt = cnt+1
}

# for loop
# -------- (like a while statement, except that it tests the condition at the end of the loop body)
v <- LETTERS[1:4]
for(i in v) {
  print(i)
}
