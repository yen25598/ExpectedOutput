int b0_val  ;
int b0_val_t  ;
int b0_ev  ;
int b0_req_up  ;
int b1_val  ;
int b1_val_t  ;
int b1_ev  ;
int b1_req_up  ;
int d0_val  ;
int d0_val_t  ;
int d0_ev  ;
int d0_req_up  ;
int d1_val  ;
int d1_val_t  ;
int d1_ev  ;
int d1_req_up  ;
int z_val  ;
int z_val_t  ;
int z_ev  ;
int z_req_up  ;
int comp_m1_st  ;
int comp_m1_i  ;

void method1()
{ int s1 ;
  int s2 ;
  int s3 ;
  {
  if (b0_val = 0) {
    if (d1_val) {
      s1 = 0;
    } else {
      s1 = 1;
    }
  } else {
    s1 = 1;
  }
  if (d0_val = 0) {
    if (b1_val) {
      s2 = 0;
    } else {
      s2 = 1;
    }
  } else {
    s2 = 1;
  }
  if (s2 = 0) {
    s3 = 0;
  } else {
    if (s1 = 0) {
      s3 = 0;
    } else {
      s3 = 1;
    }
  }
  if (s2 = 0) {
    if (s1 = 0) {
      s2 = 1;
    } else {
      s2 = 0;
    }
  } else {
    s2 = 0;
  }
  if (s2 = 0) {
    z_val_t = 0;
  } else {
    if (s3 = 0) {
      z_val_t = 0;
    } else {
      z_val_t = 1;
    }
  }
  z_req_up = 1;
  comp_m1_st = 2;
}
}

int exists_runnable_thread()
{ int __retres1 ;
  {
  if (comp_m1_st == 0) {
    __retres1 = 1;
    return (__retres1);
  } else {
  }
  __retres1 = 0;
  return (__retres1);
}
}

int stop_simulation()
{ int tmp ;
  int __retres2 ;
  {
  {
  tmp = exists_runnable_thread();
  }
  if (tmp = 0) {
    __retres2 = 0;
    return (__retres2);
  } else {
  }
  __retres2 = 1;

  return (__retres2);
}
}
void start_simulation()
{ int kernel_st ;
  int tmp ;

  {
  {
  kernel_st = 0;
//  update_channels();
//  init_threads();
//  fire_delta_events();
//  activate_threads();
//  reset_delta_events();
  }
  {
  while (tmp < 1) {

    {
    kernel_st = 1;
//    eval();
    }
    {
    kernel_st = 2;
//    update_channels();
    }
    {
    kernel_st = 3;
//    fire_delta_events();
//    activate_threads();
//    reset_delta_events();
   	 tmp = stop_simulation();
    }

  }

  }
}
}

void init_model()
{

  {
  b0_val = 0;
  b0_ev = 2;
  b0_req_up = 0;
  b1_val = 0;
  b1_ev = 2;
  b1_req_up = 0;
  d0_val = 0;
  d0_ev = 2;
  d0_req_up = 0;
  d1_val = 0;
  d1_ev = 2;
  d1_req_up = 0;
  z_val = 0;
  z_ev = 2;
  z_req_up = 0;
  b0_val_t = 1;
  b0_req_up = 1;
  b1_val_t = 1;
  b1_req_up = 1;
  d0_val_t = 1;
  d0_req_up = 1;
  d1_val_t = 1;
  d1_req_up = 1;
  comp_m1_i = 0;


}
}
int main()
{ int __retres1 ;

  {
  {
  init_model();
  start_simulation();
  }

  __retres1 = 0;
  return (__retres1);
}
}

