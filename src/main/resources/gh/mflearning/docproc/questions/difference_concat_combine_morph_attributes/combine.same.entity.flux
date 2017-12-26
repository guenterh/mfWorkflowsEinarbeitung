default file = FLUX_DIR + "combine.same.entity.no.reset.data.xml";


file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "combine.same.entity.no.reset.morph.xml")|
encode-json |
write(FLUX_DIR + "combine.same.entity.json");
