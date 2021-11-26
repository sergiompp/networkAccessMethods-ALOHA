# SCENARIO 2 - Telephone Networks

The final and direct sections are shown in the telephone network in Figure 1 ([Structure of the telephone network](practice2/Figura 1 - Structure of the telephone network.png)).

All sections are made up of several lines. If one of these lines is free, the call can be made on this section.

If all lines are busy, the section is in congestion and the call is lost (final section) or has to overflow on the final route (direct section).

## Question 1.

Indicates the direct routes and the final route between nodes A and G.

> - Final Route:
>   - A -> B -> C -> D -> E -> F -> G
> - Direct Routes:
>   - A -> G
>   - A -> B -> E -> F -> G
>   - A -> B -> c -> E -> F -> G

## Question 2.

The exchanges (nodes) C and E are connected with 10 lines and the traffic offered between these two exchanges is 10 E. Assuming that calls arrive according to a Poisson distribution and service time follows an exponential distribution, find the probability that the direct section between C and E is in congestion.

> It is a queuing model M / M / c = 10 / c = 10, where "M" and "M" define the distributions of calls and service time respectively (Kendall-Lee notation). 10 lines are 10 servers and there isn't queue.

> The probability that the direct section between the exchanges C and E is in congestion is equal to the blocking probability, which is equal to B (A<sub>0</sub>, c), where B (.,.) Is the Erlang function B, A<sub>0</sub> is the offered traffic and c is the number of servers. In this case, A<sub>0</sub> = 10 y c = 10 so:

> Prob {section between C & E is in congestion} = B(10,10) = 0.214 -> 21,5 %

> (**Earlng B Table** -> [Link here](https://pdfslide.net/documents/erlang-b-traffic-table-568b2892389c0.html))
