## Práticas Verilog

Repositório contendo a solução e simulação das 4 práticas de Verilog desenvolvidas para a disciplina de Sistemas Embarcados.

---

### Ferramentas e Extensões Utilizadas

Para a execução, síntese lógica, simulação e documentação deste projeto, foram utilizadas as seguintes ferramentas:

| Ferramenta | Finalidade |
| :--- | :--- |
| **[VS Code](https://code.visualstudio.com/)** | Editor de código-fonte principal. |
| **[Verilog Highlight](https://marketplace.visualstudio.com/items?itemName=tzylee.verilog-hdl-support)** *(por tzylee)* | Extensão do VS Code para destaque de sintaxe da linguagem Verilog. |
| **[DigitalJS Integration](https://marketplace.visualstudio.com/items?itemName=yicaoyi.digitaljs)** *(por Yichao Yu)* | Extensão do VS Code que utiliza o Yosys para síntese lógica, exibição de esquemáticos interativos e geração de formas de onda. |
| **[Overleaf](https://www.overleaf.com/) / LaTeX** | Elaboração do relatório técnico formatado de acordo com as normas da ABNT/UFC. |

---

### Estrutura do Repositório

```text
praticas-verilog/
├── src/
│   ├── pratica1/             # Prática 01: Portas Lógicas Básicas (AND, OR, NOT, XOR)
│   │   ├── and_gate.v
│   │   ├── or_gate.v
│   │   ├── not_gate.v
│   │   └── xor_gate.v
│   ├── pratica2/             # Prática 02: Multiplexador 2:1
│   │   └── mux2to1.v
│   ├── pratica3/             # Prática 03: Registrador de 1 Bit (Flip-Flop D)
│   │   └── ff_d.v
│   └── pratica4/             # Prática 04: FSM - Torneira Automática
│       └── fsm_torneira.v
└── docs/
    └── figures/              # Capturas dos esquemáticos e formas de onda geradas no DigitalJS
        ├── p1_and.png
        ├── p1_or.png
        ├── p1_not.png
        ├── p1_xor.png
        ├── p2_mux.png
        ├── p3_ffd.png
        ├── p4_circuito_fsm.png
        └── p4_fsm.png