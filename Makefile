VERSION = 1.0

XML_FILE = XML/berry_synonyms.xml

CLEAN_FILES = $(XML_FILE)

ZIP_FILE = George-Ricker-Berry-Synonyms-$(VERSION).zip

ZIP_CONTENTS = README.txt $(XML_FILE) XML/berry.dtd

all:

clean:
	rm -f *~ XML/*~
	rm -f $(CLEAN_FILES)

dist: $(ZIP_FILE)

$(ZIP_FILE): $(ZIP_CONTENTS)
	rm -f $(ZIP_FILE)
	zip $(ZIP_FILE) $(ZIP_CONTENTS)



