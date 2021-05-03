/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *XILINXCORELIB_P_2514345707;
char *IEEE_P_3499444699;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *XILINXCORELIB_P_0652569459;
char *IEEE_P_1242562249;
char *XILINXCORELIB_P_1837083571;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    xilinxcorelib_p_2514345707_init();
    ieee_p_1242562249_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_0652569459_init();
    xilinxcorelib_a_4059257734_3212880686_init();
    xilinxcorelib_a_4199555675_3212880686_init();
    work_a_1126471133_2562140453_init();
    xilinxcorelib_a_4279019531_3212880686_init();
    xilinxcorelib_a_3369022174_3212880686_init();
    work_a_2569172884_3101968894_init();
    work_a_2023191012_3212880686_init();
    work_a_2057778459_3212880686_init();
    work_a_1985558087_2372691052_init();


    xsi_register_tops("work_a_1985558087_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_2514345707 = xsi_get_engine_memory("xilinxcorelib_p_2514345707");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    XILINXCORELIB_P_0652569459 = xsi_get_engine_memory("xilinxcorelib_p_0652569459");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");

    return xsi_run_simulation(argc, argv);

}
