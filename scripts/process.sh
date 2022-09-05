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

if [ -f "saxon9he.jar" ]
then
  echo "saxon has already been installed"
else
  # install saxon
  wget https://sourceforge.net/projects/saxon/files/Saxon-HE/9.9/SaxonHE9-9-1-8J.zip
  unzip SaxonHE9-9-1-8J.zip saxon9he.jar
  rm SaxonHE9-9-1-8J.zip
fi

if [ ! -d ../output ]
  then mkdir ../output
fi 

# Convert
# mv tmp.xml ../input/stripped.xml



for entry in `ls ../input/$search_dir`
do
    echo $entry
	java -jar saxon9he.jar -o:'../input/tmp.xml' '../input/'$entry preprocess.xslt
	java -jar -Dfile.encode=UTF-8 cli-1.1.2-SNAPSHOT-docuteam-jar-with-dependencies.jar -m ../src-gen/mapping.carml.ttl < '../input/tmp.xml' > '../output/'$entry'.ttl'
	rm '../input/tmp.xml'
done

