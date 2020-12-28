# Circular Restricted Three-Body Problem

*Please enable [MathJax Plugin for Github](https://chrome.google.com/webstore/detail/mathjax-plugin-for-github/ioemnmodlmafdkllaclgeombjnmnbima?hl=en) or similiar to view $\LaTeX$.*
## Introduction
When trying to find the motion of a comet (mass $m_3$) in the three-body system including the Earth and the Sun (masses $m_2$ and $m_1$ respectively), the mass of the comet is much smaller than the other two; i.e. $m_3<<m_2<m_1$. Beacuse of this the 3 body problem is a restricted 3 body problem; furthermore, since the two larger masses rotate about common center of mass, this case is called a circular restricted three-body problem (CR3BP).

&nbsp;&nbsp;&nbsp;&nbsp; If the comet's position is $\vec{r}$ then the total force exerted on it is,
\begin{equation}
    \vec{F} = - \frac{Gm_2m_3}{|\vec{r}-\vec{r}_2|^3}(\vec{r}-\vec{r}_2) - \frac{Gm_1m_3}{|\vec{r}-\vec{r}_1|^3}(\vec{r}-\vec{r}_1)
\end{equation}
where $\vec{r}_1$ and $\vec{r}_2$ are the positions of $m_1$ and $m_2$ respectively. Equation (1) is the basis of the CR3BP; that being said, this problem will be much easier to solve if it is normalized and generalized. I will take an almost purely mathematical approach to this.

## Normalizing the Problem
