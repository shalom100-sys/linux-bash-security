# Base-03: Loops, Attempts & Process Control

In this stage, the focus shifts from manual checks to automated control flow.
The script manages repeated execution autonomously, enforces a limited number
of authentication attempts, and decides when to continue or terminate execution
based on internal state rather than user intervention.

This simulates real-world authentication behavior, where systems track state,
apply limits, and protect themselves from brute-force attempts.

## Key Concepts
- While loops and conditional execution
- Attempt counters and rate-limiting logic
- Exit codes as control signals
- State tracking using variables

## Objectives
- Implement a login mechanism with limited attempts
- Prevent infinite execution and uncontrolled input
- Simulate real-world authentication control logic

## Files
- `login_loop.sh` – Login script with attempt limitation and progressive delay
- `notes.txt` – Explanations, observations, and security reasoning

## Security Context
Limiting authentication attempts and introducing delays are fundamental security
mechanisms. Understanding how systems enforce (or fail to enforce) such limits
is essential for both defensive security and exploit research.

This module bridges basic Bash scripting and system-level logic.

