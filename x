{ ... }:
{
# https://updates.cdn-apple.com/2025WinterFCS/fullrestores/082-01504/828B8EF9-8134-49D5-B24A-0BA504FC5ECC/UniversalMac_15.3.2_24D81_Restore.ipsw

# https://updates.cdn-apple.com/2025WinterFCS/fullrestores/072-70618/42F1A8CC-7E07-4329-958A-757FF600C303/UniversalMac_15.3.1_24D70_Restore.ipsw
            # find devices: ls -l /dev/disk/by-id/
      # find id's: lsblk -o NAME,PATH,PARTLABEL,PARTUUID,SIZE --tree --json
      # dry run: disko --mode format,mount --dry-run disk.nix
      # nixos-generate-config --root /mnt --show-hardware-config

      # disko.devices.disk.main = {
      #   device = "/dev/disk/by-id/nvme-APPLE_SSD_AP1024Z_0ba0210364d04a3d";
      #   type = "disk";
      #   content = {
      #     type = "gpt";
      #     partitions = {
      #       iBootSystemContainer = {
      #         label = "iBootSystemContainer";
      #         priority = 1;
      #         type = "AF0B";
      #         uuid = "488fff6a-5f5d-4422-93a3-62569ce5fac8";
      #       };
      #       Container = {
      #         label = "Container";
      #         priority = 2;
      #         type = "AF0A";
      #         uuid = "ee7bea43-365b-413b-a910-55a34f7dfd1a";
      #       };
      #       NixOSContainer = {
      #         label = "NixOSContainer";
      #         priority = 3;
      #         type = "AF0A";
      #         uuid = "ff177c29-727b-47b0-95ad-e9434124e83d";
      #       };
      #       ESP = {
      #         priority = 4;
      #         size = "512M";
      #         type = "EF00";
      #         uuid = "40b3cba1-9119-4ea0-9d71-d74f7d7fc570";
      #         content = {
      #           type = "filesystem";
      #           format = "vfat";
      #           mountpoint = "/boot";
      #           mountOptions = [ "umask=0077" ];
      #         };
      #       };
      #       RecoveryOSContainer = {
      #         label = "RecoveryOSContainer";
      #         priority = 5;
      #         type = "AF0C";
      #         uuid = "e009a8a7-02d7-4d3e-b467-331c995732f3";
      #       };
      #       luks = {
      #         size = "100%";
      #         content = {
      #           type = "luks";
      #           name = "crypted";
      #           settings.allowDiscards = true;
      #           content = {
      #             type = "btrfs";
      #             extraArgs = [ "-f" ];
      #             subvolumes = {
      #               "/root" = {
      #                 mountpoint = "/";
      #                 mountOptions = [
      #                   "compress=zstd"
      #                   "noatime"
      #                 ];
      #               };
      #               "/persistent" = {
      #                 mountpoint = config.persist.persistentStoragePath;
      #                 mountOptions = [
      #                   "compress=zstd"
      #                   "noatime"
      #                 ];
      #               };
      #               "/nix" = {
      #                 mountpoint = "/nix";
      #                 mountOptions = [
      #                   "compress=zstd"
      #                   "noatime"
      #                 ];
      #               };
      #               "/swap" = {
      #                 mountpoint = "/swap";
      #                 swap.swapfile.size = "23G";
      #               };
      #             };
      #           };
      #         };
      #       };
      #     };
      #   };
      # };
}