default file = FLUX_DIR + "../data/classif_udc.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "udcFrameMorph.xml")|
encode-json |
write("stdout");
