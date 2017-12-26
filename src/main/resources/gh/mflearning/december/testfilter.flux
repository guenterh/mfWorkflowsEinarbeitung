
default file = FLUX_DIR + "data/marc1line.xml";

file |
open-file |
decode-xml|
handle-marcxml|
filter(FLUX_DIR + "morph/filter.xml")|
encode-formeta |
write("stdout");
