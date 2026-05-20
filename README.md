# 🚀 High-Performance Triple DES (3DES) Hardware Accelerator with Pipelining

A comprehensive Triple DES (Data Encryption Standard) IP Core designed and implemented in **Verilog HDL**. This project includes both traditional **Sequential (FSM-based)** models and optimized **Data-Driven Pipelined** architectures to achieve high throughput on FPGA/ASIC platforms. Developed using Intel Quartus Prime and verified via ModelSim.

[![Language](https://img.shields.io/badge/Language-Verilog%20HDL-orange.svg)]()
[![Tool](https://img.shields.io/badge/EDA%20Tool-Quartus%20II%20%2F%20ModelSim-blue.svg)]()
[![Target](https://img.shields.io/badge/Target-FPGA%20%2F%20ASIC-red.svg)]()

---

## 📌 Project Features (Đặc điểm Nổi bật)

* **Algorithmic Correctness:** Implements standard **Encrypt-Decrypt-Encrypt (EDE)** for encryption and **Decrypt-Encrypt-Decrypt (DED)** for decryption.
* **Dual-Architecture Implementation:**
  1. **Sequential Architecture (`tdes_encrypt.v` / `tdes_decrypt.v`):** Guided by a centralized Finite State Machine (FSM). Processes a 64-bit block every 51 clock cycles.
  2. **Pipelined Architecture (`tdes_encrypt_pipeline.v` / `tdes_decrypt_pipeline.v`):** Replaces the top FSM with pipeline isolation registers. Allows all three inner DES blocks to operate concurrently, shifting output generation down to **1 block every 17 clock cycles** (a **3x Throughput Speedup**).
* **Hard-wired Key Scheduling:** Uses static, hardware-friendly combinational logic structures (`function`) to calculate 16 round keys ($K_1$ to $K_{16}$) almost instantaneously, avoiding routing congestion and saving critical Look-Up Tables (LUTs).

---

## 📁 Project Structure (Cấu trúc Thư mục và File)

This repository is organized as a flat-structured direct Quartus & ModelSim project workspace:

### 🌟 Core Top-Level Modules
* `tripleDES.v` - Standard baseline system integrating sequential encryption and decryption paths.
* `tripleDES_pipeline.v` - Fully optimized Top-level entity utilizing pipelined hardware acceleration.

### 🔐 3DES Layer Accelerators
* `tdes_encrypt.v` / `tdes_decrypt.v` - Baseline sequential 3DES blocks (FSM-driven).
* `tdes_encrypt_pipeline.v` / `tdes_decrypt_pipeline.v` - Optimized data-driven pipelined 3DES processing stages.

### 📐 Sub-level Single DES Modules & Cryptographic Primitives
* `des_encrypt.v` / `des_decrypt.v` - Core Single DES engines handling the 16 Feistel rounds.
* `f_funct.v` - The Feistel Function ($F$) implementing core mixing logic.
* `sfunct.v` - The 8 non-linear substitution S-Boxes generating cryptographic confusion.
* `e_expand.v` - Expansion permutation (E-box) expanding 32-bit halves into 48-bit blocks.
* `p_permutation.v` - Straight permutation (P-box) shuffling 32-bit blocks.
* `IP.v` / `IP_1.v` - Initial Permutation ($IP$) and Inverse Initial Permutation ($IP^{-1}$).
* `pc1.v` / `pc2.v` - Permuted Choice 1 and 2 for the Key Schedule.

### 🧪 Verification & Simulation (Testbenches)
* `tripleDES_tb.v` - System-level testbench for verifying EDE-DED data loops.
* `tdes_encrypt_tb.v` / `tdes_decrypt_tb.v` - Intermediate-level testbenches for 3DES modules.
* `encrypt_tb.v` / `decrypt_tb.v` - Low-level testbenches for Single DES verification.

### ⚙️ EDA Project Files
* `tripleDES.qpf` / `tripleDES.qsf` - Intel Quartus Prime Project & Settings configurations.
* `FinalProject.mpf` / `FinalProject.cr.mti` - ModelSim Project and compilation database files.

---

## 📊 Synthesis & Timing Performance

The design was compiled using Intel Quartus Prime Timing Analyzer (evaluated on the Slow Model Timing Corner).

| Module Name | Architecture Mode | Max Clock Frequency ($F_{max}$) | Processing Throughput |
| :--- | :--- | :--- | :--- |
| `tdes_encrypt` | Sequential (FSM) | **117.25 MHz** | 1 block per 51 clock cycles |
| `tdes_decrypt` | Sequential (FSM) | **122.26 MHz** | 1 block per 51 clock cycles |
| `tripleDES` | **Pipelined (Optimized)** | **118.65 MHz** | **1 block per 17 clock cycles** |

> 💡 **Architectural Insight:** By inserting pipeline registers at the interface between sub-cores, the critical timing path inside the Feistel loops remains isolated. This guarantees that the system achieves a **300% throughput gain** for streaming operations while preserving a highly stable operating frequency ($\approx 118\text{ MHz}$).

---

## 🛠️ Simulation and Deployment Workflow

### Running the Project in Quartus:
1. Open Intel Quartus Prime.
2. Select **File -> Open Project** and choose `tripleDES.qpf`.
3. To change the compiled architecture target, right-click either `tripleDES.v` or `tripleDES_pipeline.v` in the Project Navigator and select **Set as Top-Level Entity**.
4. Click **Start Compilation** (`Ctrl+L`).

### Simulating in ModelSim:
1. Launch ModelSim and open the workspace via **File -> Open** -> `FinalProject.mpf`.
2. Ensure files are compiled by right-clicking the workspace and selecting **Compile -> Compile All**.
3. Go to the Library tab, expand the `work` directory, right-click `tripleDES_tb` and choose **Simulate**.
4. Type `run -all` in the transcript command line to monitor the automated verification process.

---

## 📝 Author

* **Dương Phúc Đạt** - Class of 2023, Department of Computer Engineering, University of Information Technology (UIT), VNU-HCM.