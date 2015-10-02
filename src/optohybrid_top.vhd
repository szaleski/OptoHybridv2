----------------------------------------------------------------------------------
-- Company:        IIHE - ULB
-- Engineer:       Thomas Lenzi (thomas.lenzi@cern.ch)
-- 
-- Create Date:    13:13:21 03/12/2015 
-- Design Name:    OptoHybrid v2
-- Module Name:    optohybrid_top - Behavioral 
-- Project Name:   OptoHybrid v2
-- Target Devices: xc6vlx130t-1ff1156
-- Tool versions:  ISE  P.20131013
-- Description: 
--
-- Top Level of the design
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.types_pkg.all;
use work.wb_pkg.all;

entity optohybrid_top is
port(

    --== VFAT2s Control ==--
    
    vfat2_mclk_p_o          : out std_logic_vector(2 downto 0);
    vfat2_mclk_n_o          : out std_logic_vector(2 downto 0);
    
    vfat2_resb_o            : out std_logic_vector(2 downto 0);
    vfat2_resh_o            : out std_logic_vector(2 downto 0);
    
    vfat2_t1_p_o            : out std_logic_vector(2 downto 0);
    vfat2_t1_n_o            : out std_logic_vector(2 downto 0);
    
    vfat2_scl_o             : out std_logic_vector(5 downto 0);
    vfat2_sda_io            : inout std_logic_vector(5 downto 0);
    
    vfat2_data_valid_p_i    : in std_logic_vector(5 downto 0);
    vfat2_data_valid_n_i    : in std_logic_vector(5 downto 0);
    
    --== VFAT2s Data ==--
    
    vfat2_0_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_0_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_0_data_out_p_i    : in std_logic;
    vfat2_0_data_out_n_i    : in std_logic;

    vfat2_1_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_1_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_1_data_out_p_i    : in std_logic;
    vfat2_1_data_out_n_i    : in std_logic;

    vfat2_2_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_2_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_2_data_out_p_i    : in std_logic;
    vfat2_2_data_out_n_i    : in std_logic;

    vfat2_3_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_3_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_3_data_out_p_i    : in std_logic;
    vfat2_3_data_out_n_i    : in std_logic;

    vfat2_4_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_4_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_4_data_out_p_i    : in std_logic;
    vfat2_4_data_out_n_i    : in std_logic;

    vfat2_5_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_5_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_5_data_out_p_i    : in std_logic;
    vfat2_5_data_out_n_i    : in std_logic;

    vfat2_6_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_6_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_6_data_out_p_i    : in std_logic;
    vfat2_6_data_out_n_i    : in std_logic;

    vfat2_7_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_7_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_7_data_out_p_i    : in std_logic;
    vfat2_7_data_out_n_i    : in std_logic;

    vfat2_8_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_8_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_8_data_out_p_i    : in std_logic;
    vfat2_8_data_out_n_i    : in std_logic;

    vfat2_9_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_9_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_9_data_out_p_i    : in std_logic;
    vfat2_9_data_out_n_i    : in std_logic;

    vfat2_10_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_10_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_10_data_out_p_i   : in std_logic;
    vfat2_10_data_out_n_i   : in std_logic;
    
    vfat2_11_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_11_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_11_data_out_p_i   : in std_logic;
    vfat2_11_data_out_n_i   : in std_logic;

    vfat2_12_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_12_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_12_data_out_p_i   : in std_logic;
    vfat2_12_data_out_n_i   : in std_logic;

    vfat2_13_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_13_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_13_data_out_p_i   : in std_logic;
    vfat2_13_data_out_n_i   : in std_logic;

    vfat2_14_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_14_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_14_data_out_p_i   : in std_logic;
    vfat2_14_data_out_n_i   : in std_logic;

    vfat2_15_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_15_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_15_data_out_p_i   : in std_logic;
    vfat2_15_data_out_n_i   : in std_logic;

    vfat2_16_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_16_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_16_data_out_p_i   : in std_logic;
    vfat2_16_data_out_n_i   : in std_logic;

    vfat2_17_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_17_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_17_data_out_p_i   : in std_logic;
    vfat2_17_data_out_n_i   : in std_logic;

    vfat2_18_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_18_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_18_data_out_p_i   : in std_logic;
    vfat2_18_data_out_n_i   : in std_logic;

    vfat2_19_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_19_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_19_data_out_p_i   : in std_logic;
    vfat2_19_data_out_n_i   : in std_logic;

    vfat2_20_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_20_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_20_data_out_p_i   : in std_logic;
    vfat2_20_data_out_n_i   : in std_logic;

    vfat2_21_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_21_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_21_data_out_p_i   : in std_logic;
    vfat2_21_data_out_n_i   : in std_logic;

    vfat2_22_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_22_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_22_data_out_p_i   : in std_logic;
    vfat2_22_data_out_n_i   : in std_logic;

    vfat2_23_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_23_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_23_data_out_p_i   : in std_logic;
    vfat2_23_data_out_n_i   : in std_logic;
    
    --== Memory ==--
    
--    multiboot_rs_o          : out std_logic_vector(1 downto 0);
    
--    flash_address_o         : out std_logic_vector(22 downto 0);
--    flash_data_io           : inout std_logic_vector(15 downto 0);
--    flash_chip_enable_b_o   : out std_logic;
--    flash_out_enable_b_o    : out std_logic;
--    flash_write_enable_b_o  : out std_logic;
--    flash_latch_enable_b_o  : out std_logic;
    
--    eprom_data_i            : inout std_logic_vector(7 downto 0);
--    eprom_clk_o             : out std_logic;
--    eprom_reset_b_o         : out std_logic;
--    eprom_chip_enable_b_o   : out std_logic;
--    eprom_tdi_o             : out std_logic;
--    eprom_tdo_i             : in std_logic;
--    eprom_tms_o             : out std_logic;
--    eprom_tck_o             : out std_logic;
    
    --== Clocking ==--
    
    clk_50MHz_i             : in std_logic;

    qpll_ref_40MHz_o        : out std_logic;
    qpll_reset_o            : out std_logic;
    qpll_locked_i           : in std_logic;
    qpll_error_i            : in std_logic;
    qpll_clk_p_i            : in std_logic;
    qpll_clk_n_i            : in std_logic;

    cdce_clk_p_i            : in std_logic;
    cdce_clk_n_i            : in std_logic;
    cdce_clk_pri_p_o        : out std_logic;
    cdce_clk_pri_n_o        : out std_logic;
    cdce_aux_out_o          : out std_logic;
    cdce_aux_in_i           : in std_logic;
    cdce_ref_o              : out std_logic;
    cdce_pwrdown_o          : out std_logic;
    cdce_sync_o             : out std_logic;
    cdce_locked_i           : in std_logic;
    cdce_sck_o              : out std_logic;
    cdce_mosi_o             : out std_logic;
    cdce_le_o               : out std_logic;
    cdce_miso_i             : in std_logic;
    
    --== Miscellaneous ==--

    adc_chip_select_o       : out std_logic;
    adc_din_i               : in std_logic;
    adc_dout_o              : out std_logic;
    adc_clk_o               : out std_logic;
    adc_eoc_i               : in std_logic;

    temp_clk_o              : out std_logic;
    temp_data_io            : inout std_logic;

    chipid_io               : inout std_logic;
    
--    hdmi_scl_io             : inout std_logic_vector(1 downto 0);
--    hdmi_sda_io             : inout std_logic_vector(1 downto 0);
--
--    tmds_d_p_io             : inout std_logic_vector(1 downto 0);
--    tmds_d_n_io             : inout std_logic_vector(1 downto 0);
--
--    tmds_clk_p_io           : inout std_logic;
--    tmds_clk_n_io           : inout std_logic;

    ext_clk_i               : in std_logic;
    ext_trigger_i           : in std_logic;
    ext_sbits_o             : out std_logic_vector(5 downto 0);
       
    --== GTX ==--
    
    mgt_112_clk0_p_i        : in std_logic;
    mgt_112_clk0_n_i        : in std_logic;
    
    mgt_112_rx_p_i          : in std_logic_vector(1 downto 0);
    mgt_112_rx_n_i          : in std_logic_vector(1 downto 0);
    mgt_112_tx_p_o          : out std_logic_vector(1 downto 0);
    mgt_112_tx_n_o          : out std_logic_vector(1 downto 0)
    
--    mgt_116_clk1_p_i        : in std_logic;
--    mgt_116_clk1_n_i        : in std_logic;
    
--    mgt_112_rx_p_i          : in std_logic_vector(3 downto 0);
--    mgt_112_rx_n_i          : in std_logic_vector(3 downto 0);
--    mgt_112_tx_p_o          : out std_logic_vector(3 downto 0);
--    mgt_112_tx_n_o          : out std_logic_vector(3 downto 0)
    
--    mgt_113_rx_p_i          : in std_logic_vector(3 downto 0);
--    mgt_113_rx_n_i          : in std_logic_vector(3 downto 0);
--    mgt_113_tx_p_o          : out std_logic_vector(3 downto 0);
--    mgt_113_tx_n_o          : out std_logic_vector(3 downto 0);
    
--    mgt_114_rx_p_i          : in std_logic_vector(3 downto 0);
--    mgt_114_rx_n_i          : in std_logic_vector(3 downto 0);
--    mgt_114_tx_p_o          : out std_logic_vector(3 downto 0);
--    mgt_114_tx_n_o          : out std_logic_vector(3 downto 0);
    
--    mgt_115_rx_p_i          : in std_logic_vector(3 downto 0);
--    mgt_115_rx_n_i          : in std_logic_vector(3 downto 0);
--    mgt_115_tx_p_o          : out std_logic_vector(3 downto 0);
--    mgt_115_tx_n_o          : out std_logic_vector(3 downto 0);
    
--    mgt_116_rx_p_i          : in std_logic_vector(3 downto 0);
--    mgt_116_rx_n_i          : in std_logic_vector(3 downto 0);
--    mgt_116_tx_p_o          : out std_logic_vector(3 downto 0);
--    mgt_116_tx_n_o          : out std_logic_vector(3 downto 0)

);
end optohybrid_top;

