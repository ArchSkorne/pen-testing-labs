# Pen Testing Labs Portfolio

This repository contains monthly penetration testing labs, STAR stories, and malware case studies.

---

## Migration note (Weeks → Months)

The repository previously used a weekly structure ("Week01..Week12") and `weekly-progress.md` files. The project has been migrated to a monthly structure (`Month00..Month12`) and uses `monthly-progress.md` for tracking progress.

If you have a local clone, update it with:

```powershell
git fetch origin
git checkout main
git pull --ff-only origin main
```

If you run into conflicts or prefer a clean state, reclone the repository:

```powershell
rm -rf pen-testing-labs
git clone git@github.com:ArchSkorne/pen-testing-labs.git
```

If you maintain custom scripts that reference `weekly-progress.md` or `Week*` folder names, update them to `monthly-progress.md` and `Month*` respectively.

## Sync & hooks

Recommended sync commands:

Linux / macOS (bash):

```bash
cd /home/skorne/pen-testing-labs
bash ./123.sh
```

Windows (PowerShell):

```powershell
cd 'c:\path\to\pen-testing-labs'
.\123.bat
```

Pre-commit hooks:

This repository includes a sample hook at `.githooks/pre-commit` that blocks accidental commits that reintroduce `weekly-progress.md` or `Week*` folders. To enable hooks locally run:

```bash
git config core.hooksPath .githooks
```

Note: Git does not enforce hooks via the remote; enabling the hooks is a local step per-machine. CI checks or branch protection are recommended for stronger enforcement.
