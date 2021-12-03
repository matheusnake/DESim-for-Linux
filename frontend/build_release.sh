# Copyright (c) 2020 FPGAcademy
# Please see license at https://github.com/fpgacademy/DESim

# Create a version of java with DESim as a module
# This program should be run on Windows

#  ----------------------------------------------------------------------
#  Perform clean-up for previously module and java version
#  ----------------------------------------------------------------------

#  rd /S /Q dist

`rm -f -r dist`

#  ----------------------------------------------------------------------
#  Convert the DESim GUI source code into a Java module
#  ----------------------------------------------------------------------

#  copy src\module-info.java.txt src\module-info.java
`\cp src/module-info.java.txt src/module-info.java`

#  dir /s /b src\*.java > sources.txt 
`find ./src -type f -name *.java > sources.txt`

#  javac --module-path ../../Java/javafx-sdk-11.0.2/lib -d mods/DESim @sources.txt 
`/home/${USER}/.jdks/liberica-17.0.1/bin/javac  --module-path /home/${USER}/.jdks/liberica-17.0.1/lib -d ./mods/DESim @sources.txt `

#  ----------------------------------------------------------------------
#  Create a version of Java with the DESim module built-in
#  ----------------------------------------------------------------------

#  jlink --module-path "../../Java/javafx-jmods-11.0.2;mods" --add-modules DESim --output dist
`/home/${USER}/.jdks/liberica-17.0.1/bin/jlink --module-path "./mods:/home/${USER}/.jdks/liberica-17.0.1/jmods" --add-modules DESim --output dist`

#  ----------------------------------------------------------------------
#  Clean up temp files
#  ----------------------------------------------------------------------

#  del src\module-info.java
rm src/module-info.java
#  del sources.txt
rm sources.txt
#  rd /S /Q mods
rm -r mods

#  ----------------------------------------------------------------------
#  Pause command prompt to view the output from the above commands
#  ----------------------------------------------------------------------
