# zebra-leopard-hybrid

Install scripts for ubuntu chroot and llvm/clang build.

## Usage:

Run `sudo ./install_chroot.sh <target_dir>` to install an Ubuntu chroot environment into `target_dir`.

The rest of the scripts will be copied into `/home/work` inside the chroot tree.

Do `sudo chroot <target_dir>` to change your root to `target_dir`.

Run `/home/work/install_llvm_3.5.sh`, sit back and relax while it downloads and builds LLVM and clang. They will be installed in `/home/work/llvm-3.5.0.src`.
