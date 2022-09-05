# MARCXML to RiC

This is a converter from MARCXML to Records in Contexts (RiC) in TTL format.

## Overview
The mapping is done in the following steps:
1. Get some MARCXML files, eg. from [https://catalog.loc.gov/](https://catalog.loc.gov/)
2. Put them into the input-folder.
3. ``./run.sh`` will start the conversion.
4. The XML files are converted to RDF and stored as TTL files in output.

## Mapping with rml.io
For the conversion from MARCXML to RDF RiC the [RDF Mapping language (RML)](https://rml.io/) is used. The mapping definition has been written with [Zazuko XRM](https://zazuko.com/products/expressive-rdf-mapper/). XRM is a great help for creating, adapting or refactoring RML-mappings.  
This converter was originally developed for MARCXML coming from [Patrinum](https://patrinum.ch/), but thanks to XRM it can be easily adapted and used for other data sources if needed.
The processing itself is done with [CARML](https://github.com/carml/carml) as RML engine.

## Development
The converter was developed in 2021/2022 as part of a SWITCH Innovation Lab. The goal was to map metadata from [Patrinum](https://patrinum.ch/) to the [Connectome ecosystem.](https://www.switch.ch/connectome/)