# Circular Restricted Three-Body Problem

*Please enable [MathJax Plugin for Github](https://chrome.google.com/webstore/detail/mathjax-plugin-for-github/ioemnmodlmafdkllaclgeombjnmnbima?hl=en) or similiar to view $\LaTeX$.*
## Introduction
When trying to find the motion of a comet (mass $m_3$) in the three-body system including the Earth and the Sun (masses $m_2$ and $m_1$ respectively), the mass of the comet is much smaller than the other two; i.e. $m_3<<m_2<m_1$. Beacuse of this the 3 body problem is a restricted 3 body problem; furthermore, since the two larger masses rotate about common center of mass this case is called a circular restricted three-body problem (CR3BP).

&nbsp;&nbsp;&nbsp;&nbsp; If the comet's position is $\vec{r}$ then the total force exerted on it is,
\begin{equation}
    \vec{F} = - \frac{Gm_2m_3}{|\vec{r}-\vec{r}_2|^3}(\vec{r}-\vec{r}_2) - \frac{Gm_1m_3}{|\vec{r}-\vec{r}_1|^3}(\vec{r}-\vec{r}_1)
\end{equation}
where $\vec{r}_1$ and $\vec{r}_2$ are the positions of $m_1$ and $m_2$ respectively. Equation (1) is the basis of the CR3BP; that being said, this problem will be much easier to solve if it is normalized and generalized. I will take an almost purely mathematical approach to this, which will in return help with finding the Lagrange points and hence the stationary orbits.

## Normalizing the Problem
To normalize the problem start by redefining the distance between the primary masses,
\begin{equation}
  \left| r_1 - r_2 \right| \equiv 1
\end{equation}

Since I am normalizing a problem which includes the concept of *barycenter*, it would only make sense to redefine the small primary mass (in this case the Earth) such that $0<m_2<1$.
\begin{equation}
    m_2\ \longrightarrow\ \frac{m_2}{m_1+m_2}
\end{equation}
Simplifying things further,
\begin{align}
    &m_2 = \mu \\\\\\
    &m_1 = 1 - \mu
\end{align}
so with these new masses I now have a normalized relationship between the two bodies;
\begin{equation}
    m_2 + m_1 = 1
\end{equation}

To accommodate for the stationary configurations---the two primary large masses have fixed positions in a co-rotating frame with the origin at the center of mass [2].
\begin{equation}
    \Omega = \frac{G(m_2 + m_1)}{r^3_{12}}
\end{equation}
where $r_{12}$ is the distance between the two primary masses. Now that I am working in a non-inertial frame of reference, we know that for uniform circular motion the acceleration is,
\begin{equation}
    a=\frac{v^2}{r}={\Omega^2r}
\end{equation}
but since it is a rotating frame, the velocity changes by $\Delta v$ at each rotation. Therefore,
\begin{align}
    a &= \frac{(v+\Delta v)^2}{r} \\\\\\
    &= \frac{\Omega^2 r^2 + 2\Omega r\Delta v + \Delta v^2}{r} \\\\\\
    &= \Omega^2 r + 2\Omega \Delta v + {\frac{\Delta v^2}{r}} \label{line1} \\\\\\
    &\approx \Omega^2 r + 2\Omega \Delta v
\end{align}
where the last term in line \eqref{line1} has been ignored because it is small relative to the other two terms.


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
