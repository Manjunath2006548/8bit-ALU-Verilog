# 8-bit ALU using Verilog HDL

## 📌 Project Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.  
The ALU performs arithmetic and logical operations based on a 3-bit select input and generates status flags.

---

## ⚙️ Operations Supported

| Select (sel) | Operation |
|--------------|-----------|
| 000 | Addition (A + B) |
| 001 | Subtraction (A - B) |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT (A) |
| 110 | Left Shift |
| 111 | Right Shift |

---

## 🚩 Status Flags Implemented

- **Carry (C)** – Indicates unsigned overflow  
- **Zero (Z)** – Set when result equals zero  
- **Overflow (V)** – Indicates signed overflow  
- **Negative (N)** – Set when MSB of result is 1  

---

## 🧪 Verification

The design was verified using a self-written testbench including:

- Normal arithmetic operations  
- Overflow conditions  
- Negative result cases  
- Zero result validation  

Simulation was executed using Icarus Verilog.

---

## 📚 Learning Outcomes

- Understanding of combinational logic design  
- Implementation of arithmetic and logical circuits  
- Two’s complement subtraction  
- Signed vs unsigned overflow detection  
- Writing structured Verilog testbenches  
- Flag generation logic  

---

## 🛠 Tools Used

- Verilog HDL  
- Icarus Verilog  
- GTKWave  

---

## 📂 Project Structure

8bit_ALU_Verilog/
│
├── alu_8bit.v
├── alu_8bit_tb.v
└── README.md

---

## 👨‍💻 Author

Manjunath Bhaskar Hebbar  
B.Tech – VLSI  
Presidency University, Bangalore