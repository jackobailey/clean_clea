# clean_clea

`clean_clea` is an R project for identifying and correcting errors in the Constituency-Level Elections Archive (CLEA) and producing cleaned analysis-ready outputs.

The repository includes scripts for:

- wrangling raw CLEA data
- applying record-level corrections
- classifying simple electoral systems
- generating cleaned `.rds` outputs

The repository produces two main processed datasets:

- `clean_clea.rds`, a cleaned version of CLEA with corrected record-level information
- `simple_systems.rds`, a subset focused on elections held under simple electoral systems

Following Shugart and Taagepera (2017, Chapter 2, "Components of Simple Electoral Systems"), a simple system is one in which all seats are allocated in districts and the allocation rule respects the rank-size principle. In this project, `simple_systems.rds` is intended to capture the elections in CLEA that meet that definition.

Download the current processed datasets directly:

- [`clean_clea.rds`](https://raw.githubusercontent.com/jackobailey/clean_clea/main/_data/proc/clean_clea.rds)
- [`simple_systems.rds`](https://raw.githubusercontent.com/jackobailey/clean_clea/main/_data/proc/simple_systems.rds)
