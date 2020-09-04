*** Test Cases ***
#ForLoop1
     #: FOR   ${i}    IN RANGE    1   10
  #  \   log to console    ${i}

#ForLoop2
#    : FOR   ${i}    IN  1   2   3   4   5   6   7
#    \   log to console    ${i}

#ForLoopwithList
#    @{items}    create list     1    2   3   4   5
#    : FOR   ${i}    IN  @{items}
#    \   log to console    ${i}

#ForLoop4
#    : FOR   ${i}    IN  John    Smith   Scott   Kevin
#    \   log to console    ${i}

#ForLoop5
#    @{nameslist}    create list    kevin    smith   John    Scott
#    : FOR   ${i}    IN   @{nameslist}
#    \   log to console    ${i}

ForLoopwithExit
    @{numbers}  create list    1    2   3   4   5
    : FOR   ${i}    IN  @{numbers}
    \   log to console    ${i}
    \   exit for loop if    ${i}==3
