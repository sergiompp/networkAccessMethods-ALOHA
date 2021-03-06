# SCENARIO 3 - Packet Transmission

## Question 1.

A node transmits a 128 byte packet over a 64 kbps channel and the propagation delay is 10 ms. 

To synchronize the sending between the sender and the receiver, the flow control method "stop and wait" is used with an ACK of one bit and a wait time of 40 ms.

* What is the transmission time of a packet and an ACK?

> Packet size is 128 * 8 bits = 1 MB and the channel has a capacity of 64 kbps. So, the transmission time of a packet is 1 MB / 64 kbps = 16 msec.

> Also, ACK size is 1 bit. So its transmission time is 1 / 64 kbps = 0.0156 msec.

* If there are no errors in the transmission of the packet or the ACK, calculate the time between transmission of the packet and reception of the ACK to the sender. What is the channel utilization, that is, the percentage of the time the packet is being transmitted?

> We know that total time is D<sub>c</sub> = T<sub>packet</sub> + T<sub>ACK</sub> + 2t. Where:
> - T<sub>packet</sub> = 16 msec
> - T<sub>ACK</sub> = 0.0156 msec.
> - t = 10 msec.

> So, total time is D<sub>c</sub> = 36.01656 msec.

> And, and the use of the channel is T<sub>packet</sub> / D<sub>c</sub> = 0.4443 -> 44.43 %

* Calculate the time between the transmission of the packet and the reception of the ACK to the sender if a packet is lost with a probability of 0.1.

> According to the following table:

> | Number of Lost Packets | Time | Probability |
> | ------------- | ------------- | ------------- |
> | 0 | D<sub>c</sub>  | 1-p |
> | 1 - The package is forwarded once | D<sub>c</sub> + T<sub>Wait</sub> | p(1-p) |
> | 2 - The packet is forwarded twice | D<sub>c</sub> + 2T<sub>Wait</sub> | p<sup>2</sup>(1-p) |
> | 3 - The packet is forwarded three times | D<sub>c</sub> + 2T<sub>Wait</sub>  | p<sup>2</sup>(1-p) |
> | - | - | - |
> | n - The packet is forwarded n times | D<sub>c</sub> + nT<sub>Wait</sub>  | p<sup>n</sup>(1-p) |

> So, The mean time between transmission of the packet and reception of the ACK to the sender can be calculated as: 

> D = sum({D<sub>c</sub> + nT<sub>Wait</sub>} * {p<sup>n</sup>(1-p)})

> And, operating, the result is D = D<sub>c</sub> + T<sub>Wait</sub> * (p/(1-p)) = 40.46 msec.


## Question 2.

A packet switched network sends 1 KB packets and the link between two nodes has a capacity of 4 Mbps.

The packets arrive at the nodes according to a Poisson distribution and the service time follows an exponential distribution.

* What is the average number of packets served per second?

> Packet size is 1 KB = 8000 bits and the channel capacity is 4 Mbps. So, each node can send 4 Mbps / 1 KB = 500 packets per second.  

* What is the average number of packets per second that a node can accept so that the average wait time in the buffer is equal to 5 ms?

> Because packet arrivals follow a Poisson distribution, service time follows an exponential distribution and there is only one link, this system can be modeled as M / M / 1. Therefore, the average waiting time in the buffer is given by:

> W<sub>q</sub> = {ro* E[S]} / {1 - p}, where:

> - W<sub>q</sub> = 5 msec.
> - E[S] = 1/500 2 msec.
> - ro = alpha * E[S] (where alpha is the average number of packets reaching the system or it is the number of packets per second that a node accepts)

> Alpha = {W<sub>q</sub>} / {(E<sup>2</sup>[S]) + (W<sub>q</sub> * E[S])} = 357.14 packets per second.

* How much memory on average will the node be occupying?

> The average number of packets (clients) in the queue is:

> L<sub>q</sub> = {ro<sup>2</sup>} / {1 - ro} = 1.79 packets.

> If each packet is 1 KB in size, on average it is occupying 1.79 KBytes.

* Now the buffer on the node has a memory of 5 KB. The node uses the packet drop algorithm to mitigate congestion on the network. What is the probability that the node will have to drop packets?

> We know that the maximum number of packet can be in the system are 6 (5 packets in the queue and 1 more on the channel) due to buffer's memory is 5 KB and packet's size is 1 KB. So, the system can be modelate like M / M / 1 / 6. 
