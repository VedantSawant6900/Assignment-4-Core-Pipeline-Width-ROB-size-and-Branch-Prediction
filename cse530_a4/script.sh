# /home/other/CSE530-FA2022/gem5/build_a4/build/X86/gem5.opt --outdir=m5out --redirect-stdout --redirect-stderr /home/grads/vzs5407/cse530_a4/cse530_a4_sys_config.py --cse530-core-config=C1 --binfile=/home/grads/vzs5407/cse530_a4/benchmarks/stanford/a.out  --l1i_size "4kB" --l1d_size "4kB" --l2_size "32kB"
# mv m5out/simout m5out/output/large_simout
# mv m5out/simerr m5out/output/large_simerr
# mv m5out/stats.txt m5out/output/large_stats.txt
# mv m5out/config.ini m5out/output/large_config.ini

#!/bin/bash

# Define replacements
replacements=("C1branch" "C2branch" "C3branch" "C4branch" "C5branch")

# Initialize command template
command="/home/other/CSE530-FA2022/gem5/build_a4/build/X86/gem5.opt --outdir=m5out --redirect-stdout --redirect-stderr /home/grads/vzs5407/cse530_a4/cse530_a4_sys_config.py --cse530-core-config=large --binfile=/home/grads/vzs5407/cse530_a4/benchmarks/stanford/a.out --l1i_size \"4kB\" --l1d_size \"4kB\" --l2_size \"32kB\""

# Loop over replacements
for replacement in "${replacements[@]}"; do
  # Replace "large" with the current replacement
  current_command="${command//large/$replacement}"
  
  # Execute the modified command
  eval "$current_command"
  
  # Move output files to specific directories with the replacement in the filename
  mv m5out/simout "m5out/output/${replacement}_simout"
  mv m5out/simerr "m5out/output/${replacement}_simerr"
  mv m5out/stats.txt "m5out/output/${replacement}_stats.txt"
  mv m5out/config.ini "m5out/output/${replacement}_config.ini"
done
