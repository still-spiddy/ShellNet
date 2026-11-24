# ShellNet 🌐
*A simple Bash-based network diagnostics toolkit*

## About

ShellNet is a menu-driven shell script that lets you quickly check key
networking information on a Linux machine — without memorizing a dozen
different commands. Pick a number from the menu, and it runs the right
command for you: showing interfaces, IP addresses, routes, DNS lookups,
and host reachability.

This project was built as part of our System Programming and Scripting
(SPS) coursework, to apply core Linux networking commands and shell
scripting concepts in one practical, working tool.

## Features

- Show all network interfaces (`ip link show`)
- Display IP addresses assigned to the system (`ip addr show`)
- List network devices and their status (`nmcli device status`)
- Show configured network connections (`nmcli connection show`)
- Display the system's routing table (`ip route`)
- Resolve a domain name to its IPv4 address (DNS lookup)
- Ping any host or domain to check reachability
- Clean, loop-based menu — keeps running until you choose to exit

## Requirements

- A Linux system (tested on Kali Linux / Ubuntu-based distros)
- Bash shell (installed by default on virtually all Linux systems)
- `iproute2` (`ip` command), `NetworkManager` (`nmcli`), and standard
  networking tools (`ping`, `getent`) — these are present by default on
  most desktop Linux distributions

> Note: This script will not run natively on Windows. Use WSL, a Linux
> VM, or a native Linux machine.

## How to Run

1. Clone or download this repository:
   ```bash
   git clone <your-repo-link>
   cd shellnet
   ```

2. Make the script executable:
   ```bash
   chmod +x main.sh
   ```

3. Run it:
   ```bash
   ./main.sh
   ```

4. Choose an option from the menu by typing its number and pressing Enter.

## Menu Options

| Option | Action                       | Command Used            |
|--------|------------------------------|--------------------------|
| 1      | Show Network Interface       | `ip link show`           |
| 2      | Show IP Addresses            | `ip addr show`           |
| 3      | Show Network Devices         | `nmcli device status`   |
| 4      | Show Configured Connections  | `nmcli connection show` |
| 5      | Show Routing Table           | `ip route`               |
| 6      | DNS Resolve (domain → IPv4)  | `getent ahostsv4`       |
| 7      | Ping a Host/Domain           | `ping -c 3`              |
| 8      | Exit                          | —                          |

## How It Works

The script runs inside an infinite `while` loop that displays the menu,
reads the user's choice, and uses an `if`/`elif` chain to run the
matching command. After each task, the script pauses with a
"Press Enter to continue" prompt so the output can actually be read
before the screen clears and the menu reprints. Choosing option 8
exits the loop and ends the program.

## Why This Project

Rather than building a monitoring tool or a scanning tool from scratch,
this project focuses on applying the exact Linux networking concepts
taught in class — interfaces, IP addressing, routing, DNS, and
connectivity — in a clean, usable command-line tool. It's intentionally
simple and fully explainable end-to-end, rather than relying on
libraries or features beyond the course scope.

## Authors

- Harshit Patel
- Mayank Dwivedi
- Meet Jadvani
- Shreyansh Singh
- Aditya Singh
- Aryan Chaudhary
- Lakhani Vrund
- Yadav Daksh

## License

This project is for educational purposes as part of a college course
assignment.
