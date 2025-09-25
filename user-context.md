---
title: "Canonical User Context: goals, constraints, and roadmap"
date: 2025-09-24
version: 1
---

# Summary
A consolidated, high-level summary of the user's goals, constraints, and the 12-month roadmap for the Penetration Testing Labs repository.

# Core goals
- Complete a 12-month penetration testing curriculum covering network scanning, web exploitation, enumeration, exploitation, privilege escalation, post-exploitation, web app security, network attacks, Windows exploitation, Linux exploitation, Active Directory, and CTF practice.
- Preserve and document hands-on lab steps, STAR stories, and malware case studies.
- Maintain a reproducible environment for labs and clear templates for notes and weekly progress.

# Constraints & preferences
- Work primarily in Markdown within this repo for portability between machines.
- Use Git to sync between computers; prefer batch/PowerShell tools on Windows.
- Keep printer-friendly formatting for final writeups.
- Avoid storing secrets or PII in transcripts.

# Original roadmap fragments (PLACEHOLDER)
-- Preparatory steps: environment setup (VirtualBox, Vagrant, host tooling), legal & safety notes, baseline OS hardening for lab hosts.
-- Month 0: prerequisites and software installs (VMs, tools, accounts, snapshots)
-- Month 1..12: (topic list in repo structure)

# Extracted from recent Copilot chat (2025-09-24)
- Career transition: move from industrial operations into cybersecurity; target roles include Penetration Tester, SOC Analyst, and GRC Analyst.
- Education/Certs in progress: CompTIA Network+, Security+; goals: CEH, OSCP, CISSP.
- Strengths to leverage: risk management, compliance, safety mindset, incident response, STAR story experience, and strong document organization.
- RPCC CSIT evaluation: useful for foundations (A+, Net+, Sec+) but limited for offensive security — include notes in resources or `copilot-context.md`.

# Consolidated next steps (from chat)
-- Document each month's labs in Markdown and keep them printable.
- Use STAR stories to connect industrial experience to cyber scenarios and include them in `lab-notes.md`.
- Add preparatory Month0 tasks: environment setup, tool installs, VM snapshotting, legal/safety checklist.
- Build a professional portfolio on GitHub using this repo; make weekly progress visible.

## Month0 — Preparatory checklist (start here)
Follow these steps before starting Month01 labs. Complete items in order and mark them in `Month00/weekly-progress.md`.

1. Environment & host setup
	- Install VirtualBox or VMware Workstation on your host machine.
	- (Optional) Install Vagrant for reproducible lab VMs.
	- Install Git, a code editor (VS Code), and PowerShell (Windows) or preferred shell.
2. Lab tooling
	- Install Kali Linux in a VM or set up a Kali VM template.
	- Install common tools: nmap, netcat, sqlmap, gobuster, nikto, Burp Suite (Community), Metasploit (optional).
3. Snapshots & backups
	- Create snapshots of clean VMs before you start any offensive activity.
	- Ensure you can restore snapshots quickly.
4. Networking & isolation
	- Configure host-only or NAT networks so lab VMs cannot access the public internet unintentionally.
	- Disable shared folders or restrict file sharing between host and lab VMs.
5. Legal & safety
	- Add a short legal/safety note in `Month00/lab-notes.md` stating "All testing will be performed on lab VMs under your control. Do not target external systems."
6. Accounts & credentials
	- Create a central `secrets-example.md` (not checked in) listing the types of credentials you will use and how you'll store them securely (e.g., local password manager).
7. Repo & sync
	- Ensure this repo is cloned on both machines and you can push/pull changes. Test a round-trip git push/pull.

## Suggested 12-month timeline (measurable milestones)
This maps the existing weekly topics into measurable monthly milestones. Adjust hours per month to fit your schedule.

- Month00: Environment setup, tool installs, snapshots (2–4 hours)
- Month01: Network scanning fundamentals + lab (nmap, basic enumeration) (4–8 hours)
- Month02: Web exploitation basics (input validation, SQLi labs) (4–8 hours)
- Month03: Enumeration: services and users (LDAP, SMB, SNMP) (4–8 hours)
- Month04: Exploitation techniques and privilege escalation principles (5–10 hours)
- Month05: Privilege escalation deep dive (local enumeration, kernel basics) (5–10 hours)
- Month06: Post-exploitation (persistence, data exfiltration, cleanup) (4–8 hours)
- Month07: Web application security advanced (auth, logic, API testing) (5–10 hours)
- Month08: Network attacks and lateral movement basics (4–8 hours)
- Month09: Windows exploitation (Active Directory reconnaissance basics) (5–10 hours)
- Month10: Linux exploitation and deeper kernel/priv escalation (5–10 hours)
- Month11: Active Directory deep dive and persistence in domain environments (6–12 hours)
- Month12: CTF practice and portfolio polish (capture-the-flag, writeups, STAR stories) (6–12 hours)

Notes:
- Treat the hours as flexible; the goal is consistent progress. Record actual session length in `weekly-progress.md` for tracking.
-- After each month, add a short STAR story and evidence (screenshots, commands) to `lab-notes.md`.

-- Immediate actions
-- - Import browser chats into `browser-chats/` using `templates/import-chat.ps1`.
-- - After import, consolidate key actions into the monthly `weekly-progress.md` file for the relevant month.

# Notes on provenance
- Each imported chat file should contain the `source` and `date` in YAML frontmatter.
- Keep `user-context.md` as the canonical, short summary you edit directly. Use chat imports as long-form history.

## Preferred tone
Use a mix of Casual-Collaborative and Warm-Explanatory tone when interacting with me:

- Friendly, conversational language with contractions (I'm, we'll).
- Clear explanations with short examples and practical next steps.
- Brief empathy or validation when appropriate (e.g., "I get that—this can feel overwhelming.").
- Keep sentences mostly short (8–18 words), occasionally use one longer sentence for clarity.
- Avoid slang or excessive jokes; keep helpful warmth and patience.


## Terminology preference
I prefer the word "setup" when referring to initializing project files, templates, or environments. Avoid using the term "scaffold" except when discussing physical structures (for example, lab racks or physical scaffolding). If you need an alternative to "setup," use "bootstrap," "starter", or "seed" depending on context.

# How I will use this file
When you ask Copilot to produce or edit content, reference `user-context.md` and the relevant `browser-chats/*.md` files so the assistant can use your consolidated goals as project context.

# Your turn
Edit the sections above to capture any missing parts of your original roadmap. Once you confirm, I can:
- Add a `templates/weekly-progress-template.md` and `templates/lab-notes-template.md`.
- Import any chat transcripts you paste here into `browser-chats/` and extract action items into `user-context.md` and MonthXX files.
