# Nextflow Learning Log

## Day 1 
### Installed
- Java 17 (OpenJDK) via apt
- Nextflow 26.10.0 via curl script

### Learned
- Process structure: input / output / script
- Channels: Channel.of, Channel.from, Channel.fromList
- Operators: map, filter, view
- Chaining processes: process2(process1.out)
- Debug flags: -with-trace, -with-report, -with-dag

### Built
- lesson1.nf: Hello world with names
- lesson2.nf: Channels + operators
- lesson3.nf: 3-stage pipeline (create → square → display)

### Key Lessons
- Nextflow code goes in .nf files, NEVER typed directly in terminal
- Always work in ~/ (Linux home), not /mnt/d/ (Windows drive)
- Use Tab completion to avoid hyphen/underscore typos

### Next Up
- nextflow.config 
- Docker containers
- DSL2 modules
