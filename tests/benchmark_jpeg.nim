import benchy, pixie/fileformats/jpg, jpegsuite

for file in jpegSuiteFiles:
  let data = readFile(file)
  timeIt "jpeg " & $(len(data) div 1024) & "k decode":
    discard decodeJpg(data)
