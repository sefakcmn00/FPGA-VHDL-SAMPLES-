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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/ASUS/Desktop/ISE/Secici_Devre_1/Multix_4bit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2182430303_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 1992U);
    t7 = *((char **)t3);
    t3 = (t0 + 5688U);
    t8 = (t0 + 5720);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t3, t8, t10);
    if (t15 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 5688U);
    t4 = (t0 + 5722);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t14;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t2 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 5688U);
    t4 = (t0 + 5724);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t14;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t2 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3712);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast_port(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(24, ng0);
    t12 = (t0 + 1352U);
    t16 = *((char **)t12);
    t17 = *((unsigned char *)t16);
    t12 = (t0 + 3712);
    t18 = (t12 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t17;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(26, ng0);
    t9 = (t0 + 1512U);
    t11 = *((char **)t9);
    t5 = *((unsigned char *)t11);
    t9 = (t0 + 3712);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t5;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB9;

LAB13:    xsi_set_current_line(28, ng0);
    t9 = (t0 + 1672U);
    t11 = *((char **)t9);
    t5 = *((unsigned char *)t11);
    t9 = (t0 + 3712);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t5;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB9;

}


extern void work_a_2182430303_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2182430303_3212880686_p_0};
	xsi_register_didat("work_a_2182430303_3212880686", "isim/test_isim_beh.exe.sim/work/a_2182430303_3212880686.didat");
	xsi_register_executes(pe);
}