architecture Behavioral of optohybrid_top is

    --== Bufferes ==--
    
    signal vfat2_mclk_b         : std_logic; 
    signal vfat2_reset_b        : std_logic;
    signal vfat2_t1_b           : std_logic;
    signal vfat2_scl_b          : std_logic_vector(5 downto 0); 
    signal vfat2_sda_mosi_b     : std_logic_vector(5 downto 0); 
    signal vfat2_sda_miso_b     : std_logic_vector(5 downto 0); 
    signal vfat2_sda_tri_b      : std_logic_vector(5 downto 0); 
    signal vfat2_data_valid_b   : std_logic_vector(5 downto 0);
    signal vfat2_data_out_b     : std_logic_vector(23 downto 0);
    signal vfat2_sbits_b        : sbits_array_t(23 downto 0);
    
    signal adc_clk_b            : std_logic;
    signal adc_chip_select_b    : std_logic;
    signal adc_dout_b           : std_logic;
    signal adc_din_b            : std_logic;
    signal adc_eoc_b            : std_logic; 
    
    signal cdce_clk_b           : std_logic;
    signal cdce_clk_pri_b       : std_logic;
    signal cdce_aux_out_b       : std_logic;
    signal cdce_aux_in_b        : std_logic;
    signal cdce_ref_b           : std_logic;
    signal cdce_pwrdown_b       : std_logic;
    signal cdce_sync_b          : std_logic;
    signal cdce_locked_b        : std_logic;
    signal cdce_sck_b           : std_logic;
    signal cdce_mosi_b          : std_logic;
    signal cdce_le_b            : std_logic;
    signal cdce_miso_b          : std_logic;  

    signal chipid_mosi_b        : std_logic;
    signal chipid_miso_b        : std_logic;
    signal chipid_tri_b         : std_logic;
    
    signal qpll_ref_40MHz_b     : std_logic;
    signal qpll_reset_b         : std_logic;
    signal qpll_locked_b        : std_logic;
    signal qpll_error_b         : std_logic;
    signal qpll_clk_b           : std_logic;
    
    signal temp_clk_b           : std_logic;
    signal temp_data_mosi_b     : std_logic;
    signal temp_data_miso_b     : std_logic;
    signal temp_data_tri_b      : std_logic;
    
    --== Global signals & Clocks ==--

    signal clk_onboard          : std_logic;
    signal ref_clk              : std_logic;
    signal ext_clk              : std_logic;
    signal alt_gtx_clk          : std_logic;
    signal reset                : std_logic;
    signal clk_reg_reset        : std_logic;

    --== GTX ==--
    
    signal gtx_rec_clk          : std_logic;   
    signal gtx_tk_error         : std_logic;
    signal gtx_tr_error         : std_logic;
    
    --== VFAT2 ==--
    
    signal vfat2_t1             : t1_array_t(2 downto 0);
    signal vfat2_t1_lst         : t1_array_t(4 downto 0);
    signal vfat2_tk_data        : tk_data_array_t(23 downto 0);
    
    --== System ==--
    
    signal vfat2_tk_mask        : std_logic_vector(23 downto 0);
    signal vfat2_t1_sel         : std_logic_vector(2 downto 0);
    signal sys_loop_sbit        : std_logic_vector(4 downto 0);
    signal vfat2_reset          : std_logic;
    signal sys_clk_sel          : std_logic_vector(1 downto 0);
    signal sys_sbit_sel         : std5_array_t(5 downto 0);
    
    --== Wishbone signals ==--
    
    signal wb_m_req             : wb_req_array_t((WB_MASTERS - 1) downto 0);
    signal wb_m_res             : wb_res_array_t((WB_MASTERS - 1) downto 0);
    signal wb_s_req             : wb_req_array_t((WB_SLAVES - 1) downto 0);
    signal wb_s_res             : wb_res_array_t((WB_SLAVES - 1) downto 0);
	 
	 --== i2c signals ==--
	 signal en_i						: std_logic;
	 signal address_i					: std_logic_vector(6 downto 0);
	 signal rw_i						: std_logic;
	 signal data_i						: std_logic_vector(7 downto 0);
	 signal valid_o					: std_logic;
	 signal data_o						: std_logic_vector(7 downto 0);
	 signal error_o					: std_logic;
	 signal sda_miso_i				: std_logic;
	 signal sda_mosi_o				: std_logic;
	 signal sda_tri_o					: std_logic;
    
