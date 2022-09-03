# MARCXML to RiC

This converter harvests records in MARCXML-format from [Patrinum](https://patrinum.ch/) via the OAI protocol and converts them to RDF in the Records in Contexts (RiC)-format. The script can be adapted to other data sources and is thought as a generic tool to convert library metadata to RiC.

## Overview
The mapping is done in the following steps:
1. All records that are younger than a specific <datestamp> (OAI-header) are downloaded.
2. Metha-cat creates one large MARCXML-file that contains all records.
3. This large XML file is divided into individual XML files per record.
4. The XML files are converted to RDF and stored as TTL files. The mapping itself is done with the help of [rml.io](https://rml.io/).

## Mapping with rml.io
For the conversion from MARCXML to RDF RiC the RDF Mapping language (RML) is used. The declarative mapping definition has been created with [Zazuko XRM](https://zazuko.com/products/expressive-rdf-mapper/). XRM is a great help for creating, adapting or refactoring mappings. The existing converter was written specifically for MARCXML coming from Patrinum, but thanks to XRM it can be easily adapted and used for other data sources as well.  
Once the mapping definition is complete, the mapping itself can be carried out. This is done with [CARML](https://github.com/carml/carml) as RML engine.


## Prerequisites
The converter requires the following tools and will abort if they are not installed:
- [metha](https://github.com/miku/metha) for OAI harvesting. Install one of their [releases.](https://github.com/miku/metha/releases)
- [xsltproc](http://www.xmlsoft.org/xslt/xsltproc.html)
- csplit


## Development
The converter was developed in 2021/2022 as part of a SWITCH Innovation Lab project.
