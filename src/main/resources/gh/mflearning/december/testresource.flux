default file = FLUX_DIR + "data/marc.xml";
default out = FLUX_DIR + "out1.json";
file |
open-file |
decode-xml |
handle-marcxml |
change-id("245*.a")|
morph(FLUX_DIR + "morph/resourceMorph.xml")|
change-id|
encode-esbulk(escapeChars="true", header="false", index="lsb_20171205", type="bibliographicResource") |
//encode-formeta |
write-esbulk (baseOutDir=FLUX_DIR, jsonCompliant="true");
