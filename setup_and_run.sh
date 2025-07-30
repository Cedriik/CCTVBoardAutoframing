#!/bin/bash
# setup_and_run.sh
# This script sets up a Python virtual environment, installs requirements, and runs dual_camera_yolo.py
# Usage: bash setup_and_run.sh

set -e

# 1. Go to the script's directory
cd "$(dirname "$0")"

# 2. Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating Python virtual environment..."
    python3 -m venv venv
fi

# 3. Activate the virtual environment
source venv/bin/activate

# 4. Upgrade pip
pip install --upgrade pip

# 5. Install requirements
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
else
    # Fallback: install main dependencies
    pip install opencv-python ultralytics numpy
fi

# 6. Run the main program
echo "Running dual_camera_yolo.py..."
python dual_camera_yolo.py
