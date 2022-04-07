# Survey Analytics

Analytics for surveys in people and household level

## 1) Software to install

### R
- Download from https://cran.r-project.org/bin/windows/base
- Version used in this project: **4.1.3**

### RStudio
- Download last version from https://www.rstudio.com

### Python
- Install Miniconda https://docs.conda.io/en/latest/miniconda.html

## 2) Project in R

### Open project
1. Change `template-analytics.Rproj` to project folder name
2. Open "r" folder as a Project in RStudio.

### Project structure 
- **template-analytics** (root folder)
  - **data**
  - **script** 
  - **notebook** 

### Configure environment (renv)
1. Install: `install.packages("renv")` in base environment
2. Execute: `renv::restore()` (syncronize packeges from lockfile). 

## 3) Project in Python

### Python 
- Version: **3.9.7**
- Notebook: **Jupyter Lab**

### Project structure 
- **template-analytics** (root folder)
  - **data**
  - **script** 
  - **notebook** 
  
### Configure environment (conda)
- Execute: `conda create --name [environment_name]`

## 4) Version control (git)

### Useful commands
- Clone: `git clone https://github.com/ASLM-PE/Project_T`
- Add file to stash: `git add filename`
- Add all files to stash: `git add .`
- Commit `git commit -m "Comment"`
- Push `git push origin main`
- Pull `git pull origin main`
- New branch `git checkout -b new_branch`
- Move to other branch `git checkout branch`

## 5) Conventions

Conventions are useful to mantain high quality and order in project

### Git
- Make a meaningful comment in each commit which make sense with changes

### Comments
- There are special types of comments which helps us to find bugs or manage pending work quickly. 
- The most famous type is **TODO (something to be done)**
- [TODOr](https://github.com/dokato/todor) package will be used to manage those type of comments
- Install: install.packages("todor")
- **How to use it**: your code comment have to look like this: `# TODO your custom comment`
- **How to see TODO comments**: execute in console `todor::todor()` and comments will be displayed in **Markers** tab (close to **Console** tab)

### Coding style
- Define a common format or coding style it's important in order to avoid problems during **merging** process and to ensure **readability** and high **quality code** standards.
- [Styler](https://github.com/r-lib/styler) package format r files and notebooks in order to follow standard coding style
- Install: `install.packages("styler")`
- **How to use it**: Execute in RStudio: `Addins` -> `Style active file`

### Config
- Config files allows isolation of configuration which can be change in each environment
- **Install**: `install.packages("config")`
- **Where is located?** In `config.yml` file
- **How to read it?** Execute: `config::get("CONFIG_NAME")`
