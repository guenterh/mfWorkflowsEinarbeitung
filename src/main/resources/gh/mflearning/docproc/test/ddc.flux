default file = FLUX_DIR + "../data/classif_ddc.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "ddcFrameMorph.xml")|
encode-json |
write("stdout");
