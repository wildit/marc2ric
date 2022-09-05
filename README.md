# MARCXML to RiC

This is a converter from MARCXML to RDF in the Records in Contexts (RiC)-format.

## Overview
The mapping is done in the following steps:
1. Get some MARCXML files, eg. from [https://catalog.loc.gov/](https://catalog.loc.gov/)
2. Put the files into the input-folder.
3. Run run.sh to start the conversion.
4. The XML files are converted to RDF and stored as TTL files in output. The mapping itself is done with the help of [rml.io](https://rml.io/).

## Mapping with rml.io
For the conversion from MARCXML to RDF RiC the RDF Mapping language (RML) is used. The declarative mapping definition has been created with [Zazuko XRM](https://zazuko.com/products/expressive-rdf-mapper/). XRM is a great help for creating, adapting or refactoring mappings. The existing converter was originally written for MARCXML coming from [Patrinum](https://patrinum.ch/), but thanks to XRM it can be easily adapted and used for other data sources as well.  
The processing itself is then done with [CARML](https://github.com/carml/carml) as RML engine.

## Development
The converter was developed in 2021/2022 as part of a SWITCH Innovation Lab project. The goal was to map metadata from [Patrinum](https://patrinum.ch/) to the [Connectome](https://www.switch.ch/connectome/).