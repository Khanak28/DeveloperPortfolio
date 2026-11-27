| Component | Specification |
|---|---|
| CPU Model | AMD Ryzen 3 7320U with Radeon Graphics |
| Number of CPUs | 8 logical CPUs |
| Total RAM | 3.5 GiB |
| Available RAM | 3.1 GiB |
| Primary Storage | 1 TB virtual disk detected |
| Storage Type | Virtual Disk (physical SSD/HDD type not exposed by WSL2) || Operating System | Ubuntu 26.04 LTS |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |
## Binary Number Representation

### 1. Decimal to Binary Conversion

Convert decimal 75 into binary.

| Division | Quotient | Remainder |
|---|---|---|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Reading remainders from bottom to top:

**75 (Decimal) = 1001011 (Binary)**

### 2. Binary to Decimal Conversion

Convert binary 1001011 into decimal.

| Binary Digit | Power of 2 | Calculation |
|---|---|---|
| 1 | 2⁶ | 1 × 64 = 64 |
| 0 | 2⁵ | 0 × 32 = 0 |
| 0 | 2⁴ | 0 × 16 = 0 |
| 1 | 2³ | 1 × 8 = 8 |
| 0 | 2² | 0 × 4 = 0 |
| 1 | 2¹ | 1 × 2 = 2 |
| 1 | 2⁰ | 1 × 1 = 1 |

Adding all values:

64 + 8 + 2 + 1 = 75

**1001011 (Binary) = 75 (Decimal)**
