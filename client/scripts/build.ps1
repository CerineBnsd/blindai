# run third_party/attestationLib/release.ps1
$libraryBuildScript = ".\third_party\attestationLib\release.ps1"
&$libraryBuildScript
# copy Release/out/bin/release/QuoteVerification.dll to blindai/lib
New-Item -Path '.\blindai\lib' -ItemType Directory
Copy-Item -Path ".\third_party\attestationLib\Build\Release\out\bin\Release\QuoteVerification.dll" -Destination ".\blindai\lib"
Copy-Item -Path ".\third_party\attestationLib\Build\Release\out\lib\Release\*" -Destination ".\blindai\lib\"
Rename-Item -Path ".\blindai\lib\QuoteVerification.dll" -NewName "quoteverification.dll"