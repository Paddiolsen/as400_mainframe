*** Settings ***
Documentation   This will be a test of as400 mainfraime
Metadata        
Library        Mainframe3270
Library        RPA.Desktop
Library        BuiltIn

*** Tasks ***
Login to mainframe
    Open Connection  pub400.com
    write  pso
    Move Next Field
    write  NyxT3ch
Navigate
    Write  5
    write  2
    write  3
    Sleep  1
    Send Enter
    Sleep    1
    Send PF  6
    Sleep    10
    Write Bare In Position    hello    7    50
    Write Bare In Position    RPGLE    8    50
    Write In Position    Hello Robocorp    9    50
    Sleep    1
    Write  \        
    Send Enter
    Sleep    10



    Close Connection
# # TODO
#
# intro: the robot is going to write a "hello Robocorp" program in the as400 mainframe and compile the file and display the output on the screen.
#
# 1 - login to the mainframe
# 2 - Press 5 and enter
# 3 - Press 2 and enter
# 4 - Press 3 and enter
# 5 - Move cursore to "library" block
# 6 - if "libray" = NyxTech library 
#         then press enter
#     else
#         delete tekst
#         insert tekst "{nyxtech library}"
# 7 - 


