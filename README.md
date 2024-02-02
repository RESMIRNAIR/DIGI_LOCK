# DIGI_LOCK
# It is required to implement a digital lock that will accept a specific bit sequence  “101100” through an input button “b_in” serially in synchronism with the negative edge of an input clock, and will generate an “unlock” signal “1” as output; for any other bit sequence the “unlock” signal will remain at logic “0”.  An active low “clear” signal is used to asynchronously reset the lock in its initial/default state.

# Write a Verilog module to implement the specification as Moore machine using the following template:
#    module dlock (unlock, b_in, clear, clk);
![image](https://github.com/RESMIRNAIR/DIGI_LOCK/assets/154305926/61af2bd3-8217-461d-bbce-df66969fe413)
