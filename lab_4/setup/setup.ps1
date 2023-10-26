C:\Python27\python.exe -m pip install virtualenv
C:\Python27\python.exe -m virtualenv .venv

# https://www.hdfgroup.org/downloads/hdf5/
# download this

..\.venv\Scripts\python.exe -m pip install --upgrade pip
..\.venv\Scripts\python.exe -m pip install -r requirements.txt
curl -o ".\partitionfinder2.zip" "https://github.com/brettc/partitionfinder/archive/refs/tags/v2.1.1.zip"
Expand-Archive -Path .\partitionfinder2.zip -DestinationPath ".\"
