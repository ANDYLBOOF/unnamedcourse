#set working dir, where all compiled verilog goes
vlib work

# Compile Verilog files
vlog part1.v

# Simulate the design
vsim part1

log {/*}

# Test case 1: both input and carry in are 0
# Objective: ensure output is 0 when all inputs are 0

# input a
force {SW[7]} 0
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0

# input b
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0

# carry in
force {SW[8]} 0

run 10ns