# path to the 3gene directory
# the zip is downloaded into the setup directory

$3gene_dir = "${PWD}\lab_4\3gene"

# check if 3gene directory exists
$3gene_exists = Test-Path -PathType container $3gene_dir
if (!$3gene_exists) {
  Expand-Archive -Path "${PWD}\lab_4\setup\Files_for_Tutorial-4.zip" -DestinationPath $3gene_dir
}

# copy the partition_finder.cfg file into the 3gene directory
Copy-Item -Path "${PWD}\lab_4\setup\partition_finder.cfg" -Destination "${PWD}\lab_4\3gene"

docker build -f lab_4/Dockerfile -t biol417/partitionfinder:v1.1 .

# run the partition finder
docker run -v "${PWD}\lab_4\3gene:/app/3gene" --rm `
  "biol417/partitionfinder:v1.1" `
  python "partitionfinder-2.1.1/PartitionFinder.py" -v -f "./3gene"
