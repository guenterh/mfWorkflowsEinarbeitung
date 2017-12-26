//default file = FLUX_DIR + "../data/author.xml";
//default file = FLUX_DIR + "testData/author.100.700.800.xml";
//default file = FLUX_DIR + "testData/author.880.950.xml";
//default file = FLUX_DIR + "testData/author.880.950.looksUpx10.xml";
//default file = FLUX_DIR + "testData/author_additional.xml";
default file = FLUX_DIR + "testData/author_additional.950.xml";


file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "authorFrameMorph.xml")|
encode-json |
write("stdout");
