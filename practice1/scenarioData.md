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

> ###### ***SITUATION - SCENARIO 1***
> First, we know that the average number of packets successfully transmitted per second is equal to: 
> S/T = G/T*e<sup>-G</sup>

> Besides, we know too that if 12 packets are sent per second over a line using a slotted ALOHA protocol then the number of packets sent at time T is equal
a G = 12 * T = 6 packages. 

> So the the average number of packets transmitted in one second successfully equals to S/T = 0.03.

> Being the average number of retransmissions per second: R/T = (e<sup>-G</sup>-1)/T = 804.9.

> ###### ***SITUATION - SCENARIO 2***

> How here 6 packets per second per line are sent over two lines using an ALOHA (pure) protocol, for each line, the number of packets sent at time T is equal to 6 * T = 3 packets.

> Being the average number of packets transmitted in one second successfully equal to 2*(S/T) = 2G/T*e<sup>-2G</sup> = 0.03. Also, the average number of retransmissions per second: 2*(R/T) = (e<sup>-2G</sup>-1)/T = 1610.

- Which of the two scenarios is better in terms of performance?

> In this case, both scenearios have the same performance. Why? Because we have 2 opposing situations.

> For the first scenario, the number of packets to be transmitted is double but when using a protocol such as slotted ALOHA, the probability of collision is lower. After that, in scenario 2, half the packets are transmitted per line but using ALOHA (pure) where the probability of collision is higher. Consequently, both effects cancel each other out. 

## Question 3.
If the propagation delay and transmission time of an ACK / NACK are zero and the average waiting time before forwarding a packet is 5 times the transmission time of a packet, for both scenarios, calculate the average time between first transmission of the packet and its reception successfully.

> ###### ***SITUATION - SCENARIO 1***

> We konw that the delay is equal to D = (e<sup>-G</sup>-1)(T<sub>ACK</sub> + T<sub>BO</sub>) + (3/2)T. Where:
> - G = 6 packets.
> - T = 0.5 sec.
> - T<sub>ACK</sub> = 0 sec.
> - T<sub>BO</sub> = 5T = 2.5 sec.

> So, delay is D = 20.14 min. 

> ###### ***SITUATION - SCENARIO 2***

> In this case, the delay is equal to D = (e<sup>-2G</sup>-1)(T<sub>ACK</sub> + T<sub>BO</sub>) + T. Where:
> - G = 6 packets.
> - T = 0.5 sec.
> - T<sub>ACK</sub> = 0 sec.
> - T<sub>BO</sub> = 5T = 2.5 sec.

> So, delay is D = 20.12 min. 
