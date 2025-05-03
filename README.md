# Roblox Error 403 Reset Tool (HWID Ban Fix)

This batch script is designed to **clear Roblox's local application data** in an effort to fix **Error Code 403** — often associated with **Hardware ID (HWID) bans**.

> ⚠️ **Disclaimer**  
> This script is provided **for educational and recovery purposes only**.  
> Attempting to bypass a platform ban may violate [Roblox's Terms of Use](https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use). Use this at your own discretion.  
>  
> **We do not condone malicious use.**

---

## 🛠 What It Does

- Prompts for confirmation before making any changes  
- Deletes everything under `%LocalAppData%\Roblox` (which may include HWID-related cache)  
- Gives the option to download and reinstall the Roblox client using the official installer

---

## How to Use

1. **Download or clone** this repository
2. **Right-click** on `reset_roblox.bat` and select **"Run as Administrator"**
3. Follow the prompts:
   - Confirm data wipe
   - Choose whether to reinstall Roblox

---

## What Gets Removed

This script deletes:
- Local cache
- Saved user settings
- Potential residual files that may contribute to persistent 403 bans

---

## 📎 Notes

- This script **does not spoof MAC address, machine SID, or system registry values** — it only clears Roblox-related data from `LocalAppData`.
- For persistent HWID bans, additional steps (outside the scope of this script) may be required.
