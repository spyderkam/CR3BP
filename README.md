# Circular Restricted Three-Body Problem

*Please enable [MathJax Plugin for Github](https://chrome.google.com/webstore/detail/mathjax-plugin-for-github/ioemnmodlmafdkllaclgeombjnmnbima?hl=en) or similiar to view $\LaTeX$.*
## Introduction
When trying to find the motion of a comet (mass $m_3$) in the three-body system including the Earth and the Sun (masses $m_2$ and $m_1$ respectively), the mass of the comet is much smaller than the other two; i.e. $m_3<<m_2<m_1$. Beacuse of this the 3 body problem is a restricted 3 body problem; furthermore, since the two larger masses rotate about common center of mass, this case is called a circular restricted three-body problem (CR3BP).

&nbsp;&nbsp;&nbsp;&nbsp; If the comet's position is $\vec{r}$ then the total force exerted on it is,
\begin{equation}
    \vec{F} = - \frac{Gm_2m_3}{|\vec{r}-\vec{r}_2|^3}(\vec{r}-\vec{r}_2) - \frac{Gm_1m_3}{|\vec{r}-\vec{r}_1|^3}(\vec{r}-\vec{r}_1)
\end{equation}
where $\vec{r}_1$ and $\vec{r}_2$ are the positions of $m_1$ and $m_2$ respectively. Equation (1) is the basis of the CR3BP; that being said, this problem will be much easier to solve if it is normalized and generalized. I will take an almost purely mathematical approach to this. Which will in return help with finding the stationary orbits.

## Normalizing the Problem
To normalize the problem start by redefining the distance between the primary masses,
\begin{equation}
  \left| r_1 - r_2 \right| \equiv 1
\end{equation}




<null>
  <br>
  <null>
    <br>
    
## References
$\hphantom{++}$[1] *Lagrange Point* (2020), Wikipedia, retrieved on 10/01/2020 from [https://en.wikipedia.org/wiki/Lagrange_point](https://en.wikipedia.org/wiki/Lagrange_point). <br>
$\hphantom{++}$[2] Nkosi N. Trim, *Visualizing Solutions of the Circular Restricted Three-Body Problem*, Rutgers
University, 2008.

## Notes
- In my code the number 1 refers to the Earth, and number 2 refers to the Sun. This is exactly the opposite of the README where the index 1 refers to the Sun.
