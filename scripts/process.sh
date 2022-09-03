#!/bin/sh

# This script converts MARCXML files to Records in Contexts (RiC).

# Check prerequisites
if [ -f "cli-1.1.2-SNAPSHOT-docuteam-jar-with-dependencies.jar" ]
then
  echo "carml has already been installed"
else
  # install carml
  wget https://github.com/docuteam/carml-cli/releases/download/cli-1.1.2-docuteam/cli-1.1.2-SNAPSHOT-docuteam-jar-with-dependencies.jar
fi


if ! [ -x "$(command -v xsltproc)" ]; then
  echo 'Error: xsltproc is not installed.' >&2
  exit 1
fi

if [ ! -d ../output ]
  then mkdir ../output
fi 

# Convert
# mv tmp.xml ../input/stripped.xml



for entry in `ls ../input/$search_dir`
do
    echo $entry

#    xsltproc --output '../input/tmp.xml' 'namespace.xslt' '../input/'$entry
    java -jar -Dfile.encode=UTF-8 cli-1.1.2-SNAPSHOT-docuteam-jar-with-dependencies.jar -m ../src-gen/mapping.carml.ttl < '../input/'$entry > '../output/'$entry'.ttl'
done

