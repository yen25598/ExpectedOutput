/* Generated by CIL v. 1.3.6 */
/* print_CIL_Input is true */

/*void error() 
{ 

  {
  goto ERROR;
  ERROR: ;
  
}
}*/

int assert_1 = 0;
int c = 0 ;
int c_t = 0 ;
int c_req_up  ;
int p_in  = 0;
int p_out = 0 ;
int wl_st = 0 ;
int c1_st = 0 ;
int c2_st = 0 ;
int wb_st = 0;
int r_st = 0 ;
int wl_i  = 0;
int c1_i = 0 ;
int c2_i  = 0;
int wb_i  = 0;
int r_i = 0 ;
int wl_pc = 0 ;
int c1_pc = 0 ;
int c2_pc = 0 ;
int wb_pc = 0 ;
int e_e = 0 ;
int e_f = 0 ;
int e_g = 0 ;
int e_c = 0 ;
int e_p_in  ;
int e_wl  ;
void write_loop() ;
void compute1() ;
void compute2() ;
void write_back() ;
void read() ;
int d = 0 ;
int data = 0  ;
int processed = 0 ;
int t_b = 0 ;
void write_loop() 
{ int t ;

  {
  if ( wl_pc == 0) {
    goto WL_ENTRY_LOC;
  } else {
    if ( wl_pc == 2) {
      goto WL_WAIT_2_LOC;
    } else {
      if ( wl_pc == 1) {
        goto WL_WAIT_1_LOC;
      } else {

      }
    }
  }
  WL_ENTRY_LOC: 
  wl_st = 2;
  wl_pc = 1;
  e_wl = 0;

  goto return_label;
  WL_WAIT_1_LOC: 
  {
  while (1 < 2)
  {
    while_0_continue: /* CIL Label */ ;
    t = d;
    data = d;
    processed = 0;
    e_f = 1;
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    e_f = 2;
    wl_st = 2;
    wl_pc = 2;
    t_b = t;

    goto return_label;
    WL_WAIT_2_LOC: 
    t = t_b;
    if (d == t + 1) {

    } else {
      if (d == t + 2) {

      } else {
        {
	  assert_1 = 1;
        }
      }
    }
  }
  {
    while_0_continue: /* CIL Label */ ;
    t = d;
    data = d;
    processed = 0;
    e_f = 1;
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    e_f = 2;
    wl_st = 2;
    wl_pc = 2;
    t_b = t;

    goto return_label;
    WL_WAIT_2_LOC:
    t = t_b;
    if (d == t + 1) {

    } else {
      if (d == t + 2) {

      } else {
        {
	  assert_1 = 1;
        }
      }
    }
  }
  {
    while_0_continue: /* CIL Label */ ;
    t = d;
    data = d;
    processed = 0;
    e_f = 1;
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    e_f = 2;
    wl_st = 2;
    wl_pc = 2;
    t_b = t;

    goto return_label;
    WL_WAIT_2_LOC:
    t = t_b;
    if (d == t + 1) {

    } else {
      if (d == t + 2) {

      } else {
        {
	  assert_1 = 1;
        }
      }
    }
  }

  while_0_break: /* CIL Label */ ;
  }
  return_label:; /* CIL Label */
}
}
void compute1()
{ 

  {
  if (c1_pc == 0) {
    goto C1_ENTRY_LOC;
  } else {
    if (c1_pc == 1) {
      goto C1_WAIT_LOC;
    } else {

    }
  }
  C1_ENTRY_LOC: 
  {
  while (1 < 2)
  {
    while_1_continue: /* CIL Label */ ;
    c1_st = 2;
    c1_pc = 1;

    goto return_label;
    C1_WAIT_LOC: 
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }
  {
    while_1_continue: /* CIL Label */ ;
    c1_st = 2;
    c1_pc = 1;

    goto return_label;
    C1_WAIT_LOC:
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }
  {
    while_1_continue: /* CIL Label */ ;
    c1_st = 2;
    c1_pc = 1;

    goto return_label;
    C1_WAIT_LOC:
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }

  while_1_break: /* CIL Label */ ;
  }
  return_label:; /* CIL Label */ 
  
}
}
void compute2() 
{ 

  {
  if (c2_pc == 0) {
    goto C2_ENTRY_LOC;
  } else {
    if (c2_pc == 1) {
      goto C2_WAIT_LOC;
    } else {

    }
  }
  C2_ENTRY_LOC: 
  {
  while (1 < 2)
  {
    while_2_continue: /* CIL Label */ ;
    c2_st = 2;
    c2_pc = 1;

    goto return_label;
    C2_WAIT_LOC: 
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }
  {
    while_2_continue: /* CIL Label */ ;
    c2_st = 2;
    c2_pc = 1;

    goto return_label;
    C2_WAIT_LOC:
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }
  {
    while_2_continue: /* CIL Label */ ;
    c2_st = 2;
    c2_pc = 1;

    goto return_label;
    C2_WAIT_LOC:
    if (! processed) {
      data += 1;
      e_g = 1;
      if (wb_pc == 1) {
        if (e_g == 1) {
          wb_st = 0;
        } else {

        }
      } else {

      }
      e_g = 2;
    } else {

    }
  }

  while_2_break: /* CIL Label */ ;
  }
  return_label:; /* CIL Label */ 
  
}
}
void write_back() 
{ 

  {
  if (wb_pc == 0) {
    goto WB_ENTRY_LOC;
  } else {
    if (wb_pc == 1) {
      goto WB_WAIT_LOC;
    } else {

    }
  }
  WB_ENTRY_LOC: 
  {
  while (1 < 2)
  {
    while_3_continue: /* CIL Label */ ;
    wb_st = 2;
    wb_pc = 1;

    goto return_label;
    WB_WAIT_LOC: 
    c_t = data;
    c_req_up = 1;
    processed = 1;
  }
  {
    while_3_continue: /* CIL Label */ ;
    wb_st = 2;
    wb_pc = 1;

    goto return_label;
    WB_WAIT_LOC:
    c_t = data;
    c_req_up = 1;
    processed = 1;
  }
  {
    while_3_continue: /* CIL Label */ ;
    wb_st = 2;
    wb_pc = 1;

    goto return_label;
    WB_WAIT_LOC:
    c_t = data;
    c_req_up = 1;
    processed = 1;
  }

  while_3_break: /* CIL Label */ ;
  }
  return_label:; /* CIL Label */ 
  
}
}
void read() 
{ 

  {
  d = c;
  e_e = 1;
  if (wl_pc == 1) {
    if (e_wl == 1) {
      wl_st = 0;
    } else {
      goto _L;
    }
  } else {
    _L: /* CIL Label */ 
    if (wl_pc == 2) {
      if (e_e == 1) {
        wl_st = 0;
      } else {

      }
    } else {

    }
  }
  e_e = 2;
  r_st = 2;

  
}
}
void eval() 
{ int tmp = 0 ;
  int tmp___0 = 0;
  int tmp___1 = 0;
  int tmp___2 = 0;
  int tmp___3 = 0;
  int __NONDET = 0;

  {
  {
  while (1 < 2)
  {
    while_4_continue: /* CIL Label */ ;
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_4_break;
            }
          }
        }
      }
    }
    if (wl_st == 0) {
      {
      tmp = __NONDET;
      }
      if (tmp) {
        {
        wl_st = 1;
        write_loop();
        }
      } else {

      }
    } else {

    }
    if (c1_st == 0) {
      {
      tmp___0 = __NONDET;
      }
      if (tmp___0) {
        {
        c1_st = 1;
        compute1();
        }
      } else {

      }
    } else {

    }
    if (c2_st == 0) {
      {
      tmp___1 = __NONDET;
      }
      if (tmp___1) {
        {
        c2_st = 1;
        compute2();
        }
      } else {

      }
    } else {

    }
    if (wb_st == 0) {
      {
      tmp___2 = __NONDET;
      }
      if (tmp___2) {
        {
        wb_st = 1;
        write_back();
        }
      } else {

      }
    } else {

    }
    if (r_st == 0) {
      {
      tmp___3 = __NONDET;
      }
      if (tmp___3) {
        {
        r_st = 1;
        read();
        }
      } else {

      }
    } else {

    }
  }
  {
    while_4_continue: /* CIL Label */ ;
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_4_break;
            }
          }
        }
      }
    }
    if (wl_st == 0) {
      {
      tmp = __NONDET;
      }
      if (tmp) {
        {
        wl_st = 1;
        write_loop();
        }
      } else {

      }
    } else {

    }
    if (c1_st == 0) {
      {
      tmp___0 = __NONDET;
      }
      if (tmp___0) {
        {
        c1_st = 1;
        compute1();
        }
      } else {

      }
    } else {

    }
    if (c2_st == 0) {
      {
      tmp___1 = __NONDET;
      }
      if (tmp___1) {
        {
        c2_st = 1;
        compute2();
        }
      } else {

      }
    } else {

    }
    if (wb_st == 0) {
      {
      tmp___2 = __NONDET;
      }
      if (tmp___2) {
        {
        wb_st = 1;
        write_back();
        }
      } else {

      }
    } else {

    }
    if (r_st == 0) {
      {
      tmp___3 = __NONDET;
      }
      if (tmp___3) {
        {
        r_st = 1;
        read();
        }
      } else {

      }
    } else {

    }
  }
  {
    while_4_continue: /* CIL Label */ ;
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_4_break;
            }
          }
        }
      }
    }
    if (wl_st == 0) {
      {
      tmp = __NONDET;
      }
      if (tmp) {
        {
        wl_st = 1;
        write_loop();
        }
      } else {

      }
    } else {

    }
    if (c1_st == 0) {
      {
      tmp___0 = __NONDET;
      }
      if (tmp___0) {
        {
        c1_st = 1;
        compute1();
        }
      } else {

      }
    } else {

    }
    if (c2_st == 0) {
      {
      tmp___1 = __NONDET;
      }
      if (tmp___1) {
        {
        c2_st = 1;
        compute2();
        }
      } else {

      }
    } else {

    }
    if (wb_st == 0) {
      {
      tmp___2 = __NONDET;
      }
      if (tmp___2) {
        {
        wb_st = 1;
        write_back();
        }
      } else {

      }
    } else {

    }
    if (r_st == 0) {
      {
      tmp___3 = __NONDET;
      }
      if (tmp___3) {
        {
        r_st = 1;
        read();
        }
      } else {

      }
    } else {

    }
  }

  while_4_break: /* CIL Label */ ;
  }

  
}
}
void start_simulation() 
{ int kernel_st = 0;

  {
  kernel_st = 0;
  if (c_req_up == 1) {
    if (c != c_t) {
      c = c_t;
      e_c = 0;
    } else {

    }
    c_req_up = 0;
  } else {

  }
  if (wl_i == 1) {
    wl_st = 0;
  } else {
    wl_st = 2;
  }
  if (c1_i == 1) {
    c1_st = 0;
  } else {
    c1_st = 2;
  }
  if (c2_i == 1) {
    c2_st = 0;
  } else {
    c2_st = 2;
  }
  if (wb_i == 1) {
    wb_st = 0;
  } else {
    wb_st = 2;
  }
  if (r_i == 1) {
    r_st = 0;
  } else {
    r_st = 2;
  }
  if (e_f == 0) {
    e_f = 1;
  } else {

  }
  if (e_g == 0) {
    e_g = 1;
  } else {

  }
  if (e_e == 0) {
    e_e = 1;
  } else {

  }
  if (e_c == 0) {
    e_c = 1;
  } else {

  }
  if (e_wl == 0) {
    e_wl = 1;
  } else {

  }
  if (wl_pc == 1) {
    if (e_wl == 1) {
      wl_st = 0;
    } else {
      goto _L;
    }
  } else {
    _L: /* CIL Label */ 
    if (wl_pc == 2) {
      if (e_e == 1) {
        wl_st = 0;
      } else {

      }
    } else {

    }
  }
  if (c1_pc == 1) {
    if (e_f == 1) {
      c1_st = 0;
    } else {

    }
  } else {

  }
  if (c2_pc == 1) {
    if (e_f == 1) {
      c2_st = 0;
    } else {

    }
  } else {

  }
  if (wb_pc == 1) {
    if (e_g == 1) {
      wb_st = 0;
    } else {

    }
  } else {

  }
  if (e_c == 1) {
    r_st = 0;
  } else {

  }
  if (e_e == 1) {
    e_e = 2;
  } else {

  }
  if (e_f == 1) {
    e_f = 2;
  } else {

  }
  if (e_g == 1) {
    e_g = 2;
  } else {

  }
  if (e_c == 1) {
    e_c = 2;
  } else {

  }
  if (e_wl == 1) {
    e_wl = 2;
  } else {

  }
  {
  while (1 < 2)
  {
    while_5_continue: /* CIL Label */ ;
    {
    kernel_st = 1;
    eval();
    }
    kernel_st = 2;
    if (c_req_up == 1) {
      if (c != c_t) {
        c = c_t;
        e_c = 0;
      } else {

      }
      c_req_up = 0;
    } else {

    }
    kernel_st = 3;
    if (e_f == 0) {
      e_f = 1;
    } else {

    }
    if (e_g == 0) {
      e_g = 1;
    } else {

    }
    if (e_e == 0) {
      e_e = 1;
    } else {

    }
    if (e_c == 0) {
      e_c = 1;
    } else {

    }
    if (e_wl == 0) {
      e_wl = 1;
    } else {

    }
    if (wl_pc == 1) {
      if (e_wl == 1) {
        wl_st = 0;
      } else {
        goto _L___0;
      }
    } else {
      _L___0: /* CIL Label */ 
      if (wl_pc == 2) {
        if (e_e == 1) {
          wl_st = 0;
        } else {

        }
      } else {

      }
    }
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    if (wb_pc == 1) {
      if (e_g == 1) {
        wb_st = 0;
      } else {

      }
    } else {

    }
    if (e_c == 1) {
      r_st = 0;
    } else {

    }
    if (e_e == 1) {
      e_e = 2;
    } else {

    }
    if (e_f == 1) {
      e_f = 2;
    } else {

    }
    if (e_g == 1) {
      e_g = 2;
    } else {

    }
    if (e_c == 1) {
      e_c = 2;
    } else {

    }
    if (e_wl == 1) {
      e_wl = 2;
    } else {

    }
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_5_break;
            }
          }
        }
      }
    }
  }
  {
    while_5_continue: /* CIL Label */ ;
    {
    kernel_st = 1;
    eval();
    }
    kernel_st = 2;
    if (c_req_up == 1) {
      if (c != c_t) {
        c = c_t;
        e_c = 0;
      } else {

      }
      c_req_up = 0;
    } else {

    }
    kernel_st = 3;
    if (e_f == 0) {
      e_f = 1;
    } else {

    }
    if (e_g == 0) {
      e_g = 1;
    } else {

    }
    if (e_e == 0) {
      e_e = 1;
    } else {

    }
    if (e_c == 0) {
      e_c = 1;
    } else {

    }
    if (e_wl == 0) {
      e_wl = 1;
    } else {

    }
    if (wl_pc == 1) {
      if (e_wl == 1) {
        wl_st = 0;
      } else {
        goto _L___0;
      }
    } else {
      _L___0: /* CIL Label */
      if (wl_pc == 2) {
        if (e_e == 1) {
          wl_st = 0;
        } else {

        }
      } else {

      }
    }
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    if (wb_pc == 1) {
      if (e_g == 1) {
        wb_st = 0;
      } else {

      }
    } else {

    }
    if (e_c == 1) {
      r_st = 0;
    } else {

    }
    if (e_e == 1) {
      e_e = 2;
    } else {

    }
    if (e_f == 1) {
      e_f = 2;
    } else {

    }
    if (e_g == 1) {
      e_g = 2;
    } else {

    }
    if (e_c == 1) {
      e_c = 2;
    } else {

    }
    if (e_wl == 1) {
      e_wl = 2;
    } else {

    }
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_5_break;
            }
          }
        }
      }
    }
  }
  {
    while_5_continue: /* CIL Label */ ;
    {
    kernel_st = 1;
    eval();
    }
    kernel_st = 2;
    if (c_req_up == 1) {
      if (c != c_t) {
        c = c_t;
        e_c = 0;
      } else {

      }
      c_req_up = 0;
    } else {

    }
    kernel_st = 3;
    if (e_f == 0) {
      e_f = 1;
    } else {

    }
    if (e_g == 0) {
      e_g = 1;
    } else {

    }
    if (e_e == 0) {
      e_e = 1;
    } else {

    }
    if (e_c == 0) {
      e_c = 1;
    } else {

    }
    if (e_wl == 0) {
      e_wl = 1;
    } else {

    }
    if (wl_pc == 1) {
      if (e_wl == 1) {
        wl_st = 0;
      } else {
        goto _L___0;
      }
    } else {
      _L___0: /* CIL Label */
      if (wl_pc == 2) {
        if (e_e == 1) {
          wl_st = 0;
        } else {

        }
      } else {

      }
    }
    if (c1_pc == 1) {
      if (e_f == 1) {
        c1_st = 0;
      } else {

      }
    } else {

    }
    if (c2_pc == 1) {
      if (e_f == 1) {
        c2_st = 0;
      } else {

      }
    } else {

    }
    if (wb_pc == 1) {
      if (e_g == 1) {
        wb_st = 0;
      } else {

      }
    } else {

    }
    if (e_c == 1) {
      r_st = 0;
    } else {

    }
    if (e_e == 1) {
      e_e = 2;
    } else {

    }
    if (e_f == 1) {
      e_f = 2;
    } else {

    }
    if (e_g == 1) {
      e_g = 2;
    } else {

    }
    if (e_c == 1) {
      e_c = 2;
    } else {

    }
    if (e_wl == 1) {
      e_wl = 2;
    } else {

    }
    if (wl_st == 0) {

    } else {
      if (c1_st == 0) {

      } else {
        if (c2_st == 0) {

        } else {
          if (wb_st == 0) {

          } else {
            if (r_st == 0) {

            } else {
              goto while_5_break;
            }
          }
        }
      }
    }
  }

  while_5_break: /* CIL Label */ ;
  }

  
}
}
int toy() 
{ int __retres1 = 0 ;

  {
  {
  e_wl = 2;
  e_c = e_wl;
  e_g = e_c;
  e_f = e_g;
  e_e = e_f;
  wl_pc = 0;
  c1_pc = 0;
  c2_pc = 0;
  wb_pc = 0;
  wb_i = 1;
  c2_i = wb_i;
  c1_i = c2_i;
  wl_i = c1_i;
  r_i = 0;
  c_req_up = 0;
  d = 0;
  c = 0;
  start_simulation();
  }
  __retres1 = assert_1;
  return (__retres1);
}
}