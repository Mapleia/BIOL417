# set the volume path
# PWD is the root of this repository
$vol = "${PWD}\lab_6\lab_data\3gene_UFBoot:/usr/local/bin/lab_data"
echo $vol
docker run --name "lab_6_notung" --rm `
  -v $vol `
  "evolbioinfo/iqtree:v2.2.5" `
  -s "/usr/local/bin/lab_data/3gene.phy" "-m" "TEST" "-B" 1000
