openseamap-layer-sports
=======================

An OpenSeaMap sports layer that shows whitewater routes and water-sports related
points.

The style files assume that there is a GIS-enabled PostgreSQL database with
OpenStreetMap data that also includes fields for whitewater information. To
include this information, use a style file that includes the following entries
when doing the import with osm2pgsql.

```
node,way   whitewater               text         polygon
node,way   whitewater:name          text         polygon
node,way   whitewater:rapid_grade   text         polygon
node,way   whitewater:rapid_name    text         polygon
node,way   whitewater:section_grade text         polygon
node,way   whitewater:section_name  text         polygon
```

The Mapnik style file is generated from the [TileMill][1] project in folder
`sports-tilemill`. If you want to modify the style, **do not adapt the XML style
file directly** but open the project in TileMill, modify everything there, and
export the Mapnik XML file.

The resulting style file `openseamap_sports.xml` is only included for
convenience. To use it, you need to adapt the follwing lines in each Layer
section so that they fit your access to the PostgreSQL database: 

```
<Parameter name="host"><![CDATA[localhost]]></Parameter>
<Parameter name="dbname"><![CDATA[gis]]></Parameter>
<Parameter name="user"><![CDATA[openseamap]]></Parameter>
<Parameter name="password"><![CDATA[blubb]]></Parameter>
```

The folder `symbols` should be placed besides the xml file. To enable the
rendering with `tile_mod`, add an entry to file `renderd.conf` (probably in
`/usr/local/etc/renderd.conf`) pointing to the xml file.

[1]: https://www.mapbox.com/tilemill/