begin

    reset <= '0';
    
    pll_50MHz_inst : entity work.pll_50MHz port map(clk_50MHz_i => clk_50MHz_i, clk_40MHz_o => clk_onboard, clk_160MHz_o => alt_gtx_clk);
    
    --======================--
    --== External signals ==--
    --======================--    
    
    external_inst : entity work.external
    port map(
        ref_clk_i       => ref_clk,
        reset_i         => reset,
        ext_clk_i       => ext_clk_i,
        ext_clk_o       => ext_clk,
        ext_trigger_i   => ext_trigger_i,
        vfat2_t1_o      => vfat2_t1(2),
        vfat2_sbits_i   => vfat2_sbits_b,
        sys_sbit_sel_i  => sys_sbit_sel,
        ext_sbits_o     => ext_sbits_o        
    );
    
    --==============--
    --== Clocking ==--
    --==============--
    
    clocking_inst : entity work.clocking
    port map(
        reset_i         => reset,
        clk_onboard_i   => clk_onboard, 
        clk_gtx_rec_i   => gtx_rec_clk,
        clk_ext_i       => ext_clk,
        sys_clk_sel_i   => sys_clk_sel,
        ref_clk_o       => ref_clk,
        gtx_tk_error_i  => gtx_tk_error
    );
    
    --=====================--
    --== Wishbone switch ==--
    --=====================--
    
    wb_switch_inst : entity work.wb_switch
    port map(
        ref_clk_i   => ref_clk,
        reset_i     => reset,
        wb_req_i    => wb_m_req,
        wb_req_o    => wb_s_req,
        wb_res_i    => wb_s_res,
        wb_res_o    => wb_m_res
    );

    --=========--
    --== GTX ==--
    --=========--
    
    gtx_inst : entity work.gtx
    generic map(
        USE_CDCE        => true
    )
    port map(
		mgt_refclk_n_i  => mgt_112_clk0_n_i,
		mgt_refclk_p_i  => mgt_112_clk0_p_i,
        alt_gtx_clk_i   => alt_gtx_clk,
        ref_clk_i       => ref_clk,
		reset_i         => reset,
        rec_clk_o       => gtx_rec_clk,
        wb_mst_req_o    => wb_m_req(WB_MST_GTX),
        wb_mst_res_i    => wb_m_res(WB_MST_GTX),
        vfat2_tk_data_i => vfat2_tk_data,
        vfat2_tk_mask_i => vfat2_tk_mask,
        vfat2_t1_o      => vfat2_t1(0), 
        tk_error_o      => gtx_tk_error,
        tr_error_o      => gtx_tr_error,
		rx_n_i          => mgt_112_rx_n_i,
		rx_p_i          => mgt_112_rx_p_i,
		tx_n_o          => mgt_112_tx_n_o,
		tx_p_o          => mgt_112_tx_p_o
	);

    --===========--
    --== VFAT2 ==--
    --===========--
        
    vfat2_inst : entity work.vfat2      
    port map(        
        ref_clk_i           => ref_clk,
        reset_i             => reset,
        vfat2_reset_i       => vfat2_reset,
        vfat2_t1_lst_i      => vfat2_t1,
        vfat2_t1_lst_o      => vfat2_t1_lst,
        vfat2_t1_sel_i      => vfat2_t1_sel,
        vfat2_mclk_o        => vfat2_mclk_b,
        vfat2_reset_o       => vfat2_reset_b,
        vfat2_t1_o          => vfat2_t1_b,
        vfat2_data_out_i    => vfat2_data_out_b,
        vfat2_tk_data_o     => vfat2_tk_data,
        vfat2_sbits_i       => vfat2_sbits_b,
        sys_loop_sbit_i     => sys_loop_sbit,
        wb_slv_i2c_req_i    => wb_s_req(WB_SLV_I2C_5 downto WB_SLV_I2C_0),
        wb_slv_i2c_res_o    => wb_s_res(WB_SLV_I2C_5 downto WB_SLV_I2C_0),
        vfat2_scl_o         => vfat2_scl_b,
        vfat2_sda_miso_i    => vfat2_sda_miso_b,
        vfat2_sda_mosi_o    => vfat2_sda_mosi_b,
        vfat2_sda_tri_o     => vfat2_sda_tri_b
    );    

    --=====================--
    --== Functionalities ==--
    --=====================--
        
    vfat2_func_inst : entity work.vfat2_func      
    port map(        
        ref_clk_i           => ref_clk,
        reset_i             => reset,
        wb_slv_ei2c_req_i   => wb_s_req(WB_SLV_EI2C),
        wb_slv_ei2c_res_o   => wb_s_res(WB_SLV_EI2C),
        wb_mst_ei2c_req_o   => wb_m_req(WB_MST_EI2C),
        wb_mst_ei2c_res_i   => wb_m_res(WB_MST_EI2C),
        wb_slv_scan_req_i   => wb_s_req(WB_SLV_SCAN),
        wb_slv_scan_res_o   => wb_s_res(WB_SLV_SCAN),
        wb_mst_scan_req_o   => wb_m_req(WB_MST_SCAN),
        wb_mst_scan_res_i   => wb_m_res(WB_MST_SCAN),
        wb_slv_t1_req_i     => wb_s_req(WB_SLV_T1),
        wb_slv_t1_res_o     => wb_s_res(WB_SLV_T1),
        wb_slv_dac_req_i    => wb_s_req(WB_SLV_DAC),
        wb_slv_dac_res_o    => wb_s_res(WB_SLV_DAC),
        wb_mst_dac_req_o    => wb_m_req(WB_MST_DAC),
        wb_mst_dac_res_i    => wb_m_res(WB_MST_DAC),
        vfat2_tk_data_i     => vfat2_tk_data,
        vfat2_sbits_i       => vfat2_sbits_b,
        vfat2_t1_o          => vfat2_t1(1)
    );    
    
    --=========--
    --== ADC ==--
    --=========--
    
    adc_inst : entity work.adc
    port map(
        ref_clk_i           => ref_clk,
        reset_i             => reset,
        wb_slv_req_i        => wb_s_req(WB_SLV_ADC),
        wb_slv_res_o        => wb_s_res(WB_SLV_ADC),
        adc_chip_select_o   => adc_chip_select_b,
        adc_din_i           => adc_din_b,
        adc_dout_o          => adc_dout_b,
        adc_clk_o           => adc_clk_b,
        adc_eoc_i           => adc_eoc_b
    );
        
    --==========--
    --== CDCE ==--
    --==========--
    
    cdce_inst : entity work.cdce 
    port map(
		ref_clk_i       => ref_clk,
        cdce_clk_i      => cdce_clk_b,
        cdce_clk_pri_o  => cdce_clk_pri_b,
        cdce_aux_out_o  => cdce_aux_out_b,
        cdce_aux_in_i   => cdce_aux_in_b,
        cdce_ref_o      => cdce_ref_b,
        cdce_pwrdown_o  => cdce_pwrdown_b,
        cdce_sync_o     => cdce_sync_b,
        cdce_locked_i   => cdce_locked_b,
        cdce_sck_o      => cdce_sck_b,
        cdce_mosi_o     => cdce_mosi_b,
        cdce_le_o       => cdce_le_b,
        cdce_miso_i     => cdce_miso_b
	);
    
    --==============--
    --== Counters ==--
    --==============--
    
    counters_inst : entity work.counters
    port map(
        ref_clk_i       => ref_clk,
        reset_i         => reset, 
        wb_slv_req_i    => wb_s_req(WB_SLV_CNT),
        wb_slv_res_o    => wb_s_res(WB_SLV_CNT),
        wb_m_req_i      => wb_m_req,      
        wb_m_res_i      => wb_m_res,
        wb_s_req_i      => wb_s_req,
        wb_s_res_i      => wb_s_res,
        vfat2_tk_data_i => vfat2_tk_data,
        vfat2_t1_i      => vfat2_t1_lst,
        gtx_tk_error_i  => gtx_tk_error,
        gtx_tr_error_i  => gtx_tr_error
    );
    
    --============--
    --== System ==--
    --============--
    
    sys_inst : entity work.sys
    port map(
        ref_clk_i       => ref_clk,
        reset_i         => reset, 
        wb_slv_req_i    => wb_s_req(WB_SLV_SYS),
        wb_slv_res_o    => wb_s_res(WB_SLV_SYS),  
        vfat2_tk_mask_o => vfat2_tk_mask,
        vfat2_t1_sel_o  => vfat2_t1_sel,
        sys_loop_sbit_o => sys_loop_sbit,
        vfat2_reset_o   => vfat2_reset,
        sys_clk_sel_o   => sys_clk_sel,
        sys_sbit_sel_o  => sys_sbit_sel
    );
	 
	 --================--
	 --== TempSensor ==--
	 --================--
	 
	 i2c_inst : entity work.i2c
	 port map(
		ref_clk_i			=> clk_50MHz_i,
		en_i					=> en_i,
		reset_i				=> reset,
		address_i			=> address_i,
		scl_o					=> temp_clk_o,
--		dout					=> temp_data_io,
		rw_i					=> rw_i,
		data_i				=> data_i,
		valid_o				=> valid_o,
		error_o				=> error_o,
		data_o				=> data_o,
		sda_miso_i			=> sda_miso_i,
		sda_mosi_o			=> sda_mosi_o,
		sda_tri_o			=> sda_tri_o
		);
    
    --=============--
    --== Buffers ==--
    --=============--
    
    -- This entity is placed at the end of the file for readability reasons
    
    buffers_inst: entity work.buffers 
    port map(
        -- VFAT2
        vfat2_mclk_p_o          => vfat2_mclk_p_o,
        vfat2_mclk_n_o          => vfat2_mclk_n_o,
        vfat2_resb_o            => vfat2_resb_o,
        vfat2_resh_o            => vfat2_resh_o,
        vfat2_t1_p_o            => vfat2_t1_p_o,
        vfat2_t1_n_o            => vfat2_t1_n_o,
        vfat2_scl_o             => vfat2_scl_o,
        vfat2_sda_io            => vfat2_sda_io,
        vfat2_data_valid_p_i    => vfat2_data_valid_p_i,
        vfat2_data_valid_n_i    => vfat2_data_valid_n_i,
        vfat2_0_sbits_p_i		=> vfat2_0_sbits_p_i,
        vfat2_0_sbits_n_i		=> vfat2_0_sbits_n_i,
        vfat2_0_data_out_p_i	=> vfat2_0_data_out_p_i,
        vfat2_0_data_out_n_i	=> vfat2_0_data_out_n_i,
        vfat2_1_sbits_p_i		=> vfat2_1_sbits_p_i,
        vfat2_1_sbits_n_i		=> vfat2_1_sbits_n_i,
        vfat2_1_data_out_p_i	=> vfat2_1_data_out_p_i,
        vfat2_1_data_out_n_i	=> vfat2_1_data_out_n_i,
        vfat2_2_sbits_p_i		=> vfat2_2_sbits_p_i,
        vfat2_2_sbits_n_i		=> vfat2_2_sbits_n_i,
        vfat2_2_data_out_p_i	=> vfat2_2_data_out_p_i,
        vfat2_2_data_out_n_i	=> vfat2_2_data_out_n_i,
        vfat2_3_sbits_p_i		=> vfat2_3_sbits_p_i,
        vfat2_3_sbits_n_i		=> vfat2_3_sbits_n_i,
        vfat2_3_data_out_p_i	=> vfat2_3_data_out_p_i,
        vfat2_3_data_out_n_i	=> vfat2_3_data_out_n_i,
        vfat2_4_sbits_p_i		=> vfat2_4_sbits_p_i,
        vfat2_4_sbits_n_i		=> vfat2_4_sbits_n_i,
        vfat2_4_data_out_p_i	=> vfat2_4_data_out_p_i,
        vfat2_4_data_out_n_i	=> vfat2_4_data_out_n_i,
        vfat2_5_sbits_p_i		=> vfat2_5_sbits_p_i,
        vfat2_5_sbits_n_i		=> vfat2_5_sbits_n_i,
        vfat2_5_data_out_p_i	=> vfat2_5_data_out_p_i,
        vfat2_5_data_out_n_i	=> vfat2_5_data_out_n_i,
        vfat2_6_sbits_p_i		=> vfat2_6_sbits_p_i,
        vfat2_6_sbits_n_i		=> vfat2_6_sbits_n_i,
        vfat2_6_data_out_p_i	=> vfat2_6_data_out_p_i,
        vfat2_6_data_out_n_i	=> vfat2_6_data_out_n_i,
        vfat2_7_sbits_p_i		=> vfat2_7_sbits_p_i,
        vfat2_7_sbits_n_i		=> vfat2_7_sbits_n_i,
        vfat2_7_data_out_p_i	=> vfat2_7_data_out_p_i,
        vfat2_7_data_out_n_i	=> vfat2_7_data_out_n_i,
        vfat2_8_sbits_p_i		=> vfat2_8_sbits_p_i,
        vfat2_8_sbits_n_i		=> vfat2_8_sbits_n_i,
        vfat2_8_data_out_p_i	=> vfat2_8_data_out_p_i,
        vfat2_8_data_out_n_i	=> vfat2_8_data_out_n_i,
        vfat2_9_sbits_p_i		=> vfat2_9_sbits_p_i,
        vfat2_9_sbits_n_i		=> vfat2_9_sbits_n_i,
        vfat2_9_data_out_p_i	=> vfat2_9_data_out_p_i,
        vfat2_9_data_out_n_i	=> vfat2_9_data_out_n_i,
        vfat2_10_sbits_p_i		=> vfat2_10_sbits_p_i,
        vfat2_10_sbits_n_i		=> vfat2_10_sbits_n_i,
        vfat2_10_data_out_p_i	=> vfat2_10_data_out_p_i,
        vfat2_10_data_out_n_i	=> vfat2_10_data_out_n_i,
        vfat2_11_sbits_p_i		=> vfat2_11_sbits_p_i,
        vfat2_11_sbits_n_i		=> vfat2_11_sbits_n_i,
        vfat2_11_data_out_p_i	=> vfat2_11_data_out_p_i,
        vfat2_11_data_out_n_i	=> vfat2_11_data_out_n_i,
        vfat2_12_sbits_p_i		=> vfat2_12_sbits_p_i,
        vfat2_12_sbits_n_i		=> vfat2_12_sbits_n_i,
        vfat2_12_data_out_p_i	=> vfat2_12_data_out_p_i,
        vfat2_12_data_out_n_i	=> vfat2_12_data_out_n_i,
        vfat2_13_sbits_p_i		=> vfat2_13_sbits_p_i,
        vfat2_13_sbits_n_i		=> vfat2_13_sbits_n_i,
        vfat2_13_data_out_p_i	=> vfat2_13_data_out_p_i,
        vfat2_13_data_out_n_i	=> vfat2_13_data_out_n_i,
        vfat2_14_sbits_p_i		=> vfat2_14_sbits_p_i,
        vfat2_14_sbits_n_i		=> vfat2_14_sbits_n_i,
        vfat2_14_data_out_p_i	=> vfat2_14_data_out_p_i,
        vfat2_14_data_out_n_i	=> vfat2_14_data_out_n_i,
        vfat2_15_sbits_p_i		=> vfat2_15_sbits_p_i,
        vfat2_15_sbits_n_i		=> vfat2_15_sbits_n_i,
        vfat2_15_data_out_p_i	=> vfat2_15_data_out_p_i,
        vfat2_15_data_out_n_i	=> vfat2_15_data_out_n_i,
        vfat2_16_sbits_p_i		=> vfat2_16_sbits_p_i,
        vfat2_16_sbits_n_i		=> vfat2_16_sbits_n_i,
        vfat2_16_data_out_p_i	=> vfat2_16_data_out_p_i,
        vfat2_16_data_out_n_i	=> vfat2_16_data_out_n_i,
        vfat2_17_sbits_p_i		=> vfat2_17_sbits_p_i,
        vfat2_17_sbits_n_i		=> vfat2_17_sbits_n_i,
        vfat2_17_data_out_p_i	=> vfat2_17_data_out_p_i,
        vfat2_17_data_out_n_i	=> vfat2_17_data_out_n_i,
        vfat2_18_sbits_p_i		=> vfat2_18_sbits_p_i,
        vfat2_18_sbits_n_i		=> vfat2_18_sbits_n_i,
        vfat2_18_data_out_p_i	=> vfat2_18_data_out_p_i,
        vfat2_18_data_out_n_i	=> vfat2_18_data_out_n_i,
        vfat2_19_sbits_p_i		=> vfat2_19_sbits_p_i,
        vfat2_19_sbits_n_i		=> vfat2_19_sbits_n_i,
        vfat2_19_data_out_p_i	=> vfat2_19_data_out_p_i,
        vfat2_19_data_out_n_i	=> vfat2_19_data_out_n_i,
        vfat2_20_sbits_p_i		=> vfat2_20_sbits_p_i,
        vfat2_20_sbits_n_i		=> vfat2_20_sbits_n_i,
        vfat2_20_data_out_p_i	=> vfat2_20_data_out_p_i,
        vfat2_20_data_out_n_i	=> vfat2_20_data_out_n_i,
        vfat2_21_sbits_p_i		=> vfat2_21_sbits_p_i,
        vfat2_21_sbits_n_i		=> vfat2_21_sbits_n_i,
        vfat2_21_data_out_p_i	=> vfat2_21_data_out_p_i,
        vfat2_21_data_out_n_i	=> vfat2_21_data_out_n_i,
        vfat2_22_sbits_p_i		=> vfat2_22_sbits_p_i,
        vfat2_22_sbits_n_i		=> vfat2_22_sbits_n_i,
        vfat2_22_data_out_p_i	=> vfat2_22_data_out_p_i,
        vfat2_22_data_out_n_i	=> vfat2_22_data_out_n_i,
        vfat2_23_sbits_p_i		=> vfat2_23_sbits_p_i,
        vfat2_23_sbits_n_i		=> vfat2_23_sbits_n_i,
        vfat2_23_data_out_p_i	=> vfat2_23_data_out_p_i,
        vfat2_23_data_out_n_i	=> vfat2_23_data_out_n_i,
        --
        vfat2_mclk_i            => vfat2_mclk_b,
        vfat2_reset_i           => vfat2_reset_b,
        vfat2_t1_i              => vfat2_t1_b,
        vfat2_scl_i             => vfat2_scl_b,
        vfat2_sda_miso_o        => vfat2_sda_miso_b, 
        vfat2_sda_mosi_i        => vfat2_sda_mosi_b,
        vfat2_sda_tri_i         => vfat2_sda_tri_b,
        vfat2_data_valid_o      => vfat2_data_valid_b,
        vfat2_data_out_o        => vfat2_data_out_b,
        vfat2_sbits_o           => vfat2_sbits_b,
        -- ADC
        adc_clk_o               => adc_clk_o,
        adc_chip_select_o       => adc_chip_select_o,
        adc_dout_o              => adc_dout_o,
        adc_din_i               => adc_din_i,
        adc_eoc_i               => adc_eoc_i,
        --
        adc_clk_i               => adc_clk_b,
        adc_chip_select_i       => adc_chip_select_b,
        adc_dout_i              => adc_dout_b,
        adc_din_o               => adc_din_b,
        adc_eoc_o               => adc_eoc_b,
        -- CDCE
        cdce_clk_p_i            => cdce_clk_p_i,
        cdce_clk_n_i            => cdce_clk_n_i,
        cdce_clk_pri_p_o        => cdce_clk_pri_p_o,
        cdce_clk_pri_n_o        => cdce_clk_pri_n_o,
        cdce_aux_out_o          => cdce_aux_out_o,
        cdce_aux_in_i           => cdce_aux_in_i,
        cdce_ref_o              => cdce_ref_o,
        cdce_pwrdown_o          => cdce_pwrdown_o,
        cdce_sync_o             => cdce_sync_o,
        cdce_locked_i           => cdce_locked_i,
        cdce_sck_o              => cdce_sck_o,
        cdce_mosi_o             => cdce_mosi_o,
        cdce_le_o               => cdce_le_o,
        cdce_miso_i             => cdce_miso_i,
        -- 
        cdce_clk_o              => cdce_clk_b,
        cdce_clk_pri_i          => cdce_clk_pri_b,
        cdce_aux_out_i          => cdce_aux_out_b,
        cdce_aux_in_o           => cdce_aux_in_b,
        cdce_ref_i              => cdce_ref_b,
        cdce_pwrdown_i          => cdce_pwrdown_b,
        cdce_sync_i             => cdce_sync_b,
        cdce_locked_o           => cdce_locked_b,
        cdce_sck_i              => cdce_sck_b,
        cdce_mosi_i             => cdce_mosi_b,
        cdce_le_i               => cdce_le_b,
        cdce_miso_o             => cdce_miso_b,
        -- ChipID
        chipid_io               => chipid_io,
        -- 
        chipid_mosi_i           => chipid_mosi_b,
        chipid_miso_o           => chipid_miso_b,
        chipid_tri_i            => chipid_tri_b,
        -- QPLL
        qpll_ref_40MHz_o        => qpll_ref_40MHz_o,
        qpll_reset_o            => qpll_reset_o,
        qpll_locked_i           => qpll_locked_i,
        qpll_error_i            => qpll_error_i,
        qpll_clk_p_i            => qpll_clk_p_i,
        qpll_clk_n_i            => qpll_clk_n_i,
        --
        qpll_ref_40MHz_i        => qpll_ref_40MHz_b,
        qpll_reset_i            => qpll_reset_b,
        qpll_locked_o           => qpll_locked_b,
        qpll_error_o            => qpll_error_b,
        qpll_clk_o              => qpll_clk_b,
        -- Temperature
        temp_clk_o              => temp_clk_o,
        temp_data_io            => temp_data_io,
        --
        temp_clk_i              => temp_clk_b,
        temp_data_mosi_i        => temp_data_mosi_b,
        temp_data_miso_o        => temp_data_miso_b,
        temp_data_tri_i         => temp_data_tri_b
    );
    
end Behavioral;
