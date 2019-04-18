lines <- c("graph letters {")

for (from in letters) {
 for (to in letters) {
   if (from <= to) next()
   lines <- c(lines, paste0("  ", from, " -- ", to, ";"))
 }
}
lines <- c(lines, "}")
writeLines(text = lines, con = "graph.dot")
