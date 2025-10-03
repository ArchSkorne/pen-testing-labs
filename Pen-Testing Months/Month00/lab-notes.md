# Month00 — Environment Setup

## Legal & Safety
All testing in this repository is performed on lab VMs under the owner's control. Do NOT target external systems.

## Environment
- Host(s): Arch Linux workstation and Arch Linux laptop (preferred) — both used for daily work and attacks from a dedicated Kali VM or container.
- Windows optional host: VirtualBox available if needed for cross-testing.
- Kali VM: to be created and snapshotted (runs as an attacker VM)

## Tools to install
- Core tools (available on all hosts): nmap, netcat, sqlmap, gobuster, nikto, jq
- Web testing: Burp Suite (Community), Burp extensions as needed
- Exploitation / frameworks: Metasploit (optional, use in isolated VMs)
- Package managers: pacman (Arch) and yay (AUR helper) for installing community packages on Arch

Example Arch install commands (run as root or with sudo):
```bash
# Update system
sudo pacman -Syu

# Install common tools
sudo pacman -S --noconfirm nmap netcat-openbsd sqlmap gobuster nikto jq python python-pip

# Optional (install Burp via AUR or download from PortSwigger)
# Install yay (if not installed) then: yay -S burpsuite
```

## Setup steps
1. Prepare Arch hosts
	- Ensure both Arch workstation and laptop are updated (`sudo pacman -Syu`).
	- Install core tooling listed above.
	- Configure SSH keys for secure remote management if needed (store private keys locally, don't commit them).
2. Create attacker VM (Kali)
	- Create a Kali VM in VirtualBox (or libvirt if you prefer) on one host.
	- Disable host-file sharing between host and VM; use secure copy (scp) for file transfer if necessary.
3. Snapshot & isolate
	- Snapshot the clean Kali VM before any offensive work.
	- Use host-only or NAT networks with no direct internet egress from lab VMs unless required.
4. Test network and tools
	- From the Arch host, test `nmap` and basic connectivity to the Kali VM and back.
5. Document
	- Record installed package versions and the snapshot ID in `Month00/monthly-progress.md`.

## Notes
- Keep credentials out of repo. Use a local password manager for secrets.

## Resources
- VirtualBox, Kali docs
