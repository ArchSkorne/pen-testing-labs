# 🧠 Penetration Testing Labs – Context for GitHub Copilot

This repository documents a 12-week hands-on penetration testing course. Use this file as the single source of truth for how Copilot and contributors should structure notes, progress, and automation.

## 📁 Repo Structure (standard)
Organized by week:
- Week01-Network-Scanning
- Week02-Web-Exploitation
- Week03-Enumeration
- Week04-Exploitation
- Week05-Privilege-Escalation
- Week06-Post-Exploitation
- Week07-Web-Application-Security
- Week08-Network-Attacks
- Week09-Windows-Exploitation
- Week10-Linux-Exploitation
- Week11-Active-Directory
- Week12-CTF-Practice

Each week folder SHOULD contain these files (templates will be provided):
- `lab-notes.md` – Objectives, step-by-step walkthrough, results, and STAR stories
- `weekly-progress.md` – A compact progress tracker (see template below)
- `nmap-results.txt` – Raw scan output or selected excerpts
- `resources.md` – Links and references

## 🧪 Documentation Goals
- Use Markdown for all notes
- Keep printable layout in mind: clear headers, short sections, consistent spacing
- Put resource links in a compact `Resources` section at the end of each file
- STAR stories: short, 3–5 bullet STAR entries that map real incidents to learning objectives
- Technical writeups should contain: Tools used, Methodology (steps), Findings, Remediation/Notes

## 🔁 Weekly Progress Template
Create `weekly-progress.md` in the relevant `WeekXX-...` folder with this template and update it each session:

---
Week: Week0X — <short title>
Date(s): YYYY-MM-DD
Status: not-started | in-progress | completed
Session length: <hours>

Objectives
- Objective 1 (what you'll do)
- Objective 2

Tasks & Notes
- [ ] Task 1 — short note or link to section in `lab-notes.md`
- [ ] Task 2 — notes

Key Findings
- Finding 1 (concise)
- Finding 2

STAR story (1–2 lines)
- Situation / Task / Action / Result — one short line

Resources
- [Tool or guide name](link) — 1-line why it's useful

---

## 🔄 Workflow & Automation
- Use Git for version control; branch per major change or week when needed
- Sync scripts available: `123-sync.bat` (Windows) and `123.sh` (POSIX)
- Recommended: run a quick `git status` and `git pull` at the start of each session

Optional automation suggestions (can be added later):
- small script to create a new `WeekXX` folder with templates prefilled
- CI check that `weekly-progress.md` exists for the current week

## 🧠 Copilot Tasks & How I’ll help
- When you say "generate weekly template" or "start Week03", I will create the `Week03/weekly-progress.md` and prefilled `lab-notes.md` sections
- I can fill `lab-notes.md` from a short bullet list you provide or convert raw notes into the printable format described above
- If you want, I can also create small helper scripts and a `templates/` folder with Markdown templates

## ✍️ Editing this file
- Keep this file focused on process and templates — not on weekly content
- When your workflow changes, ask me to update this file and I'll follow the todo list process

## Templates location
- Consider adding a `templates/` folder in the repo root with `lab-notes-template.md` and `weekly-progress-template.md`

```text
Minimal weekly-progress.md example (to copy into Week05/weekly-progress.md):
---
Week: Week05 — Privilege Escalation
Date(s): 2025-09-24
Status: in-progress
Session length: 2h

Objectives
- Practice local enumeration for Linux privilege escalation

Tasks & Notes
- [x] Run `sudo -l` and check results — found misconfigured sudo
- [ ] Try kernel exploit - pending

Key Findings
- Found world-writable script executed by root

STAR story (1 line)
- Identified misconfigured sudo which allowed limited privilege escalation in a lab VM / resulted in successful privilege gain during the session

Resources
- GTFOBins (https://gtfobins.github.io/) — quick lookup for privilege escalation vectors
---
```

## ✅ Minimal contributor contract (how I, Copilot, will behave)
- Ask before making any destructive repo-wide edits (deleting files, rewriting week content)
- Create or update week files only when you ask me to (or give explicit commands like "start week 04")
- Use the `templates/` folder when generating new files

## 📌 Next steps I can take for you now
- Create a `templates/` folder and add `weekly-progress-template.md` and `lab-notes-template.md`
- Create `Week01/weekly-progress.md` prefilled with the template and mark it `in-progress`
- Or wait for your confirmation/edits to this process
