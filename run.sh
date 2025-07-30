
#!/bin/bash
# Simple run script for dual_camera_yolo.py with 854x480 resolution

# Activate venv if exists
if [ -d "venv" ]; then
    source venv/bin/activate
fi

# Run the program with lower resolution
python dual_camera_yolo.py --resolution 854x480
