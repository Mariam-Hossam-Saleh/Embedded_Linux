#!/bin/bash

# 1. Create "myDirectory" in the home folder
cd ~
mkdir myDirectory
echo "Directory 'myDirectory' created in the home folder."

# 2. Inside "myDirectory," create "secondDirectory"
cd myDirectory
mkdir secondDirectory
echo "Directory 'secondDirectory' created inside 'myDirectory'."

# 3. Create a file named "myNotePaper" inside "secondDirectory"
cd secondDirectory
touch myNotePaper
echo "File 'myNotePaper' created inside 'secondDirectory'."

# 4. Copy "myNotePaper" from "secondDirectory" to "myDirectory"
cp myNotePaper ~/myDirectory/
echo "File 'myNotePaper' copied from 'secondDirectory' to 'myDirectory'."

# 5. Rename the copied file in "myDirectory" to "myOldNotePaper"
mv myNotePaper myOldNotePaper
echo "File 'myNotePaper' renamed to 'myOldNotePaper' in 'myDirectory'."

# End of script
echo "All tasks completed!"
