# 4-bit ALU using Verilog

## Overview
A 4-bit Arithmetic Logic Unit (ALU) designed using Verilog HDL.

The ALU performs:
- Addition
- Subtraction
- AND
- OR
- XOR

## Operation Table

| OP | Operation |
|----|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |

## Inputs and Output

- A: 4-bit input
- B: 4-bit input
- OP: 3-bit operation selector
- Result: 4-bit output

## Tools Used

- Verilog HDL
- Icarus Verilog
- EDA Playground
- EPWave

## Testing

The ALU was tested with multiple input combinations, including zero values, maximum values, arithmetic operations, logic operations, and an invalid operation code.

## Simulation

The output waveform was verified using EPWave.

## Project Structure

- `alu.v` — ALU design
- `testbench.sv` — Testbench
- `waveform.png` — Simulation waveform
