{
  mkShellNoCC,
  typst,
  git,
}:
mkShellNoCC {
  name = "Cirriculum Vitae";
  DIRENV_LOG_FORMAT = "";
  packages = [typst git];
}
