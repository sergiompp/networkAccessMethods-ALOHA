# SCENARIO 1 - Access Methods

In this scenario, differents users wants to transmit packets over a shared channel. Each user generates, on average, 12 packets per second and each packet is 4 kbits in size. 

We have 2 options:
1.  The channel consists of an 8 kbps line. Users use a slotted ALOHA protocol to transmit their packets.
2.  The channel consists of two lines of 8 kbps each. Due to it's more difficult to synchronize the two lines between users, they use an ALOHA (pure) protocol to transmit their packets alternating between the two lines.

## Question 1.
For both scenarios, 
- How many packets are sent per second? 

> In this case, numbers of packets sent per second is the number of packets generated per second; i.e., 12 packets per second.
> So, for the differents channels:
> 1. 12 packets per second are sent by only one line. There's only one line.
> 2. Now, we have 2 lines so we send 6 packets per second per line.

- What is the transmission time of a packet?
> If each packet has 4 kbits and the capacity of the line is 8kbps, the transmision time of a packet is T = 4 kbits/8 kbps = 0.5 sec.

## Question 2.
Now, for the two scenarios, calculate the average number of packets successfully transmitted in one second. 
- What is the average number of retransmissions per second?
> The average number of packets successfully transmitted per second is equal to: 
> S/T = G/T*e^{-G}
- Which of the two scenarios is better in terms of performance?
