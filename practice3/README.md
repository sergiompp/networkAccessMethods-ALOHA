# SCENARIO 3 - Packet Transmission

## Question 1.

A node transmits a 128-byte packet over a 64 kbps channel and the propagation delay is 10 ms. 

To synchronize the sending between the sender and the receiver, the flow control method "stop and wait" is used with an ACK of one bit and a wait time of 40 ms.

* What is the transmission time of a packet and an ACK?
* If there are no errors in the transmission of the packet or the ACK, calculate the time between transmission of the packet and reception of the ACK to the sender. What is the channel utilization, that is, the percentage of the time the packet is being transmitted?
* Calculate the time between the transmission of the packet and the reception of the ACK to the sender if a packet is lost with a probability of 0.1.



## Question 2.

A packet switched network sends 1 KB packets and the link between two nodes has a capacity of 4 Mbps.

The packets arrive at the nodes according to a Poisson distribution and the service time follows an exponential distribution.

* What is the average number of packets served per second?
* What is the average number of packets per second that a node can accept so that the average wait time in the buffer is equal to 5 ms?
* How much memory on average will the node be occupying?
* Now the buffer on the node has a memory of 5 KB. The node uses the packet drop algorithm to mitigate congestion on the network. What is the probability that the node will have to drop packets?
