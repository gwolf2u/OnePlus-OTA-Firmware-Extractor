#!/bin/bash
# Usage: ./dump.sh FullPackage firstpackage secondpackage
# Example: ./dump.sh OP9 1 2
# This will extract OP9.zip and apply OP9-1.zip OTA to OP9.zip, then apply OP9-2.zip and so on

rm -rf ota
rm -rf extracted

# Extract full update
unzip packages/$1.zip payload.bin
mv payload.bin payload_working.bin
mkdir ota
(
    ./bin/ota_extractor -output_dir ota -payload payload_working.bin
    rm payload_working.bin
)

# Apply incrementals
for i in ${@:2}; do
    echo "Applying $1-$i..."
    unzip packages/$1-$i payload.bin
    wait
    mv payload.bin payload_working.bin
    (
        mkdir ota_new
        ./bin/ota_extractor -input-dir ota -output_dir ota_new -payload payload_working.bin

        rm -rf ota
        mv ota_new ota

        rm payload_working.bin
    ) &
done
wait

# Prompt to run "extract-blobs.sh"
read -p "Do you want to extract blobs? (y/n): " choice
if [ "$choice" == "y" ]; then
    ./extract-blobs.sh
fi

echo "Done"