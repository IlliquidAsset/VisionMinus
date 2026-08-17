## Outcome

### Ranked imagery options

1. **USGS/USDA NAIP — best lawful MVP**
   - The USGS service describes NAIP as public-domain orthoimagery, primarily 0.6 m resolution, with free downloadable source imagery.[6]
   - A catalog query at Cherokee Lake returned **Tennessee 2021 imagery acquired April 3, 2021 at 0.6 m/pixel**.[7]
   - **Integration:** download the Cherokee Lake source JP2s, crop/mosaic them, generate XYZ/MBTiles, and expose them through a custom `TileOverlay` in `google_maps_flutter`. Only cache/package the NAIP data—not Google tiles.
   - **License/offline:** strongest option for redistribution and offline use. Add “USGS, USDA FSA, The National Map” attribution even though the source data is public domain.
   - **Constraint:** imagery shows the water surface, not underwater terrain.

2. **Mapbox Satellite — best managed replacement map stack**
   - Mapbox documents global imagery through zoom 16 at roughly 1–2 m, regional imagery through zoom 18 at 0.3–0.6 m, and selected higher-resolution coverage beyond zoom 21.[3]
   - Mapbox’s Android SDK explicitly supports downloading defined regions and zoom ranges for offline rendering.[4]
   - **Integration:** migrate the map surface to Mapbox’s SDK or a contract-compatible MapLibre setup; do not treat Mapbox tile URLs as unrestricted generic XYZ.
   - **Constraints:** access token, usage billing, mandatory Mapbox/data-provider attribution, and offline storage governed by the SDK and Mapbox terms. Verify actual Cherokee imagery date/resolution before migrating.

3. **Esri World Imagery — strong online imagery, weaker offline fit**
   - Esri currently describes World Imagery as 30 cm HD across the United States, with still-higher-resolution community aerial imagery in selected locations.[5]
   - The item’s license metadata says the standard layer is **not intended for exporting tiles offline** and directs ArcGIS users to a separate “World Imagery (for Export)” layer.[5]
   - **Integration:** ArcGIS Maps SDK/API key is the cleanest route. Directly hotlinking the public REST tile endpoint from a third-party Flutter renderer should not be treated as permission to cache or redistribute it.
   - **Constraints:** Esri/Vantor/community attribution, ArcGIS terms and credentials, and no offline export from the normal layer.

4. **Existing Google satellite**
   - Google does not publish one fixed nationwide satellite zoom cap. The Android SDK exposes `getMaxZoomLevel()`, whose result varies by camera position and map type; satellite imagery can have a lower maximum than base-map tiles.[1]
   - **Practical test:** log `getMaxZoomLevel()` while centered over several Cherokee Lake locations rather than hardcoding zoom 21.
   - **Constraints:** Google imagery is view-only through the licensed SDK. Do not prefetch, extract, or build an offline Google tile cache; follow the Maps Platform service-specific terms.[2]
   - This remains the lowest-effort online basemap but is unlikely to solve a local imagery-resolution ceiling if Google already serves its best Cherokee imagery.

## Bathymetry findings

### Best lawful acquisition path

1. **Request current TVA data directly**
   - I found no current public TVA/USACE/NOAA/USGS Cherokee Reservoir bathymetric tile, WMS, GeoJSON, contour shapefile, or DEM suitable for embedding.
   - Ask TVA for:
     - latest hydrographic/bathymetric survey;
     - contour GIS or reservoir-bed DEM;
     - horizontal and vertical datum;
     - survey date and pool elevation;
     - redistribution/commercial-app permission.
   - Use TVA’s information/FOIA channel if a normal GIS request is unsuccessful.[17]
   - This is the best route to an accurate, distributable in-app overlay.

2. **C-MAP Genesis Social — coverage confirmed, but view-only**
   - The public Social Map index contains a specific **Cherokee Lake, Tennessee** entry.[12]
   - Genesis Social is currently advertised as free and includes Social Map chart downloads and bottom-hardness access.[11]
   - However, its terms restrict service content and generated data to informational, personal, non-commercial use; prohibit copying, distribution and commercial exploitation without written consent; and prohibit automated use of the service.[13]
   - **Therefore:** lawful as an external viewer/deep link, not as a tile source for VisionMinus. Do not call its undocumented tile endpoints, copy network URLs, or repackage downloaded AT5 chart data.
   - Commercial embedding requires a written Navico/C-MAP data license.

3. **C-MAP DISCOVER**
   - DISCOVER is a licensed chart product for compatible marine chartplotters, not a documented public mobile tile/API service.[18]
   - Treat it as device/chart-card content unless C-MAP offers VisionMinus a B2B SDK/data agreement.
   - Genesis Social confirms Cherokee community coverage, but that does **not** automatically prove identical DISCOVER edition coverage or grant reuse rights.

