Week: Week00 — Environment & Setup
Date(s): 2025-09-24
Status: in-progress
Session length: 0.5h

Objectives
- Install virtualization tools and Git; create snapshots; add legal/safety note.

Tasks & Notes
- [x] Install VirtualBox on host
- [x] Install Git and VS Code
- [ ] Set up Kali VM and snapshot it
- [ ] Configure host-only networking for lab isolation

Key Findings
- Host ready with VirtualBox and Git.

STAR story (1 line)
- Prepared a clean lab environment to ensure safe, repeatable practice.

Resources
- VirtualBox (https://www.virtualbox.org/)
- Kali Linux (https://www.kali.org/)

---

## Month00 — Actionable task list

Follow these tasks in order; check them off as you complete them.

- [ ] Install host tools: VirtualBox or VMware Workstation, Git, and VS Code. Document OS-specific commands in `Week00/lab-notes.md` (Arch notes already present).
- [ ] Provision a Kali VM template (or preferred attacker image), install common tools (nmap, netcat, sqlmap, gobuster, nikto, Burp Suite), and take a clean snapshot.
- [ ] Configure networking for lab isolation (host-only or NAT) and disable shared folders; document settings.
- [ ] Create and verify VM snapshots and document restore steps in `Week00/lab-notes.md`.
- [ ] Add legal & safety checklist to `Week00/lab-notes.md` reminding you to only test on lab VMs you control.
- [ ] Create a local `secrets-example.md` (do not commit) describing credential types and storage recommendation (password manager instructions).
- [ ] Test repo sync between machines using `123.bat` / `123.sh` (round-trip push/pull).
- [ ] Run a baseline nmap scan between attacker and target VMs; save output to `Week00/nmap-results.txt`.
- [ ] Add screenshots and finalize `Week00/lab-notes.md`; commit and push.

