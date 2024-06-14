
SUBDIRS =  misc-progs misc-modules \
           skull scull scullc scullp sculld scullv shortprint simple \
	   pci usb\
	   short

all: subdirs

subdirs:
	for n in $(SUBDIRS); do $(MAKE) -C $$n || exit 1; done

clean:
	for n in $(SUBDIRS); do $(MAKE) -C $$n clean; done
