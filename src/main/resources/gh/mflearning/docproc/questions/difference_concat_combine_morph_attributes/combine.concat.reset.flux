default file = FLUX_DIR + "combine.concat.reset.true.data.xml";


file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "combine.concat.reset.true.morph.xml")|
encode-json |
write(FLUX_DIR + "combine.concat.reset.true.json");
