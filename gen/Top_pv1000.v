// Generator : SpinalHDL v1.7.1    git head : 0444bb76ab1d6e19f0ec46bc03c4769776deb7d5
// Component : Top_pv1000
// Git hash  : a1364d6507f875a390897935665f24d0cac95e33

`timescale 1ns/1ps

module Top_pv1000 (
  input               reset_,
  input               clk_25Mhz,
  input               clk17,
  output              phyrst_,
  output     [1:0]    video,
  output              sync,
   inout     [2:0]    burst,
   inout              scl,
   inout              sda,
  input               TapeIn,
  output              TapeTest,
  input      [3:0]    Dial,
  output              led_red
);

  wire                Core18_areaDiv4_pv_io_HSync_;
  wire                Core18_areaDiv4_pv_io_VSync_;
  wire                Core18_areaDiv4_pv_io_CompSync_;
  wire                Core18_areaDiv4_pv_io_Pixel;
  wire                Core18_areaDiv4_pv_io_Burst;
  wire                Core18_areaDiv4_pv_io_AddSTB_;
  wire                Core18_pwm_io_led;
  wire                Core18_pwm_io_dark;
  wire                Core25_area40kHz_si_io_o_scl_write;
  wire                Core25_area40kHz_si_io_o_sda_write;
  wire                Core25_area40kHz_si_io_o_done;
  wire                Core25_area40kHz_si_io_o_error;
  wire                Core25_pwm_io_led;
  wire                Core25_pwm_io_dark;
  reg                 _zz_sda;
  reg                 _zz_scl;
  reg                 _zz_burst;
  wire                Core18_clk;
  wire                Core18_reset;
  wire                Core25_clk;
  wire                Core25_reset;
  reg        [1:0]    _zz_when_ClockDomain_l369;
  wire                when_ClockDomain_l369;
  reg                 when_ClockDomain_l369_regNext;
  wire                _zz_1;
  reg        [3:0]    Core18_c;
  wire                when_Top_pv1000_l46;
  reg        [2:0]    Core18_BurstOut;
  wire                when_Top_pv1000_l54;
  wire                when_Top_pv1000_l59;
  wire                when_Top_pv1000_l60;
  wire                when_Top_pv1000_l62;
  wire                when_Top_pv1000_l64;
  wire                when_Top_pv1000_l66;
  wire                when_Top_pv1000_l68;
  wire                when_Top_pv1000_l72;
  wire                when_Top_pv1000_l74;
  wire                when_Top_pv1000_l76;
  wire                when_Top_pv1000_l78;
  wire                when_Top_pv1000_l80;
  wire                when_Top_pv1000_l84;
  wire                when_Top_pv1000_l86;
  wire                when_Top_pv1000_l88;
  wire                when_Top_pv1000_l90;
  wire                when_Top_pv1000_l92;
  wire                when_Top_pv1000_l96;
  wire                when_Top_pv1000_l98;
  wire                when_Top_pv1000_l100;
  wire                when_Top_pv1000_l102;
  wire                when_Top_pv1000_l104;
  wire                when_Top_pv1000_l108;
  wire                when_Top_pv1000_l110;
  wire                when_Top_pv1000_l112;
  wire                when_Top_pv1000_l114;
  wire                when_Top_pv1000_l116;
  wire                when_Top_pv1000_l71;
  wire                when_Top_pv1000_l83;
  wire                when_Top_pv1000_l95;
  wire                when_Top_pv1000_l107;
  reg        [8:0]    _zz_when_ClockDomain_l369_1;
  wire                when_ClockDomain_l369_1;
  reg                 when_ClockDomain_l369_1_regNext;
  wire                _zz_2;
  wire                Core25_area40kHz_SkipOSC;
  wire                when_Top_pv1000_l135;
  wire                when_Top_pv1000_l138;

  pv1000 Core18_areaDiv4_pv (
    .io_HSync_    (Core18_areaDiv4_pv_io_HSync_   ), //o
    .io_VSync_    (Core18_areaDiv4_pv_io_VSync_   ), //o
    .io_CompSync_ (Core18_areaDiv4_pv_io_CompSync_), //o
    .io_Pixel     (Core18_areaDiv4_pv_io_Pixel    ), //o
    .io_Burst     (Core18_areaDiv4_pv_io_Burst    ), //o
    .io_AddSTB_   (Core18_areaDiv4_pv_io_AddSTB_  ), //o
    .Core18_clk   (Core18_clk                     ), //i
    .Core18_reset (Core18_reset                   ), //i
    ._zz_1        (_zz_1                          )  //i
  );
  LedGlow Core18_pwm (
    .io_led       (Core18_pwm_io_led ), //o
    .io_dark      (Core18_pwm_io_dark), //o
    .Core18_clk   (Core18_clk        ), //i
    .Core18_reset (Core18_reset      )  //i
  );
  Si5351 Core25_area40kHz_si (
    .io_o_scl_write (Core25_area40kHz_si_io_o_scl_write), //o
    .io_o_sda_write (Core25_area40kHz_si_io_o_sda_write), //o
    .io_i_scl       (scl                               ), //i
    .io_i_sda       (sda                               ), //i
    .io_i_skip      (1'b0                              ), //i
    .io_o_done      (Core25_area40kHz_si_io_o_done     ), //o
    .io_o_error     (Core25_area40kHz_si_io_o_error    ), //o
    .Core25_clk     (Core25_clk                        ), //i
    .Core25_reset   (Core25_reset                      ), //i
    ._zz_1          (_zz_2                             )  //i
  );
  LedGlow_1 Core25_pwm (
    .io_led       (Core25_pwm_io_led ), //o
    .io_dark      (Core25_pwm_io_dark), //o
    .Core25_clk   (Core25_clk        ), //i
    .Core25_reset (Core25_reset      )  //i
  );
  assign burst = _zz_burst ? Core18_BurstOut : 3'bzzz;
  assign scl = _zz_scl ? 1'b0 : 1'bz;
  assign sda = _zz_sda ? 1'b0 : 1'bz;
  always @(*) begin
    _zz_sda = 1'b0;
    if(when_Top_pv1000_l135) begin
      _zz_sda = 1'b1;
    end
  end

  always @(*) begin
    _zz_scl = 1'b0;
    if(when_Top_pv1000_l138) begin
      _zz_scl = 1'b1;
    end
  end

  always @(*) begin
    _zz_burst = 1'b0;
    if(when_Top_pv1000_l54) begin
      _zz_burst = 1'b1;
    end
  end

  assign phyrst_ = 1'b1;
  assign Core25_clk = clk_25Mhz;
  assign Core25_reset = (! reset_);
  assign Core18_clk = clk17;
  assign when_ClockDomain_l369 = (_zz_when_ClockDomain_l369 == 2'b11);
  assign _zz_1 = (when_ClockDomain_l369_regNext || Core18_reset);
  assign sync = Core18_areaDiv4_pv_io_CompSync_;
  assign video = (Core18_areaDiv4_pv_io_Pixel ? 2'b10 : 2'b00);
  assign when_Top_pv1000_l46 = (Core18_c == 4'b0100);
  always @(*) begin
    Core18_BurstOut = 3'b000;
    if(when_Top_pv1000_l59) begin
      if(when_Top_pv1000_l60) begin
        Core18_BurstOut = 3'b111;
      end else begin
        if(when_Top_pv1000_l62) begin
          Core18_BurstOut = 3'b010;
        end else begin
          if(when_Top_pv1000_l64) begin
            Core18_BurstOut = 3'b000;
          end else begin
            if(when_Top_pv1000_l66) begin
              Core18_BurstOut = 3'b101;
            end else begin
              if(when_Top_pv1000_l68) begin
                Core18_BurstOut = 3'b111;
              end
            end
          end
        end
      end
    end else begin
      if(when_Top_pv1000_l71) begin
        if(when_Top_pv1000_l72) begin
          Core18_BurstOut = 3'b111;
        end else begin
          if(when_Top_pv1000_l74) begin
            Core18_BurstOut = 3'b111;
          end else begin
            if(when_Top_pv1000_l76) begin
              Core18_BurstOut = 3'b010;
            end else begin
              if(when_Top_pv1000_l78) begin
                Core18_BurstOut = 3'b000;
              end else begin
                if(when_Top_pv1000_l80) begin
                  Core18_BurstOut = 3'b101;
                end
              end
            end
          end
        end
      end else begin
        if(when_Top_pv1000_l83) begin
          if(when_Top_pv1000_l84) begin
            Core18_BurstOut = 3'b101;
          end else begin
            if(when_Top_pv1000_l86) begin
              Core18_BurstOut = 3'b111;
            end else begin
              if(when_Top_pv1000_l88) begin
                Core18_BurstOut = 3'b111;
              end else begin
                if(when_Top_pv1000_l90) begin
                  Core18_BurstOut = 3'b010;
                end else begin
                  if(when_Top_pv1000_l92) begin
                    Core18_BurstOut = 3'b000;
                  end
                end
              end
            end
          end
        end else begin
          if(when_Top_pv1000_l95) begin
            if(when_Top_pv1000_l96) begin
              Core18_BurstOut = 3'b000;
            end else begin
              if(when_Top_pv1000_l98) begin
                Core18_BurstOut = 3'b101;
              end else begin
                if(when_Top_pv1000_l100) begin
                  Core18_BurstOut = 3'b111;
                end else begin
                  if(when_Top_pv1000_l102) begin
                    Core18_BurstOut = 3'b111;
                  end else begin
                    if(when_Top_pv1000_l104) begin
                      Core18_BurstOut = 3'b010;
                    end
                  end
                end
              end
            end
          end else begin
            if(when_Top_pv1000_l107) begin
              if(when_Top_pv1000_l108) begin
                Core18_BurstOut = 3'b010;
              end else begin
                if(when_Top_pv1000_l110) begin
                  Core18_BurstOut = 3'b000;
                end else begin
                  if(when_Top_pv1000_l112) begin
                    Core18_BurstOut = 3'b101;
                  end else begin
                    if(when_Top_pv1000_l114) begin
                      Core18_BurstOut = 3'b111;
                    end else begin
                      if(when_Top_pv1000_l116) begin
                        Core18_BurstOut = 3'b111;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  assign when_Top_pv1000_l54 = (Core18_areaDiv4_pv_io_Burst || Core18_areaDiv4_pv_io_Pixel);
  assign when_Top_pv1000_l59 = (Core18_areaDiv4_pv_io_Burst || (Core18_areaDiv4_pv_io_Pixel && (Dial == 4'b0000)));
  assign when_Top_pv1000_l60 = (Core18_c == 4'b0000);
  assign when_Top_pv1000_l62 = (Core18_c == 4'b0001);
  assign when_Top_pv1000_l64 = (Core18_c == 4'b0010);
  assign when_Top_pv1000_l66 = (Core18_c == 4'b0011);
  assign when_Top_pv1000_l68 = (Core18_c == 4'b0100);
  assign when_Top_pv1000_l72 = (Core18_c == 4'b0000);
  assign when_Top_pv1000_l74 = (Core18_c == 4'b0001);
  assign when_Top_pv1000_l76 = (Core18_c == 4'b0010);
  assign when_Top_pv1000_l78 = (Core18_c == 4'b0011);
  assign when_Top_pv1000_l80 = (Core18_c == 4'b0100);
  assign when_Top_pv1000_l84 = (Core18_c == 4'b0000);
  assign when_Top_pv1000_l86 = (Core18_c == 4'b0001);
  assign when_Top_pv1000_l88 = (Core18_c == 4'b0010);
  assign when_Top_pv1000_l90 = (Core18_c == 4'b0011);
  assign when_Top_pv1000_l92 = (Core18_c == 4'b0100);
  assign when_Top_pv1000_l96 = (Core18_c == 4'b0000);
  assign when_Top_pv1000_l98 = (Core18_c == 4'b0001);
  assign when_Top_pv1000_l100 = (Core18_c == 4'b0010);
  assign when_Top_pv1000_l102 = (Core18_c == 4'b0011);
  assign when_Top_pv1000_l104 = (Core18_c == 4'b0100);
  assign when_Top_pv1000_l108 = (Core18_c == 4'b0000);
  assign when_Top_pv1000_l110 = (Core18_c == 4'b0001);
  assign when_Top_pv1000_l112 = (Core18_c == 4'b0010);
  assign when_Top_pv1000_l114 = (Core18_c == 4'b0011);
  assign when_Top_pv1000_l116 = (Core18_c == 4'b0100);
  assign when_Top_pv1000_l71 = (Core18_areaDiv4_pv_io_Pixel && (Dial == 4'b0001));
  assign when_Top_pv1000_l83 = (Core18_areaDiv4_pv_io_Pixel && (Dial == 4'b0010));
  assign when_Top_pv1000_l95 = (Core18_areaDiv4_pv_io_Pixel && (Dial == 4'b0011));
  assign when_Top_pv1000_l107 = (Core18_areaDiv4_pv_io_Pixel && (Dial == 4'b0100));
  assign TapeTest = (! Core18_pwm_io_led);
  assign when_ClockDomain_l369_1 = (_zz_when_ClockDomain_l369_1 == 9'h1f3);
  assign _zz_2 = (when_ClockDomain_l369_1_regNext || Core25_reset);
  assign Core25_area40kHz_SkipOSC = 1'b0;
  assign when_Top_pv1000_l135 = (! Core25_area40kHz_si_io_o_sda_write);
  assign when_Top_pv1000_l138 = (! Core25_area40kHz_si_io_o_scl_write);
  assign led_red = (! (Core25_pwm_io_led || Core25_area40kHz_si_io_o_done));
  assign Core18_reset = (! reset_);
  always @(posedge Core18_clk) begin
    if(Core18_reset) begin
      _zz_when_ClockDomain_l369 <= 2'b00;
      when_ClockDomain_l369_regNext <= 1'b0;
    end else begin
      _zz_when_ClockDomain_l369 <= (_zz_when_ClockDomain_l369 + 2'b01);
      if(when_ClockDomain_l369) begin
        _zz_when_ClockDomain_l369 <= 2'b00;
      end
      when_ClockDomain_l369_regNext <= when_ClockDomain_l369;
    end
  end

  always @(posedge Core18_clk) begin
    if(when_Top_pv1000_l46) begin
      Core18_c <= 4'b0000;
    end else begin
      Core18_c <= (Core18_c + 4'b0001);
    end
  end

  always @(posedge Core25_clk) begin
    if(Core25_reset) begin
      _zz_when_ClockDomain_l369_1 <= 9'h0;
      when_ClockDomain_l369_1_regNext <= 1'b0;
    end else begin
      _zz_when_ClockDomain_l369_1 <= (_zz_when_ClockDomain_l369_1 + 9'h001);
      if(when_ClockDomain_l369_1) begin
        _zz_when_ClockDomain_l369_1 <= 9'h0;
      end
      when_ClockDomain_l369_1_regNext <= when_ClockDomain_l369_1;
    end
  end


endmodule

module LedGlow_1 (
  output              io_led,
  output              io_dark,
  input               Core25_clk,
  input               Core25_reset
);

  wire       [4:0]    _zz_pwm;
  wire       [3:0]    _zz_pwm_1;
  wire       [4:0]    _zz_pwm_2;
  reg        [24:0]   cnt;
  reg        [4:0]    pwm;
  reg        [3:0]    pwmInput;
  wire                when_LedGlow_l19;
  wire                _zz_io_dark;
  reg                 _zz_io_dark_regNext;

  assign _zz_pwm_1 = pwm[3 : 0];
  assign _zz_pwm = {1'd0, _zz_pwm_1};
  assign _zz_pwm_2 = {1'd0, pwmInput};
  assign when_LedGlow_l19 = cnt[24];
  always @(*) begin
    if(when_LedGlow_l19) begin
      pwmInput = cnt[23 : 20];
    end else begin
      pwmInput = (~ cnt[23 : 20]);
    end
  end

  assign io_led = pwm[4];
  assign _zz_io_dark = cnt[24];
  assign io_dark = (_zz_io_dark && (! _zz_io_dark_regNext));
  always @(posedge Core25_clk) begin
    if(Core25_reset) begin
      cnt <= 25'h0;
      pwm <= 5'h0;
    end else begin
      cnt <= (cnt + 25'h0000001);
      pwm <= (_zz_pwm + _zz_pwm_2);
    end
  end

  always @(posedge Core25_clk) begin
    _zz_io_dark_regNext <= _zz_io_dark;
  end


endmodule

module Si5351 (
  output              io_o_scl_write,
  output              io_o_sda_write,
  input               io_i_scl,
  input               io_i_sda,
  input               io_i_skip,
  output reg          io_o_done,
  output              io_o_error,
  input               Core25_clk,
  input               Core25_reset,
  input               _zz_1
);
  localparam fsm_enumDef_BOOT = 3'd0;
  localparam fsm_enumDef_Init = 3'd1;
  localparam fsm_enumDef_LoadConfiguration = 3'd2;
  localparam fsm_enumDef_SendNext = 3'd3;
  localparam fsm_enumDef_Done = 3'd4;

  wire       [7:0]    configRom_io_addra;
  reg                 i2c_io_i_send;
  reg                 i2c_io_i_end;
  wire       [7:0]    configRom_io_douta;
  wire       [7:0]    i2c_io_o_data;
  wire                i2c_io_o_vaild;
  wire                i2c_io_o_sent;
  wire                i2c_io_o_error;
  wire                i2c_io_o_busy;
  wire                i2c_io_o_scl_write;
  wire                i2c_io_o_sda_write;
  reg        [7:0]    romAddr;
  wire       [6:0]    deviceAddr;
  reg        [7:0]    dataIn;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [2:0]    fsm_stateReg;
  reg        [2:0]    fsm_stateNext;
  wire                when_Si5351_l71;
  wire                when_Si5351_l84;
  wire                when_Si5351_l85;
  `ifndef SYNTHESIS
  reg [135:0] fsm_stateReg_string;
  reg [135:0] fsm_stateNext_string;
  `endif


  RamInit configRom (
    .io_ena       (1'b1                   ), //i
    .io_wea       (1'b0                   ), //i
    .io_addra     (configRom_io_addra[7:0]), //i
    .io_douta     (configRom_io_douta[7:0]), //o
    .io_dina      (8'h0                   ), //i
    .Core25_clk   (Core25_clk             ), //i
    .Core25_reset (Core25_reset           ), //i
    ._zz_1        (_zz_1                  )  //i
  );
  i2cMaster i2c (
    .io_i_addr      (deviceAddr[6:0]   ), //i
    .io_i_read      (1'b0              ), //i
    .io_i_send      (i2c_io_i_send     ), //i
    .io_i_end       (i2c_io_i_end      ), //i
    .io_i_stop      (1'b0              ), //i
    .io_i_data      (dataIn[7:0]       ), //i
    .io_o_data      (i2c_io_o_data[7:0]), //o
    .io_o_vaild     (i2c_io_o_vaild    ), //o
    .io_o_sent      (i2c_io_o_sent     ), //o
    .io_o_error     (i2c_io_o_error    ), //o
    .io_o_busy      (i2c_io_o_busy     ), //o
    .io_o_scl_write (i2c_io_o_scl_write), //o
    .io_o_sda_write (i2c_io_o_sda_write), //o
    .io_i_scl       (io_i_scl          ), //i
    .io_i_sda       (io_i_sda          ), //i
    .Core25_clk     (Core25_clk        ), //i
    .Core25_reset   (Core25_reset      ), //i
    ._zz_1          (_zz_1             )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_BOOT : fsm_stateReg_string = "BOOT             ";
      fsm_enumDef_Init : fsm_stateReg_string = "Init             ";
      fsm_enumDef_LoadConfiguration : fsm_stateReg_string = "LoadConfiguration";
      fsm_enumDef_SendNext : fsm_stateReg_string = "SendNext         ";
      fsm_enumDef_Done : fsm_stateReg_string = "Done             ";
      default : fsm_stateReg_string = "?????????????????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_BOOT : fsm_stateNext_string = "BOOT             ";
      fsm_enumDef_Init : fsm_stateNext_string = "Init             ";
      fsm_enumDef_LoadConfiguration : fsm_stateNext_string = "LoadConfiguration";
      fsm_enumDef_SendNext : fsm_stateNext_string = "SendNext         ";
      fsm_enumDef_Done : fsm_stateNext_string = "Done             ";
      default : fsm_stateNext_string = "?????????????????";
    endcase
  end
  `endif

  assign configRom_io_addra = romAddr;
  assign deviceAddr = 7'h60;
  assign io_o_scl_write = i2c_io_o_scl_write;
  assign io_o_sda_write = i2c_io_o_sda_write;
  assign io_o_error = i2c_io_o_error;
  always @(*) begin
    i2c_io_i_send = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_Init : begin
        if(!io_i_skip) begin
          i2c_io_i_send = 1'b1;
        end
      end
      fsm_enumDef_LoadConfiguration : begin
      end
      fsm_enumDef_SendNext : begin
      end
      fsm_enumDef_Done : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    i2c_io_i_end = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_Init : begin
      end
      fsm_enumDef_LoadConfiguration : begin
        if(i2c_io_o_sent) begin
          if(when_Si5351_l71) begin
            i2c_io_i_end = 1'b1;
          end
        end
      end
      fsm_enumDef_SendNext : begin
      end
      fsm_enumDef_Done : begin
        i2c_io_i_end = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_o_done = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_Init : begin
      end
      fsm_enumDef_LoadConfiguration : begin
      end
      fsm_enumDef_SendNext : begin
      end
      fsm_enumDef_Done : begin
        io_o_done = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_Init : begin
      end
      fsm_enumDef_LoadConfiguration : begin
      end
      fsm_enumDef_SendNext : begin
      end
      fsm_enumDef_Done : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_Init : begin
        if(io_i_skip) begin
          fsm_stateNext = fsm_enumDef_Done;
        end else begin
          fsm_stateNext = fsm_enumDef_LoadConfiguration;
        end
      end
      fsm_enumDef_LoadConfiguration : begin
        if(i2c_io_o_sent) begin
          if(when_Si5351_l71) begin
            fsm_stateNext = fsm_enumDef_Done;
          end else begin
            fsm_stateNext = fsm_enumDef_SendNext;
          end
        end
      end
      fsm_enumDef_SendNext : begin
        if(when_Si5351_l84) begin
          if(when_Si5351_l85) begin
            fsm_stateNext = fsm_enumDef_Done;
          end else begin
            fsm_stateNext = fsm_enumDef_LoadConfiguration;
          end
        end
      end
      fsm_enumDef_Done : begin
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_Init;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_BOOT;
    end
  end

  assign when_Si5351_l71 = (romAddr == 8'he8);
  assign when_Si5351_l84 = (! i2c_io_o_sent);
  assign when_Si5351_l85 = (romAddr == 8'he8);
  always @(posedge Core25_clk) begin
    if(_zz_1) begin
      if(Core25_reset) begin
      romAddr <= 8'h0;
      dataIn <= 8'h0;
      fsm_stateReg <= fsm_enumDef_BOOT;
      end else begin
        fsm_stateReg <= fsm_stateNext;
        case(fsm_stateReg)
          fsm_enumDef_Init : begin
            romAddr <= 8'h0;
            dataIn <= romAddr;
          end
          fsm_enumDef_LoadConfiguration : begin
            if(i2c_io_o_sent) begin
              dataIn <= configRom_io_douta;
            end
          end
          fsm_enumDef_SendNext : begin
            if(when_Si5351_l84) begin
              if(!when_Si5351_l85) begin
                romAddr <= (romAddr + 8'h01);
              end
            end
          end
          fsm_enumDef_Done : begin
          end
          default : begin
          end
        endcase
      end
    end
  end


endmodule

module LedGlow (
  output              io_led,
  output              io_dark,
  input               Core18_clk,
  input               Core18_reset
);

  wire       [4:0]    _zz_pwm;
  wire       [3:0]    _zz_pwm_1;
  wire       [4:0]    _zz_pwm_2;
  reg        [24:0]   cnt;
  reg        [4:0]    pwm;
  reg        [3:0]    pwmInput;
  wire                when_LedGlow_l19;
  wire                _zz_io_dark;
  reg                 _zz_io_dark_regNext;

  assign _zz_pwm_1 = pwm[3 : 0];
  assign _zz_pwm = {1'd0, _zz_pwm_1};
  assign _zz_pwm_2 = {1'd0, pwmInput};
  assign when_LedGlow_l19 = cnt[24];
  always @(*) begin
    if(when_LedGlow_l19) begin
      pwmInput = cnt[23 : 20];
    end else begin
      pwmInput = (~ cnt[23 : 20]);
    end
  end

  assign io_led = pwm[4];
  assign _zz_io_dark = cnt[24];
  assign io_dark = (_zz_io_dark && (! _zz_io_dark_regNext));
  always @(posedge Core18_clk) begin
    if(Core18_reset) begin
      cnt <= 25'h0;
      pwm <= 5'h0;
    end else begin
      cnt <= (cnt + 25'h0000001);
      pwm <= (_zz_pwm + _zz_pwm_2);
    end
  end

  always @(posedge Core18_clk) begin
    _zz_io_dark_regNext <= _zz_io_dark;
  end


endmodule

module pv1000 (
  output              io_HSync_,
  output              io_VSync_,
  output              io_CompSync_,
  output              io_Pixel,
  output              io_Burst,
  output              io_AddSTB_,
  input               Core18_clk,
  input               Core18_reset,
  input               _zz_1
);

  wire       [3:0]    _zz_dm;
  reg        [8:0]    VerticalCounter;
  reg        [6:0]    HorizontalCounter;
  reg        [3:0]    TimingCounter;
  reg        [7:0]    PixelShifter;
  wire                VSync_NTSC;
  wire                VDisplay_NTSC;
  wire                VPreDisplay_NTSC;
  wire                VReset_NTSC;
  wire                HSync;
  wire                Burst;
  wire                VerticalBlanking;
  wire                HDisplay;
  wire                DotClk8;
  wire                DotClk4;
  wire                AddSTB_;
  wire                when_pv1000_l48;
  wire                when_pv1000_l55;
  wire       [2:0]    vcOff;
  reg        [7:0]    d;
  wire                when_pv1000_l71;
  wire                when_pv1000_l73;
  wire                when_pv1000_l75;
  wire                when_pv1000_l77;
  wire                when_pv1000_l79;
  wire                when_pv1000_l81;
  wire                when_pv1000_l83;
  wire                when_pv1000_l85;
  wire                when_pv1000_l89;
  reg        [3:0]    c;
  wire                when_pv1000_l105;
  wire       [3:0]    dd;
  wire       [3:0]    dm;

  assign _zz_dm = (dd - 4'b0101);
  assign VSync_NTSC = ((9'h102 <= VerticalCounter) && (VerticalCounter <= 9'h106));
  assign VDisplay_NTSC = ((9'h024 <= VerticalCounter) && (VerticalCounter < 9'h0e3));
  assign VPreDisplay_NTSC = ((9'h023 <= VerticalCounter) && (VerticalCounter < 9'h0e3));
  assign VReset_NTSC = (VerticalCounter == 9'h106);
  assign HSync = ((7'h42 <= HorizontalCounter) && (HorizontalCounter <= 7'h46));
  assign Burst = ((7'h01 <= HorizontalCounter) && (HorizontalCounter <= 7'h05));
  assign VerticalBlanking = ((VerticalCounter <= 9'h00a) || (9'h0fc <= VerticalCounter));
  assign HDisplay = ((7'h06 <= HorizontalCounter) && (HorizontalCounter <= 7'h3d));
  assign DotClk8 = (TimingCounter == 4'b0000);
  assign DotClk4 = ((TimingCounter == 4'b0011) || (TimingCounter == 4'b0111));
  assign AddSTB_ = ((HDisplay && VDisplay_NTSC) ? (! DotClk8) : 1'b1);
  assign when_pv1000_l48 = (TimingCounter == 4'b0111);
  assign when_pv1000_l55 = (HorizontalCounter == 7'h46);
  assign vcOff = (VerticalCounter[2 : 0] + 3'b100);
  always @(*) begin
    d = 8'h0;
    if(when_pv1000_l71) begin
      d = 8'h38;
    end else begin
      if(when_pv1000_l73) begin
        d = 8'h4c;
      end else begin
        if(when_pv1000_l75) begin
          d = 8'hc6;
        end else begin
          if(when_pv1000_l77) begin
            d = 8'hc6;
          end else begin
            if(when_pv1000_l79) begin
              d = 8'hc6;
            end else begin
              if(when_pv1000_l81) begin
                d = 8'h64;
              end else begin
                if(when_pv1000_l83) begin
                  d = 8'h38;
                end else begin
                  if(when_pv1000_l85) begin
                    d = 8'h0;
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  assign when_pv1000_l71 = (vcOff == 3'b000);
  assign when_pv1000_l73 = (vcOff == 3'b001);
  assign when_pv1000_l75 = (vcOff == 3'b010);
  assign when_pv1000_l77 = (vcOff == 3'b011);
  assign when_pv1000_l79 = (vcOff == 3'b100);
  assign when_pv1000_l81 = (vcOff == 3'b101);
  assign when_pv1000_l83 = (vcOff == 3'b110);
  assign when_pv1000_l85 = (vcOff == 3'b111);
  assign when_pv1000_l89 = (! AddSTB_);
  assign io_Pixel = PixelShifter[7];
  assign io_Burst = (Burst && (! VerticalBlanking));
  assign io_CompSync_ = (! (HSync ^ VSync_NTSC));
  assign io_HSync_ = (! HSync);
  assign io_VSync_ = (! VSync_NTSC);
  assign io_AddSTB_ = AddSTB_;
  assign when_pv1000_l105 = (c == 4'b0100);
  assign dd = (4'b0010 + c);
  assign dm = ((4'b0100 < dd) ? _zz_dm : dd);
  always @(posedge Core18_clk) begin
    if(_zz_1) begin
      if(Core18_reset) begin
      VerticalCounter <= 9'h0;
      HorizontalCounter <= 7'h46;
      TimingCounter <= 4'b0000;
      end else begin
        if(when_pv1000_l48) begin
          TimingCounter <= 4'b0000;
        end else begin
          TimingCounter <= (TimingCounter + 4'b0001);
        end
        if(DotClk4) begin
          if(when_pv1000_l55) begin
            HorizontalCounter <= 7'h0;
            TimingCounter <= 4'b0000;
            if(VReset_NTSC) begin
              VerticalCounter <= 9'h0;
            end else begin
              VerticalCounter <= (VerticalCounter + 9'h001);
            end
          end else begin
            HorizontalCounter <= (HorizontalCounter + 7'h01);
          end
        end
      end
    end
  end

  always @(posedge Core18_clk) begin
    if(_zz_1) begin
      if(when_pv1000_l89) begin
        PixelShifter <= d;
      end else begin
        PixelShifter <= (PixelShifter <<< 1);
      end
      if(when_pv1000_l105) begin
        c <= 4'b0000;
      end else begin
        c <= (c + 4'b0001);
      end
    end
  end


endmodule

module i2cMaster (
  input      [6:0]    io_i_addr,
  input               io_i_read,
  input               io_i_send,
  input               io_i_end,
  input               io_i_stop,
  input      [7:0]    io_i_data,
  output     [7:0]    io_o_data,
  output reg          io_o_vaild,
  output reg          io_o_sent,
  output              io_o_error,
  output              io_o_busy,
  output              io_o_scl_write,
  output              io_o_sda_write,
  input               io_i_scl,
  input               io_i_sda,
  input               Core25_clk,
  input               Core25_reset,
  input               _zz_1
);
  localparam fsm_enumDef_1_BOOT = 4'd0;
  localparam fsm_enumDef_1_Wait_1 = 4'd1;
  localparam fsm_enumDef_1_Start = 4'd2;
  localparam fsm_enumDef_1_StopStart = 4'd3;
  localparam fsm_enumDef_1_SendAddr = 4'd4;
  localparam fsm_enumDef_1_GetSlaveACK = 4'd5;
  localparam fsm_enumDef_1_MasterACK = 4'd6;
  localparam fsm_enumDef_1_ReadByte = 4'd7;
  localparam fsm_enumDef_1_WriteByte = 4'd8;
  localparam fsm_enumDef_1_Error = 4'd9;
  localparam fsm_enumDef_1_End_1 = 4'd10;

  wire       [1:0]    _zz_clkCounter_valueNext;
  wire       [0:0]    _zz_clkCounter_valueNext_1;
  wire       [2:0]    _zz_bitCounter_valueNext;
  wire       [0:0]    _zz_bitCounter_valueNext_1;
  reg                 start;
  reg                 sent1;
  reg                 error;
  reg                 busy;
  wire       [7:0]    addr;
  reg                 scl_write;
  reg                 sda_write;
  reg        [7:0]    dataIn;
  reg                 clkCounter_willIncrement;
  reg                 clkCounter_willClear;
  reg        [1:0]    clkCounter_valueNext;
  reg        [1:0]    clkCounter_value;
  wire                clkCounter_willOverflowIfInc;
  wire                clkCounter_willOverflow;
  reg                 bitCounter_willIncrement;
  reg                 bitCounter_willClear;
  reg        [2:0]    bitCounter_valueNext;
  reg        [2:0]    bitCounter_value;
  wire                bitCounter_willOverflowIfInc;
  wire                bitCounter_willOverflow;
  wire       [2:0]    revBitCount;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [1:0]    _zz_when_State_l238;
  reg        [3:0]    fsm_stateReg;
  reg        [3:0]    fsm_stateNext;
  wire                when_State_l238;
  wire                when_I2C_l100;
  wire                when_I2C_l104;
  wire                when_I2C_l123;
  wire                when_I2C_l144;
  wire                when_I2C_l148;
  wire                when_I2C_l151;
  wire                when_I2C_l178;
  wire                when_I2C_l193;
  wire                when_I2C_l202;
  wire                when_I2C_l219;
  wire                when_I2C_l227;
  wire                when_I2C_l249;
  wire                when_I2C_l253;
  wire                when_I2C_l256;
  wire                when_StateMachine_l249;
  `ifndef SYNTHESIS
  reg [87:0] fsm_stateReg_string;
  reg [87:0] fsm_stateNext_string;
  `endif


  assign _zz_clkCounter_valueNext_1 = clkCounter_willIncrement;
  assign _zz_clkCounter_valueNext = {1'd0, _zz_clkCounter_valueNext_1};
  assign _zz_bitCounter_valueNext_1 = bitCounter_willIncrement;
  assign _zz_bitCounter_valueNext = {2'd0, _zz_bitCounter_valueNext_1};
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_1_BOOT : fsm_stateReg_string = "BOOT       ";
      fsm_enumDef_1_Wait_1 : fsm_stateReg_string = "Wait_1     ";
      fsm_enumDef_1_Start : fsm_stateReg_string = "Start      ";
      fsm_enumDef_1_StopStart : fsm_stateReg_string = "StopStart  ";
      fsm_enumDef_1_SendAddr : fsm_stateReg_string = "SendAddr   ";
      fsm_enumDef_1_GetSlaveACK : fsm_stateReg_string = "GetSlaveACK";
      fsm_enumDef_1_MasterACK : fsm_stateReg_string = "MasterACK  ";
      fsm_enumDef_1_ReadByte : fsm_stateReg_string = "ReadByte   ";
      fsm_enumDef_1_WriteByte : fsm_stateReg_string = "WriteByte  ";
      fsm_enumDef_1_Error : fsm_stateReg_string = "Error      ";
      fsm_enumDef_1_End_1 : fsm_stateReg_string = "End_1      ";
      default : fsm_stateReg_string = "???????????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_1_BOOT : fsm_stateNext_string = "BOOT       ";
      fsm_enumDef_1_Wait_1 : fsm_stateNext_string = "Wait_1     ";
      fsm_enumDef_1_Start : fsm_stateNext_string = "Start      ";
      fsm_enumDef_1_StopStart : fsm_stateNext_string = "StopStart  ";
      fsm_enumDef_1_SendAddr : fsm_stateNext_string = "SendAddr   ";
      fsm_enumDef_1_GetSlaveACK : fsm_stateNext_string = "GetSlaveACK";
      fsm_enumDef_1_MasterACK : fsm_stateNext_string = "MasterACK  ";
      fsm_enumDef_1_ReadByte : fsm_stateNext_string = "ReadByte   ";
      fsm_enumDef_1_WriteByte : fsm_stateNext_string = "WriteByte  ";
      fsm_enumDef_1_Error : fsm_stateNext_string = "Error      ";
      fsm_enumDef_1_End_1 : fsm_stateNext_string = "End_1      ";
      default : fsm_stateNext_string = "???????????";
    endcase
  end
  `endif

  always @(*) begin
    io_o_sent = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
      end
      fsm_enumDef_1_StopStart : begin
      end
      fsm_enumDef_1_SendAddr : begin
      end
      fsm_enumDef_1_GetSlaveACK : begin
        if(sent1) begin
          io_o_sent = 1'b1;
        end
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
      end
      fsm_enumDef_1_WriteByte : begin
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_o_vaild = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
      end
      fsm_enumDef_1_StopStart : begin
      end
      fsm_enumDef_1_SendAddr : begin
      end
      fsm_enumDef_1_GetSlaveACK : begin
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
        if(bitCounter_willOverflow) begin
          io_o_vaild = 1'b1;
        end
      end
      fsm_enumDef_1_WriteByte : begin
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
      end
    endcase
  end

  assign io_o_error = error;
  assign io_o_busy = busy;
  assign addr = {io_i_addr,io_i_read};
  assign io_o_scl_write = scl_write;
  assign io_o_sda_write = sda_write;
  assign io_o_data = dataIn;
  always @(*) begin
    clkCounter_willIncrement = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
      end
      fsm_enumDef_1_StopStart : begin
        clkCounter_willIncrement = 1'b1;
      end
      fsm_enumDef_1_SendAddr : begin
        if(start) begin
          clkCounter_willIncrement = 1'b1;
        end
      end
      fsm_enumDef_1_GetSlaveACK : begin
        clkCounter_willIncrement = 1'b1;
      end
      fsm_enumDef_1_MasterACK : begin
        clkCounter_willIncrement = 1'b1;
      end
      fsm_enumDef_1_ReadByte : begin
        if(when_I2C_l193) begin
          if(io_i_scl) begin
            clkCounter_willIncrement = 1'b1;
          end
        end else begin
          clkCounter_willIncrement = 1'b1;
        end
      end
      fsm_enumDef_1_WriteByte : begin
        if(when_I2C_l219) begin
          if(io_i_scl) begin
            clkCounter_willIncrement = 1'b1;
          end
        end else begin
          clkCounter_willIncrement = 1'b1;
        end
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
        clkCounter_willIncrement = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    clkCounter_willClear = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
        if(when_State_l238) begin
          clkCounter_willClear = 1'b1;
        end
      end
      fsm_enumDef_1_StopStart : begin
        if(when_I2C_l104) begin
          clkCounter_willClear = 1'b1;
        end
      end
      fsm_enumDef_1_SendAddr : begin
      end
      fsm_enumDef_1_GetSlaveACK : begin
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
      end
      fsm_enumDef_1_WriteByte : begin
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
      end
    endcase
  end

  assign clkCounter_willOverflowIfInc = (clkCounter_value == 2'b11);
  assign clkCounter_willOverflow = (clkCounter_willOverflowIfInc && clkCounter_willIncrement);
  always @(*) begin
    clkCounter_valueNext = (clkCounter_value + _zz_clkCounter_valueNext);
    if(clkCounter_willClear) begin
      clkCounter_valueNext = 2'b00;
    end
  end

  always @(*) begin
    bitCounter_willIncrement = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
      end
      fsm_enumDef_1_StopStart : begin
      end
      fsm_enumDef_1_SendAddr : begin
        if(start) begin
          if(when_I2C_l123) begin
            bitCounter_willIncrement = 1'b1;
          end
        end
      end
      fsm_enumDef_1_GetSlaveACK : begin
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
        if(when_I2C_l202) begin
          bitCounter_willIncrement = 1'b1;
        end
      end
      fsm_enumDef_1_WriteByte : begin
        if(when_I2C_l227) begin
          bitCounter_willIncrement = 1'b1;
        end
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    bitCounter_willClear = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
        if(when_State_l238) begin
          bitCounter_willClear = 1'b1;
        end
      end
      fsm_enumDef_1_StopStart : begin
        if(when_I2C_l104) begin
          bitCounter_willClear = 1'b1;
        end
      end
      fsm_enumDef_1_SendAddr : begin
      end
      fsm_enumDef_1_GetSlaveACK : begin
        if(when_I2C_l148) begin
          if(!error) begin
            if(!when_I2C_l151) begin
              if(!io_i_stop) begin
                bitCounter_willClear = 1'b1;
              end
            end
          end
        end
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
      end
      fsm_enumDef_1_WriteByte : begin
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
      end
    endcase
  end

  assign bitCounter_willOverflowIfInc = (bitCounter_value == 3'b111);
  assign bitCounter_willOverflow = (bitCounter_willOverflowIfInc && bitCounter_willIncrement);
  always @(*) begin
    bitCounter_valueNext = (bitCounter_value + _zz_bitCounter_valueNext);
    if(bitCounter_willClear) begin
      bitCounter_valueNext = 3'b000;
    end
  end

  assign revBitCount = (3'b111 - bitCounter_value);
  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
      end
      fsm_enumDef_1_Start : begin
      end
      fsm_enumDef_1_StopStart : begin
      end
      fsm_enumDef_1_SendAddr : begin
      end
      fsm_enumDef_1_GetSlaveACK : begin
      end
      fsm_enumDef_1_MasterACK : begin
      end
      fsm_enumDef_1_ReadByte : begin
      end
      fsm_enumDef_1_WriteByte : begin
      end
      fsm_enumDef_1_Error : begin
      end
      fsm_enumDef_1_End_1 : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_1_Wait_1 : begin
        if(io_i_send) begin
          fsm_stateNext = fsm_enumDef_1_Start;
        end
      end
      fsm_enumDef_1_Start : begin
        if(when_State_l238) begin
          fsm_stateNext = fsm_enumDef_1_SendAddr;
        end
      end
      fsm_enumDef_1_StopStart : begin
        if(when_I2C_l104) begin
          fsm_stateNext = fsm_enumDef_1_SendAddr;
        end
      end
      fsm_enumDef_1_SendAddr : begin
        if(start) begin
          if(bitCounter_willOverflow) begin
            fsm_stateNext = fsm_enumDef_1_GetSlaveACK;
          end
        end
      end
      fsm_enumDef_1_GetSlaveACK : begin
        if(when_I2C_l148) begin
          if(error) begin
            fsm_stateNext = fsm_enumDef_1_Error;
          end else begin
            if(when_I2C_l151) begin
              fsm_stateNext = fsm_enumDef_1_End_1;
            end else begin
              if(io_i_stop) begin
                fsm_stateNext = fsm_enumDef_1_StopStart;
              end else begin
                if(io_i_read) begin
                  fsm_stateNext = fsm_enumDef_1_ReadByte;
                end else begin
                  fsm_stateNext = fsm_enumDef_1_WriteByte;
                end
              end
            end
          end
        end
      end
      fsm_enumDef_1_MasterACK : begin
        if(when_I2C_l178) begin
          if(io_i_end) begin
            fsm_stateNext = fsm_enumDef_1_End_1;
          end else begin
            fsm_stateNext = fsm_enumDef_1_ReadByte;
          end
        end
      end
      fsm_enumDef_1_ReadByte : begin
        if(bitCounter_willOverflow) begin
          fsm_stateNext = fsm_enumDef_1_MasterACK;
        end
      end
      fsm_enumDef_1_WriteByte : begin
        if(bitCounter_willOverflow) begin
          fsm_stateNext = fsm_enumDef_1_GetSlaveACK;
        end
      end
      fsm_enumDef_1_Error : begin
        fsm_stateNext = fsm_enumDef_1_End_1;
      end
      fsm_enumDef_1_End_1 : begin
        if(when_I2C_l256) begin
          fsm_stateNext = fsm_enumDef_1_Wait_1;
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_1_Wait_1;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_1_BOOT;
    end
  end

  assign when_State_l238 = (_zz_when_State_l238 <= 2'b01);
  assign when_I2C_l100 = (clkCounter_value == 2'b01);
  assign when_I2C_l104 = (clkCounter_value == 2'b10);
  assign when_I2C_l123 = (clkCounter_value == 2'b10);
  assign when_I2C_l144 = (clkCounter_value == 2'b01);
  assign when_I2C_l148 = (clkCounter_value == 2'b10);
  assign when_I2C_l151 = (io_i_end && sent1);
  assign when_I2C_l178 = (clkCounter_value == 2'b10);
  assign when_I2C_l193 = (clkCounter_value == 2'b01);
  assign when_I2C_l202 = (clkCounter_value == 2'b10);
  assign when_I2C_l219 = (clkCounter_value == 2'b01);
  assign when_I2C_l227 = (clkCounter_value == 2'b10);
  assign when_I2C_l249 = (clkCounter_value == 2'b11);
  assign when_I2C_l253 = (clkCounter_value == 2'b00);
  assign when_I2C_l256 = (clkCounter_value == 2'b01);
  assign when_StateMachine_l249 = ((! (fsm_stateReg == fsm_enumDef_1_Start)) && (fsm_stateNext == fsm_enumDef_1_Start));
  always @(posedge Core25_clk) begin
    if(_zz_1) begin
      if(Core25_reset) begin
      start <= 1'b0;
      sent1 <= 1'b0;
      error <= 1'b0;
      busy <= 1'b0;
      scl_write <= 1'b1;
      sda_write <= 1'b1;
      dataIn <= 8'h0;
      clkCounter_value <= 2'b00;
      bitCounter_value <= 3'b000;
      fsm_stateReg <= fsm_enumDef_1_BOOT;
      end else begin
        clkCounter_value <= clkCounter_valueNext;
        bitCounter_value <= bitCounter_valueNext;
        fsm_stateReg <= fsm_stateNext;
        case(fsm_stateReg)
          fsm_enumDef_1_Wait_1 : begin
            start <= 1'b0;
            sent1 <= 1'b0;
            busy <= 1'b0;
            sda_write <= 1'b1;
            scl_write <= 1'b1;
            if(io_i_send) begin
              error <= 1'b0;
              busy <= 1'b1;
            end
          end
          fsm_enumDef_1_Start : begin
            sda_write <= 1'b0;
            if(when_State_l238) begin
              scl_write <= 1'b0;
            end
          end
          fsm_enumDef_1_StopStart : begin
            busy <= 1'b0;
            sent1 <= 1'b0;
            sda_write <= 1'b1;
            scl_write <= (! clkCounter_value[1]);
            if(when_I2C_l100) begin
              sda_write <= 1'b0;
            end
            if(when_I2C_l104) begin
              sda_write <= 1'b0;
              busy <= 1'b1;
            end
          end
          fsm_enumDef_1_SendAddr : begin
            sda_write <= addr[revBitCount];
            start <= 1'b1;
            if(start) begin
              scl_write <= (! clkCounter_value[1]);
              if(bitCounter_willOverflow) begin
                start <= 1'b0;
              end
            end
          end
          fsm_enumDef_1_GetSlaveACK : begin
            sda_write <= 1'b1;
            scl_write <= (! clkCounter_value[1]);
            if(when_I2C_l144) begin
              error <= io_i_sda;
            end
          end
          fsm_enumDef_1_MasterACK : begin
            if(io_i_end) begin
              sda_write <= 1'b1;
            end else begin
              sda_write <= 1'b0;
            end
            scl_write <= (! clkCounter_value[1]);
          end
          fsm_enumDef_1_ReadByte : begin
            sda_write <= 1'b1;
            scl_write <= (! clkCounter_value[1]);
            if(when_I2C_l193) begin
              dataIn <= {dataIn[6 : 0],io_i_sda};
            end
            if(bitCounter_willOverflow) begin
              start <= 1'b0;
            end
          end
          fsm_enumDef_1_WriteByte : begin
            sda_write <= io_i_data[revBitCount];
            scl_write <= (! clkCounter_value[1]);
            if(bitCounter_willOverflow) begin
              sent1 <= 1'b1;
              start <= 1'b0;
            end
          end
          fsm_enumDef_1_Error : begin
          end
          fsm_enumDef_1_End_1 : begin
            if(when_I2C_l249) begin
              scl_write <= 1'b0;
              sda_write <= 1'b0;
            end
            if(when_I2C_l253) begin
              scl_write <= 1'b1;
            end
            if(when_I2C_l256) begin
              sda_write <= 1'b1;
            end
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(posedge Core25_clk) begin
    if(_zz_1) begin
      case(fsm_stateReg)
        fsm_enumDef_1_Wait_1 : begin
        end
        fsm_enumDef_1_Start : begin
          _zz_when_State_l238 <= (_zz_when_State_l238 - 2'b01);
        end
        fsm_enumDef_1_StopStart : begin
        end
        fsm_enumDef_1_SendAddr : begin
        end
        fsm_enumDef_1_GetSlaveACK : begin
        end
        fsm_enumDef_1_MasterACK : begin
        end
        fsm_enumDef_1_ReadByte : begin
        end
        fsm_enumDef_1_WriteByte : begin
        end
        fsm_enumDef_1_Error : begin
        end
        fsm_enumDef_1_End_1 : begin
        end
        default : begin
        end
      endcase
      if(when_StateMachine_l249) begin
        _zz_when_State_l238 <= 2'b10;
      end
    end
  end


endmodule

module RamInit (
  input               io_ena,
  input      [0:0]    io_wea,
  input      [7:0]    io_addra,
  output     [7:0]    io_douta,
  input      [7:0]    io_dina,
  input               Core25_clk,
  input               Core25_reset,
  input               _zz_1
);

  reg        [7:0]    _zz_mem_port1;
  wire       [7:0]    _zz_mem_port;
  wire                _zz_mem_port_1;
  wire       [7:0]    _zz_io_douta;
  reg [7:0] mem [0:232];

  assign _zz_mem_port = io_addra;
  assign _zz_mem_port_1 = (io_ena && io_wea[0]);
  initial begin
    $readmemb("Top_pv1000.v_toplevel_Core25_area40kHz_si_configRom_mem.bin",mem);
  end
  always @(posedge Core25_clk) begin
    if(_zz_1) begin
      if(_zz_mem_port_1) begin
        mem[_zz_mem_port] <= io_dina;
      end
    end
  end

  always @(posedge Core25_clk) begin
    if(_zz_1) begin
      if(io_ena) begin
        _zz_mem_port1 <= mem[_zz_io_douta];
      end
    end
  end

  assign _zz_io_douta = io_addra;
  assign io_douta = _zz_mem_port1;

endmodule