4. **Navionics/Garmin**
   - Garmin provides consumer marine-cartography viewers and Navionics products.[14]
   - I found no current public Navionics chart-tile API or Android SDK that authorizes third-party apps to embed chart imagery.
   - **Use:** external deep link to Garmin/Navionics only. For in-app contours, contact Garmin’s marine-cartography business team for a commercial agreement.

5. **Historical TVA navigation maps at ETSU**
   - ETSU hosts TVA Cherokee Reservoir navigation sheets from 1955–1957, including sheets 1, 3 and 4.[8][9][10]
   - These may help validate channel alignment or support a prototype georeferencing exercise.
   - The archive explicitly limits its access copy to research/educational purposes and places responsibility for publication/distribution rights on the user.[8]
   - **Do not ship digitized contours** until rights are cleared and the missing sheet(s), datum, depth interpretation and age limitations are resolved.

6. **NOAA, USACE and USGS**
   - NOAA’s Bathymetric Data Viewer and USACE eHydro are useful coverage checks, but I did not find a Cherokee Reservoir survey in their public interfaces.[15][16]
   - USGS/NAIP and ordinary elevation products measure land or water surfaces, not the submerged reservoir bed. They cannot be presented as bathymetry.
   - No suitable Tennessee state open-data layer was found during the reviewed searches.

## Recommended VisionMinus MVP

1. **Keep `google_maps_flutter` initially.**
2. Add a selectable **“NAIP HD”** layer made from downloaded public-domain Cherokee imagery:
   - JP2 → cropped GeoTIFF → Web Mercator MBTiles/XYZ;
   - local MBTiles for offline use or a controlled tile host;
   - custom Flutter `TileProvider`/`TileOverlay`;
   - visible USGS/USDA attribution and imagery year.
3. Add **“Open C-MAP Cherokee chart”** as an external deep link to the official Genesis Social entry.[12]
4. Show bathymetry as **“not installed / source pending”** rather than proxying C-MAP tiles.
5. Submit a TVA request for current contour GIS/DEM and redistribution rights. Once obtained, convert it to vector contours or MBTiles and label:
   - source and survey date;
   - vertical datum/reference pool;
   - any water-level correction;
   - “not for primary navigation.”
6. If TVA cannot license suitable data and embedded bathymetry is required immediately, negotiate commercial licensing with C-MAP or Garmin. There is no lawful free shortcut through their consumer viewers.

## Important technical warning

Static depth contours are meaningful only relative to their source pool elevation and vertical datum. Cherokee’s managed water level changes seasonally, so the app should either adjust displayed depths using current TVA elevation or clearly state the reference elevation.

No project files were created or modified.

## Sources

[1] https://developers.google.com/maps/documentation/android-sdk/reference/com/google/android/libraries/maps/GoogleMap — GoogleMap Android SDK reference  
[2] https://cloud.google.com/maps-platform/terms/maps-service-terms — Google Maps Platform Service Specific Terms  
[3] https://docs.mapbox.com/help/glossary/mapbox-satellite — Mapbox Satellite tileset reference  
[4] https://docs.mapbox.com/android/maps/guides/offline — Mapbox Android offline maps guide  
[5] https://www.arcgis.com/sharing/rest/content/items/10df2279f9684e4a9f6a7f08febac2a9?f=pjson — Esri World Imagery metadata and terms  
[6] https://imagery.nationalmap.gov/arcgis/rest/services/USGSNAIPImagery/ImageServer?f=pjson — USGS NAIP service metadata  
[7] https://imagery.nationalmap.gov/arcgis/rest/services/USGSNAIPImagery/ImageServer/query?f=pjson&geometry=-83.46%2C36.24&geometryType=esriGeometryPoint&inSR=4326&spatialRel=esriSpatialRelIntersects&outFields=Name%2CState%2CYear%2Cacquisition_date%2Cresolution_value%2Cresolution_units%2Cdownload_url&returnGeometry=false — Cherokee Lake NAIP catalog query  
[8] https://dc.etsu.edu/rare-maps/28 — TVA Cherokee navigation map sheet 1  
[9] https://dc.etsu.edu/rare-maps/29 — TVA Cherokee navigation map sheet 4  
[10] https://dc.etsu.edu/rare-maps/30 — TVA Cherokee navigation map sheet 3  
[11] https://www.genesismaps.com/Pricing — C-MAP Genesis plans  
[12] https://www.genesismaps.com/SocialMap/Index?mwID=1011421 — Cherokee Lake, Tennessee Social Map  
[13] https://s3.amazonaws.com/s3-nox-prd-static-content-use1/Terms_of_Use-CMAP_Genesis.pdf — C-MAP Genesis Terms of Use  
[14] https://maps.garmin.com/marine?maps=another-brand&overlay=false — Garmin Marine Cartography viewer  
[15] https://www.ncei.noaa.gov/maps/bathymetry — NOAA Bathymetric Data Viewer  
[16] https://navigation.usace.army.mil/Survey/Hydro — USACE eHydro  
[17] https://www.tva.com/information/freedom-of-information — TVA information/FOIA  
[18] https://www.c-map.com/discover — C-MAP DISCOVER