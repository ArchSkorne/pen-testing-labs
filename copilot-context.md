# 🧠 Penetration Testing Labs – Context for GitHub Copilot

This repository documents a 12-month hands-on penetration testing course for William Braly's career transition from industrial operations to cybersecurity. Use this file as the single source of truth for how Copilot and contributors should structure notes, progress, and automation.

## 👤 User Background (Updated 2025-10-03)
- **Current Role**: Subcontracted Operations Assist Technician (transitional position)
- **Career Goal**: Junior Penetration Tester / Cybersecurity Analyst
- **Background**: P-Tech degree, welding certification, industrial operations experience
- **Transition Strategy**: Maintaining current employment while building cybersecurity portfolio and certifications
- **Timeline**: Systematic 12-month learning plan + ongoing certification work (Network+, Security+, CEH, OSCP)
- **Unique Value**: Operations background valuable for industrial/critical infrastructure security roles

## 📁 Repo Structure (standard)
Organized by month:
- Month01-Network-Scanning
- Month02-Web-Exploitation
- Month03-Enumeration
- Month04-Exploitation
- Month05-Privilege-Escalation
- Month06-Post-Exploitation
- Month07-Web-Application-Security
- Month08-Network-Attacks
- Month09-Windows-Exploitation
- Month10-Linux-Exploitation
- Month11-Active-Directory
- Month12-CTF-Practice

Each month folder SHOULD contain these files (templates will be provided):
- `lab-notes.md` – Objectives, step-by-step walkthrough, results, and STAR stories
- `monthly-progress.md` – A compact progress tracker (see template below)
- `nmap-results.txt` – Raw scan output or selected excerpts
- `resources.md` – Links and references

## 🧪 Documentation Goals
- Use Markdown for all notes
- Keep printable layout in mind: clear headers, short sections, consistent spacing
- Put resource links in a compact `Resources` section at the end of each file
- STAR stories: short, 3–5 bullet STAR entries that map real incidents to learning objectives
- Technical writeups should contain: Tools used, Methodology (steps), Findings, Remediation/Notes

## 🔁 Monthly Progress Template
Create `monthly-progress.md` in the relevant `MonthXX-...` folder with this template and update it each session:

---
Month: Month0X — <short title>
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
- Use Git for version control; branch per major change or month when needed
- Sync scripts available: `123.sh` (Linux/POSIX) and `123.bat` (Windows)
- Recommended: run a quick `git status` and `git pull` at the start of each session

Optional automation suggestions (can be added later):
- small script to create a new `MonthXX` folder with templates prefilled
- CI check that `monthly-progress.md` exists for the current month

## 🧠 Copilot Tasks & How I’ll help
- When you say "generate monthly template" or "start Month03", I will create the `Month03/monthly-progress.md` and prefilled `lab-notes.md` sections

## ✍️ Editing this file
-- Keep this file focused on process and templates — not on monthly content
-- When your workflow changes, ask me to update this file and I'll follow the todo list process

## Templates location
- Consider adding a `templates/` folder in the repo root with `lab-notes-template.md` and `monthly-progress-template.md`

```text
Minimal monthly-progress.md example (to copy into Month05/monthly-progress.md):
---
Month: Month05 — Privilege Escalation
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

## 🔐 Copilot Permissions & Operating Protocol

### ✅ ALWAYS ALLOWED (No Permission Required)
- **Reading files** - Full access to read any file in the workspace
- **Running scripts** - Execute existing scripts (`.sh`, `.py`, etc.)
- **Terminal commands** - Run commands for information gathering, testing, analysis
- **File searches** - Use grep, find, semantic search tools
- **Git status checks** - Check repository state, view diffs, examine history
- **Extension management** - List, check, or analyze VS Code extensions

### 🟡 USER APPROVAL REQUIRED (Ask First)
- **Creating new files** - Always ask before creating any new file
- **Editing existing files** - Must request permission and show exact changes
- **Git commits** - Ask before committing changes (show what will be committed)
- **Deleting or moving files** - Explicit permission required
- **Structural changes** - Repository organization, folder creation/deletion

### 🔴 SPECIAL CASES (Context-Dependent)
- **Automated pushes** - Only when explicitly part of the requested functionality (like the extensions auto-update system)
- **System modifications** - Git hooks, config files that affect repository behavior
- **Bulk operations** - Multiple file changes, mass reorganization

### 🚀 ESTABLISHED WORKFLOWS
1. **Permission-Based Editing**: Show user exactly what will be changed, get approval
2. **Transparent Operations**: Explain what each command/action will do before executing
3. **Incremental Changes**: Break large modifications into smaller, reviewable chunks
4. **Git Hygiene**: Always check status before operations, stage specific files when appropriate

### 📋 USER-CONFIRMED PERMISSIONS (Click "Allow" History)
- ✅ Extensions tracking system (auto-update on commits)
- ✅ Reading workspace files for context
- ✅ Running information-gathering commands
- ✅ Creating structured documentation files when requested
- ✅ Git operations when explicitly requested ("push my changes")

### 🎯 WORKING RELATIONSHIP STYLE
- **User-driven**: Wait for explicit requests rather than suggesting changes
- **Transparent**: Always explain what tools/commands will be used
- **Collaborative**: Present options and let user choose approach
- **Respectful**: Never modify files without clear permission
- **Educational**: Explain reasoning behind suggestions and approaches

## ✅ Minimal contributor contract (how I, Copilot, will behave)
-- Ask before making any destructive repo-wide edits (deleting files, rewriting month content)
-- Create or update month files only when you ask me to (or give explicit commands like "start month 04")
-- Use the `templates/` folder when generating new files
-- **NEVER edit files without explicit user permission** - this is the cardinal rule
-- Show exact changes before implementing them
-- Respect the user's control over their repository

## 📌 Next steps I can take for you now
- Create a `templates/` folder and add `monthly-progress-template.md` and `lab-notes-template.md`
- Create `Month01/monthly-progress.md` prefilled with the template and mark it `in-progress`
- Or wait for your confirmation/edits to this process
