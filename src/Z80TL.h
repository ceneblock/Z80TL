#ifndef _Z80_H
#define _Z80_H
#include <iostream>
#include <unistd.h>
#include <fstream>
#include <vector>
using namespace std;

struct options
{
  char short_option;
  string long_option;
  string brief;

  options()
  {
    short_option = 0;
    long_option.empty();
    brief.empty();
  }
  options(char short_option, string long_operation, string brief)
  {
    this -> short_option = short_option;
    this -> long_option = long_option;
    this -> brief = brief;
  }
};

vector<options> main_options;


void print_help();
void print_version();
void init();
#endif
