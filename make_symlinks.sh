cat $PWD/device/motorola/tesla/proprietary-files.txt | grep -E '/mt6879/' | sed 's;mt6879/;;g' | sed 's;vendor/;;g' | sort | uniq
