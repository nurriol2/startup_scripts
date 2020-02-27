# Repository Initialization Automation #

Automatically create a Github repository for a project.
The repo will contain template files for a basic Python based project.


From anywhere on disk use the alias:
`new_project your-project-name` to create the `your-project-name` repository

*As of right now, the template files (e.g. .gitignore) are for Python projects*

# TODO #
- Add project language selection
  - [] Python
  - [] Java

# FIX #
- $PATH variable in .bash_profile contains /path/to/shell/script but the shell script needs to be sourced every time a new shell session is started.
  - *Workaround* in .bash_profile added alias:
  `alias new_project="source /path/to/shell/script; shell_fn_call"`
    - on macOS 10.12 and higher, .bash_profile needs to be updated
    - on other Linux systems, it is .bashrc that needs to be updated
