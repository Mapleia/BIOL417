$vol = "${PWD}\lab_6\lab_data:/usr/src/app/lab_data"
echo $vol
docker run --rm `
  -v $vol `
  "biol417/notung:v1.1" `
  "java" "-jar" "Notung-2.9.1.5.jar" "--speciestag" "prefix" "--reconcile" "-g" "lab_data//ldh//ldh_gene.tre" "-s" "lab_data//ldh//ldh_species.tre" "-outputdir" "lab_data//ldh//out"
