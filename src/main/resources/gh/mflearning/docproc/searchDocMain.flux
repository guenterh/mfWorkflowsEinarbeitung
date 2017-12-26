default file = FLUX_DIR + "data/allMarc.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "transform2SearchDoc.xml")|
//encode-formeta |
encode-json |
write("stdout");
