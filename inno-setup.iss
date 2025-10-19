#define WorkingDir "D:\a\reading-box\reading-box"
#define Platform GetEnv("PROCESSOR_ARCHITECTURE")

#if Pos("ARM64", UpperCase(Platform)) > 0
  #define BuildArch "arm64"
#else
  #define BuildArch "x64"
#endif

#define OutputDir "{#WorkingDir}\build\windows\{#BuildArch}\runner\Release\"

#pragma message "Detected platform: " + Platform
#pragma message "BuildArch: " + BuildArch
#pragma message "OutputDir: " + OutputDir
