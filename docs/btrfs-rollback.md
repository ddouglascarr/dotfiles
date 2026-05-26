› How do I get a rescue environment. Is that something that would be in the boot menu?


• Usually yes, but there are two different things people mean by “rescue environment”.

  1. Fedora GRUB rescue entry

  Fedora normally keeps a rescue kernel/initramfs entry in GRUB.

  At boot:

  GRUB menu
    Advanced options for Fedora
      Fedora Linux (... rescue ...)

  That boots your installed system with a rescue initramfs. It can be enough for repair work, but it is
  still tied to the installed disk/system. For Btrfs root rollback it may work, but I’d prefer a live ISO
  for the first rollback test.

  If GRUB is hidden, hold or tap Esc / Shift during VM boot, depending on firmware/VM behavior.

  2. Fedora live ISO

  This is the cleaner rescue environment.

  Boot the VM from a Fedora Workstation/Everything live ISO, then open a terminal and mount the Btrfs
  top-level:

  sudo mkdir -p /mnt/btrfs
  sudo mount -o subvolid=5 /dev/vda3 /mnt/btrfs

  Then rollback is just:

  sudo mv /mnt/btrfs/root /mnt/btrfs/root-bad-$(date +%Y%m%d-%H%M%S)
  sudo btrfs subvolume snapshot /mnt/btrfs/snapshots/<snapshot-name> /mnt/btrfs/root
  sudo reboot
