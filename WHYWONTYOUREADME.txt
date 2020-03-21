README

!!!This script is meant for the x-h1 and the sirui 50mm anamorphic!!!

This is a quick and dirty way to batch processs images for desqueezing. It works the following way.

1.Looks through all .jpg files and searches for undef in the exif information
2.Desqueezes all files that has undef in exif apeture information to 7980x4000
3.Jumps over every file that does not have undef in their exif information

Requirerments
windows
Imagemagick
exiftool(included) www.exiftool.org
write access to C:\tmp and C:\exiftool

Instructions:

Run prepimds.bat the first time you use the script.
move imds.bat to the folder you want to desquueze the images and excecute it

-------------------------------------------------------------------------------------------------------------------------
|Known isues:                                                                                                           |
|Since the sirui 50mm anamorphic does not have electronic contacts, the only way I                                      |
|found to identify the lens wast to look in exif information to see if the apeture is reported as undefined.            |
|This means that this script will try to desqueeze every file from ANY lens that does not have electronic contacts.     |
|If you shoot with other manual lenses this script will not work for you!                                               |
-------------------------------------------------------------------------------------------------------------------------