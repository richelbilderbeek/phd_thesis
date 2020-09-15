destfile <- tempfile()
while (1) {
  download.file(
    "https://www.rug.nl/research/portal/files/132028374/Complete_thesis.pdf",
    destfile = destfile
  )
  file.remove(destfile)
  download.file(
    "https://www.rug.nl/research/portal/files/132028376/Propositions.pdf",
    destfile = destfile
  )
  file.remove(destfile)
}
