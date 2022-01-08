My Ubuntu image VMware disk has grown to 5GB physical file size. It's a dynamically growing disk with the maximum capacity of 8GB. I cleaned some stuff inside Linux distro and now inside it occupies 3GB. Obviously the physical file size didn't shrink back automatically. Is there a way (if possible free of charge) to shrink this disk back to ~3GB?

I need this to fit the image on the DVD.

There are three steps:

Defragment (no need to un/remount anything)

sudo e4defrag /

Ignore any errors. Some files like symlinks and device files can't be defragmented.

Zero-fill all unused space so VMware knows it's indeed unused:

dd if=/dev/zero of=wipefile bs=1M; sync; rm wipefile

Run the shrink operation:

sudo vmware-toolbox-cmd disk shrinkonly
