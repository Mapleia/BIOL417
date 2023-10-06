# BIOL 417 - Tutorial 4

## Overview
This is a repository taking you from 0, to running PartitionFinder2 in your terminal.

## Setup

### Local setup
1. Install Python 2.7.
2. Run the setup script in a PowerShell terminal.
    ```ps1
      .\setup.ps1
    ```
3. Setup the `./tutorial_4/partitionfinder-v2.1.1/partition_finder.cfg` file according to the tutorial instructions.
4. Unzip the tutorial-4 zip inside setup.
5. Use the .venv python to run the partitionfinder.py inside the partitionfinder-v2.1.1 and feed the phy from the tutorial files.

### Docker setup
1. Install Docker.
2. Build Docker image.

    ```ps1
      docker build -t biol417/partitionfinder:latest .
    ```
3. Run the main script.

    ```ps1
      .\tutorial4\docker_run.ps1
    ```