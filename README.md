# Triple DES (3DES) Hardware Accelerator with Pipelining Optimization

A High-Performance Triple DES (Data Encryption Standard) Core implemented in **Verilog HDL**, featuring both a traditional **Sequential (FSM-based)** architecture and an advanced **Data-Driven Pipelined** architecture. Developed and simulated using Intel Quartus Prime and ModelSim.

[![Language](https://img.shields.io/badge/Language-Verilog%20HDL-orange.svg)]()
[![Tool](https://img.shields.io/badge/EDA%20Tool-QuestaSim%20II%20%2F%20ModelSim-blue.svg)]()
[![Target](https://img.shields.io/badge/Target-FPGA%20%2F%20ASIC-red.svg)]()

---

## Project Overview 

This repository contains the hardware design of a **Triple DES (3DES)** encryption and decryption accelerator. The project evolves from a standard sequential state-machine controller into a fully pipelined hardware core to dramatically increase data throughput for continuous data streams.

### Core Features:
* **Full 3DES Support:** Implements the standard **Encrypt-Decrypt-Encrypt (EDE)** sequence for encryption and **Decrypt-Encrypt-Decrypt (DED)** for decryption.
* **Hard-wired Key Schedule:** Key generation logic is optimized using hard-wired bit-manipulation combinations (`function`), saving critical FPGA routing resources and minimizing combinational path delay.
* **Dual Architecture Design:**
  1. **Sequential Architecture (Baseline):** Controlled via a hierarchical Finite State Machine (FSM). Processes 1 block of data (64-bit) every **51 clock cycles**.
  2. **Pipelined Architecture (Optimized):** Replaces the top-level FSM with pipeline isolation registers. Achieves **3x Throughput improvement**, spitting out a new 64-bit block every **17 clock cycles** once the pipeline is filled.

---

##  Architecture & Data Path 

### 1. Sequential Control vs Pipelining
In the baseline design, a **Central Controller (FSM Mẹ)** orchestrates the three internal DES sub-modules sequentially. Each sub-module takes 17 cycles to finish 16 Feistel rounds, making the total latency 51 cycles per block.

In the **Pipelined Design**, the FSM is completely eliminated. Isolation registers are placed between individual DES components, allowing **all 3 internal DES sub-cores to run concurrently** on staggered data blocks.

### 2. The Non-linear Core: S-Box Mapping
The security of this accelerator heavily relies on the 8 internal standard S-Boxes inside the Feistel Function ($F$). The design extracts the first and last bits to index the matrix rows and the 4 middle bits to index the columns, providing crucial non-linear cryptographic confusion.

---

##  Synthesis & Performance Metrics 

The design was synthesized using **Intel Quartus Timing Analyzer** (Slow Model Corner).

![Fmax](fmax.png)
| Module | Architecture Mode | Max Frequency ($F_{max}$) | Throughput Efficiency |
| :--- | :--- | :--- | :--- |
| `tdes_encrypt` | Sequential (FSM) | **117.25 MHz** | 1 block per 51 cycles |
| `tdes_decrypt` | Sequential (FSM) | **122.26 MHz** | 1 block per 51 cycles |
| `tripleDES` | **Pipelined (Optimized)** | **118.65 MHz** | **1 block per 17 cycles (3x Speedup)** |

### Key Takeaway:
Applying Pipelining **isolated the Critical Path** between the heavy sub-cores, allowing the top-level system to maintain a high clock speed ($118.65\text{ MHz}$) while gaining a **300% throughput performance boost** under continuous execution.

---

## 📁 Repository Structure 

```text
├── src/                   
│   ├── tripleDES.v       
│   ├── tdes_encrypt.v      
│   ├── tdes_decrypt.v      
│   ├── des_encrypt.v      
│   └── des_decrypt.v
│   ├── IP1.v       
│   ├── IP.v
│   ├── f_funct.v
│   ├── PC1.v
│   ├── PC2.v
├── sim/                   
│   ├── tdes_decrypt_tb.v
│   ├── tdes_encrypt_tb.v
│   ├── tb_tripleDES.v      
└── README.md

## COVERAGE TEST
![Coverage quetasim test](coverage.png)