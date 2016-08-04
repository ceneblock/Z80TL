/**
  @author ceneblock
  @brief implements a simple language for Z80
*/
#include "Z80TL.h"
int main(int argc, char **argv)
{
  init();
  print_help();
}

/**
  @brief prints the help page
*/
void print_help()
{
  cout << "Z80TL compiler\n";
  cout << "This program compiles for the Z80 processor when using the Z80TL\n";
  cout << "language\n";
  cout << endl;
  cout << endl;
  cout << "The following options are valid:\n";
  for(auto x : main_options)
  {
    cout << x.short_option << " " << x.long_option << " " << x.brief << endl;
  }
}

/**
  @brief initalizes all of the options
*/
void init()
{
  options entry = options('i', "input", "The input file to be compiled (optional)");
  main_options.push_back(entry);
  entry = options('h', "help", "Prints the help screen");
  main_options.push_back(entry);
  entry = options('o', "output", "The output hex file (defaults to \
input.Z80.hex)");
  main_options.push_back(entry);
}
