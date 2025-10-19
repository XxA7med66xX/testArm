#define WorkingDir "D:\a\reading-box\reading-box"
#define Platform GetEnv("PROCESSOR_ARCHITECTURE")

#define Arch1 GetEnv("PROCESSOR_ARCHITECTURE")
#define Arch2 GetEnv("PROCESSOR_ARCHITEW6432")

#if (Pos("ARM64", UpperCase(Arch1)) > 0) || (Pos("ARM64", UpperCase(Arch2)) > 0)
  #define BuildArch "arm64"
#else
  #define BuildArch "x64"
#endif

#pragma message "Arch1: " + Arch1
#pragma message "Arch2: " + Arch2
#pragma message "Detected BuildArch: " + BuildArch

#define OutputDir WorkingDir + "\build\windows\" + BuildArch + "\runner\Release\"
#pragma message "OutputDir: " + OutputDir
