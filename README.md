# Shell Scripting with AWS EC2, Bash & Git

## Project Overview

This project demonstrates Linux shell scripting, AWS EC2 instance management, Git version control, and task automation using Cron. A Bash script (`monitor.sh`) is used to monitor the system and display key performance information.

## Tools Used

* AWS EC2 (Ubuntu)
* Bash Shell Scripting
* Git
* GitHub
* Cron

## Features

* Displays current date and time
* Shows hostname and current user
* Lists running services
* Displays CPU usage
* Displays memory usage
* Displays disk usage
* Saves monitoring output to a log file
* Automates execution using Cron

## Tasks Completed

* Launched an Ubuntu EC2 instance
* Connected to the instance using SSH (MobaXterm)
* Installed Git
* Initialized a Git repository
* Created `monitor.sh` for system monitoring
* Logged monitoring output to `monitor_logs.txt`
* Automated the script using Cron
* Committed and pushed the project to GitHub

## Project Structure

```text
shell-assignment/
├── monitor.sh
├── monitor_logs.txt
└── README.md
```

## How to Run

```bash
chmod +x monitor.sh
./monitor.sh
```

## Cron Job

```cron
5 16 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/cronfolder/monitor_log.txt 2>&1
```

## Output

The monitoring report includes:

* Running Services
* CPU Usage
* Memory Usage
* Disk Usage

The output is automatically saved to:

```text
/home/ubuntu/cronfolder/monitor_log.txt
```

## Author

**Alan Jose**

B.Tech Computer Science Graduate
