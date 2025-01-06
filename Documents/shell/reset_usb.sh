sudo -s
cd /sys/bus/pci/drivers/xhci_hcd/
for file in ????:??:??.? ; do
 echo -n "$file" > unbind
 echo -n "$file" > bind
done
