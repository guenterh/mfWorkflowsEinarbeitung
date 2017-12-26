default file = FLUX_DIR + "../data/classif_rvk_zdbs_local.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "rvk_zdbs_localFrameMorph.xml")|
encode-json |
write("stdout");
