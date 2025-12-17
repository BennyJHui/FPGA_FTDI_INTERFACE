`timescale 1ns / 1ps

module fsmplease(
    input wire ui_clk,
    input wire ui_clk_sync_rst,

    // ----- tx ----- //
    output reg [63:0] wr_data_i, 
    output reg wr_en_i,
    input wire wr_fifo_full_o,

    // ----- rx ----- //
    output reg rd_en_i,
    input wire [63:0] rd_data_o,
    input wire rd_fifo_empty_o,
    input wire rd_fifo_data_valid_o,

    // ----- mig ----- //\
    input wire app_rdy,
    input wire app_wdf_rdy,
    input wire app_rd_data_valid,
    input wire init_calib_complete,
    input wire [127:0] app_rd_data,
    output reg app_en,
    output reg app_wdf_wren,
    output reg [2:0] app_cmd,
    output reg [28:0] app_addr,
    output reg [127:0] app_wdf_data
);

    localparam IDLE = 4'b0000;
    localparam CHECK = 4'b0001;
    localparam CHECK_DATA = 4'b0010;
    localparam CHECK_CMD = 4'b0011;
    localparam WRITE_REG = 4'b0100;
    localparam READ_REG = 4'b0101;
    localparam WRITE_DONE = 4'b0110;
    localparam READ_DONE = 4'b0111;
    localparam OUTPUT_DATA = 4'b1000;
    localparam SHIFT_SET = 4'b1010;
    
    localparam CMD_WRITE = 3'b000;
    localparam CMD_READ  = 3'b001;

    localparam WR_REG = 4'b1001;
    localparam RD_REG  = 4'b1010;

    reg [63:0] shift_data_sel;

    reg [63:0] data_storage;
    reg [255:0] data_read_from_memory;
    reg [3:0] state = IDLE;
    reg [31:0] select_data;
    reg [7:0] shift_count;

    always @(posedge ui_clk) begin
        if (ui_clk_sync_rst) begin
            rd_en_i <= 0;
            wr_en_i <= 0;
            app_en <= 0;
            app_wdf_wren <= 0;
            data_storage <= 0;
            data_read_from_memory <= 0;
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    rd_en_i <= 0;
                    wr_en_i <= 0;
                    app_en <= 0;
                    app_wdf_wren <= 0;

                    if (init_calib_complete) begin
                        state <= CHECK;
                    end
                end

                CHECK: begin
                    if (!rd_fifo_empty_o) begin
                        rd_en_i <= 1;
                        state <= CHECK_DATA;
                    end else begin
                        state <= CHECK;
                    end
                end

                CHECK_DATA: begin
                    rd_en_i <= 0;
                    wr_en_i <= 0;
                    if (rd_fifo_data_valid_o) begin
                        shift_data_sel <= rd_data_o;
                        state <= CHECK_CMD;
                    end
                end

                CHECK_CMD: begin
                    case(data_storage[63:60])
                        WR_REG: state <= WRITE_REG;

                        RD_REG: state <= READ_REG;

                        default: state <= IDLE;
                    endcase
                end

                WRITE_REG: begin
                    if (app_rdy & app_wdf_rdy) begin
                        app_en <= 1;
                        app_wdf_wren <= 1;
                        app_addr <= {16'b0, data_storage[59:48]};
                        app_cmd <= CMD_WRITE;
                        app_wdf_data <= {192'b0, WR_REG, data_storage[59:16], 16'b0};
                        state <= WRITE_DONE;
                    end                    
                end

                READ_REG: begin
                    if (app_rdy) begin
                        app_en <= 1;
                        app_addr <= {16'b0, data_storage[59:48]};
                        app_cmd <= CMD_READ;
                        state <= READ_DONE;
                    end
                end

                WRITE_DONE: begin
                    if (app_rdy & app_en) begin
                    app_en <= 0;
                    end

                    if (app_wdf_rdy & app_wdf_wren) begin
                    app_wdf_wren <= 0;
                    end

                    if (~app_en & ~app_wdf_wren) begin
                    state <= IDLE;
                    end
                end

                READ_DONE: begin
                    if (app_rdy & app_en) begin
                        app_en <= 0;
                    end

                    if (app_rd_data_valid) begin
                        data_read_from_memory <= app_rd_data;
                        state <= SHIFT_SET;
                        shift_count <= 0;
                    end                    
                end

                SHIFT_SET: begin
                    if ((data_read_from_memory[255:252] == 4'b1001) || (data_read_from_memory[255:252] == 4'b1010)) begin
                        select_data <= data_read_from_memory[239:208];
                        state <= OUTPUT_DATA;
                    end else if (shift_count == 8'd255) begin
                        select_data <= 0;
                        state <= IDLE;
                    end else begin
                        data_read_from_memory <= data_read_from_memory << 1;
                        shift_count <= shift_count + 1;
                        state <= SHIFT_SET;
                    end
                end

                OUTPUT_DATA: begin
                    if (!wr_fifo_full_o) begin
                        wr_en_i <= 1;
                        wr_data_i <= {4'b1010, app_addr[11:0], select_data, 16'b0};
                        state <= IDLE;
                    end 
                end 

                default: state <= IDLE;
            endcase
        end
    end

endmodule
