$vol = "${PWD}\lab_6\lab_data:/usr/src/app/lab_data"
echo $vol
docker run --rm `
  -v $vol `
  "biol417/notung:v1.1" `
  "java" "-jar" "Notung-2.9.1.5.jar" "--reconcile" "-g" "lab_data//Test_Gene.tre" "--parsable" "--treestats" "-s" "lab_data//Test_Species.tre" "-outputdir" "lab_data//out" "--log"
