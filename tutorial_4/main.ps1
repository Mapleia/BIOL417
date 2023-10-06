$3gene_dir = ".\tutorial_4\3gene"
$3gene_exists = Test-Path -PathType container $3gene_dir
if (!$3gene_exists) {
  Expand-Archive -Path ".\tutorial_4\setup\Files_for_Tutorial-4.zip" -DestinationPath $3gene_dir
}

Copy-Item -Path ".\tutorial_4\setup\partition_finder.cfg" -Destination ".\tutorial_4\3gene"

docker run -v "${PWD}\tutorial_4\3gene:/app/3gene" --rm `
  "biol417/tutorial4:latest" `
  python "partitionfinder-2.1.1//PartitionFinder.py" "./3gene"
