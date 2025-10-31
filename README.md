# VHDL 3-to-8 Decoder

This project implements a **3-to-8 line Decoder** in VHDL.  
The decoder takes a 3-bit input and produces an 8-bit output with one-hot encoding, controlled by an enable signal.

---

## Entity: Dec

### Ports

| Port   | Direction | Description |
|--------|-----------|-------------|
| en     | input     | Enable signal (active high) |
| input  | input     | 3-bit binary input |
| output | output    | 8-bit one-hot encoded output |

---

## Functionality

- When `en = '0'`, all outputs are `0`.  
- When `en = '1'`, the output corresponding to the binary value of `input` is set to `1` (one-hot), all others are `0`.

| Input | Output         |
|-------|----------------|
| "000" | 00000001       |
| "001" | 00000010       |
| "010" | 00000100       |
| "011" | 00001000       |
| "100" | 00010000       |
| "101" | 00100000       |
| "110" | 01000000       |
| "111" | 10000000       |

---

## Architecture

- Behavioral architecture is used.  
- A process block checks the `en` signal.  
- One-hot encoding is implemented with `if`/`elsif` statements.  

---

## Example Usage

Instantiate the `Dec` entity in a testbench and apply test vectors to `input` and `en` to observe the 8-bit `output`.

---

## Author
**Kimia Sadeghati**
