module fsm_torneira (
    input  wire clk,
    input  wire rst,
    input  wire sensor,
    output reg  valvula
);

    localparam OFF        = 2'b00;
    localparam DETECCAO   = 2'b01;
    localparam LIGADA     = 2'b10;
    localparam DESLIGANDO = 2'b11;

    reg [1:0] estado_atual;
    reg [1:0] proximo_estado;

    always @(posedge clk or posedge rst) begin
        if (rst)
            estado_atual <= OFF;
        else
            estado_atual <= proximo_estado;
    end

    always @(*) begin
        case (estado_atual)
            OFF: begin
                if (sensor)
                    proximo_estado = DETECCAO;
                else
                    proximo_estado = OFF;
            end

            DETECCAO: begin
                if (sensor)
                    proximo_estado = LIGADA;
                else
                    proximo_estado = OFF;
            end

            LIGADA: begin
                if (!sensor)
                    proximo_estado = DESLIGANDO;
                else
                    proximo_estado = LIGADA;
            end

            DESLIGANDO: begin
                if (sensor)
                    proximo_estado = LIGADA;
                else
                    proximo_estado = OFF;
            end

            default: proximo_estado = OFF;
        endcase
    end

    always @(*) begin
        case (estado_atual)
            OFF:        valvula = 1'b0;
            DETECCAO:   valvula = 1'b0;
            LIGADA:     valvula = 1'b1;
            DESLIGANDO: valvula = 1'b1;
            default:    valvula = 1'b0;
        endcase
    end
endmodule
