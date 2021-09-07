# SetTheme-Nord.ps1
# For Kitty Portable
# By Romel Vera - @RomelSan

# Function.- Set a color theme inside all the Kitty Portable session files.
# Put this file inside Kitty "Sessions" Folder, and execute it using powershell.
# This will not overwrite your files, the output will be the filename plus _theme suffix.

# You must set your execution policy to RemoteSigned
# In Powershell as administrator type: Set-ExecutionPolicy RemoteSigned
# After usage you can revert the execution policy configuration, the default is: Set-ExecutionPolicy Restricted

# Set Your Color theme here:
# This is "Nord Theme"
$themeName = "Nord"
$col00 = "Colour0\216,222,233\"
$col01 = "Colour1\216,222,233\"
$col02 = "Colour2\46,52,64\"
$col03 = "Colour3\46,52,64\"
$col04 = "Colour4\46,52,64\"
$col05 = "Colour5\216,222,233\"
$col06 = "Colour6\59,66,82\"
$col07 = "Colour7\76,86,106\"
$col08 = "Colour8\191,97,106\"
$col09 = "Colour9\191,97,106\"
$col10 = "Colour10\163,190,140\"
$col11 = "Colour11\163,190,140\"
$col12 = "Colour12\235,203,139\"
$col13 = "Colour13\235,203,139\"
$col14 = "Colour14\129,161,193\"
$col15 = "Colour15\129,161,193\"
$col16 = "Colour16\180,142,173\"
$col17 = "Colour17\180,142,173\"
$col18 = "Colour18\136,192,208\"
$col19 = "Colour19\143,188,187\"
$col20 = "Colour20\229,233,240\"
$col21 = "Colour21\236,239,244\"

# Change Color Process
$filelist = get-childitem -Exclude *.ps1
foreach ($targetFile in $filelist) {
    $fileContent = (gc $targetFile) 
    $fileOut = $fileContent -replace "Colour0\\.*",$col00
    $fileOut = $fileOut -replace "Colour1\\.*",$col01
    $fileOut = $fileOut -replace "Colour2\\.*",$col02
    $fileOut = $fileOut -replace "Colour3\\.*",$col03
    $fileOut = $fileOut -replace "Colour4\\.*",$col04
    $fileOut = $fileOut -replace "Colour5\\.*",$col05
    $fileOut = $fileOut -replace "Colour6\\.*",$col06
    $fileOut = $fileOut -replace "Colour7\\.*",$col07
    $fileOut = $fileOut -replace "Colour8\\.*",$col08
    $fileOut = $fileOut -replace "Colour9\\.*",$col09
    $fileOut = $fileOut -replace "Colour10\\.*",$col10
    $fileOut = $fileOut -replace "Colour11\\.*",$col11
    $fileOut = $fileOut -replace "Colour12\\.*",$col12
    $fileOut = $fileOut -replace "Colour13\\.*",$col13
    $fileOut = $fileOut -replace "Colour14\\.*",$col14
    $fileOut = $fileOut -replace "Colour15\\.*",$col15
    $fileOut = $fileOut -replace "Colour16\\.*",$col16
    $fileOut = $fileOut -replace "Colour17\\.*",$col17
    $fileOut = $fileOut -replace "Colour18\\.*",$col18
    $fileOut = $fileOut -replace "Colour19\\.*",$col19
    $fileOut = $fileOut -replace "Colour20\\.*",$col20
    $fileOut = $fileOut -replace "Colour21\\.*",$col21

    $newFileName = "$targetFile" + "_" + "$themeName"
    Set-Content $newFileName -Value $fileOut
}

# Local testing
# (gc .\Winter%20Soldier) -replace "Colour0\\.*","Colour0\216,222,233\" | Out-File .\Winter%20Soldier_theme -encoding utf8
