*Definition* $quad$ Let $V:$ IPS$\/_RR, dim V=3.$ *Rotation* in $V:=$ orthogonal $T in "End"(V), det T=1.$

Theorem tells us they are either $1_(n times n), mat(1,,;,-1,;,,-1)$ or $mat(1,;,R(theta))$ under some suitable ONB, i.e. $ mat(1,;,,R(theta)), quad theta in RR, $ with no constraints on $theta$ up to $mod 2pi.$ This rotation can be described as "take $v_1$ as axis and rotate by $theta$".

Let $V: RR$-vs, $dim=n.$ Fix an ordered basis $e_1,dots,e_n$ (may assume $V=RR^n$).

*Recall* $quad {T in "End"(V) "invertible"} attach(<-->,t:"1:1") {"ordered basis in" V}.$ \ In the context of geometry, we define *frames* in $V:=$ ordered basis of $V.$ We say two frames have the same *orientation* if $exists T in "End"(V), det T>0 "s.t." (T v_1,dots,T v_n)=(w_1,dots,w_n).$ One can show this is an equivalence relation on frames.

Now, assume $V:$ IPS$\/_RR, dim V=n.$ Fix $e_1,dots,e_n:$ (ordered) ONB. \ *Orthogonal frames* $:=$ frames $underbracket(v_1dots v_n, "ONB")$ of $V.$ Hence $ {T in "End"(V) "orthogonal"} attach(<-->,t:"1:1") {"orthogonal frames of" V}, \ {T in "End"(V) "orthogonal", det=1} attach(<-->,t:"1:1") {"orthogonal frames of" V "with same orientation as" e_i} $ Specifying $n=3$ gives $ {"rotations in" RR^3} attach(<-->,t:"1:1") {"positive oriented orthogonal frames in" RR^3}. $

*Definition* $quad$ $forall u in RR^3, theta in RR,$ define $R_u (theta):=$ "rotate around $u$ by an angle of $theta$". 

From above we know $exists "orthogonal frame" u_1,u_2,u_3$, positive oriented s.t. $ R_u (theta)=mat(1,,;,cos theta,-sin theta;,sin theta,cos theta)=mat(1,;,R(theta)) $ under ONB $u_1,u_2,u_3.$ Note that $u_2,u_3$ may differ by a rotation in $angle.l u_1 angle.r^perp,$ and any valid selection of $u_2,u_3$ yield the same $R_u (theta).$

#pagebreak()

*Examples* $ R_(e_1) (theta)&=mat(1,,;,cos theta,-sin theta;,sin theta,cos theta), \ R_(e_2) (theta)&=mat(1,,;,cos theta,-sin theta;,sin theta,cos theta) quad ("under ONB" e_2,e_3,e_1) \ &= mat(cos theta,,sin theta;,1,;-sin theta,,cos theta), \ R_(e_3) (theta)&=mat(cos theta,-sin theta,;sin theta,cos theta,;,,1). $

*Goal*: express general rotations in terms of simpler ones (idealy $R_e_i$). \ Assume $T <-->$ positive oriented orthonormal frame $(u_1,u_2,u_3).$

== $section$ Euler's angles

*Procedure*: Fix $T,u_1,u_2,u_3$ as above. Note that all intermediate results are positive oriented orthonormal frames of $RR^3.$

- Set $display(f_2:=cases(e_3 times u_3 quad &"if" e_3 "," u_3 "are l.indep", e_2 &"otherwise"))$ , then $f_2 perp u_3,e_3.$ Now take $psi "s.t." R_e_3 (psi)e_2=f_2.$ \ Now $R_e_3 (psi):(e_1,e_2,e_3) |-> (f_1,f_2,e_3)$ for some $f_1$. (Note that $e_2 perp e_3$.)

- $e_3, u_3 perp f_2,$ so may take theta s.t. $R_f_2 (theta) e_3=u_3.$ \ Now $R_f_2 (theta): (f_1,f_2,e_3) |-> (g_1,f_2,u_3)$ for some $g_1.$

- $g_1,u_1 perp u_3,$ so may take $phi$ s.t. $R_u_3 (phi) g_1=u_1.$ \ Now $R_u_3 (phi):(g_1,f_2,u_3)|->(u_1,square.filled,u_3).$ Since this is a positive oriented orthonormal frame, we can conclude $square.filled=u_2.$

*Theorem* $quad$ Let $T$ be a rotation in $RR^3$ corresponding to $(u_1,u_2.u_3),$ then $ T=R_u_3 (phi) R_f_2 (theta) R_e_3 (psi). $ We say $T$ is expressed by the *Euler angles* $(phi,theta,psi).$

*Proof* $quad$ Both sides carry $(e_1,e_2,e_3)$ to $(u_1,u_2,u_3).$ #h(1fr) $square.stroked$

*Theorem* $quad$ We also have $T=R_e_3 (psi) R_e_2 (theta) R_e_3 (phi).$

*Lemma* $quad$ Let $P$ be an orthogonal transformation, $epsilon:=det P in {plus.minus 1}.$ Then $forall ||u||=1, theta in RR,$ $ P R_u (theta) P^(-1)=R_(P u) (epsilon theta). $

#pagebreak()

*Proof* $quad$ Take a positive oriented orthonormal frame $(u,v,w)==>$ so is $(P u,P v,epsilon P w).$ \ To show: $P R_u (theta)=R_(P u) (epsilon theta) P.$ $ R_(P u) (epsilon theta) P: u&|->P u|->P u, \ v&|->P v|->P v cos epsilon theta+epsilon P w sin epsilon theta, \ epsilon w&|->epsilon P w|->- P v sin epsilon theta + epsilon P w cos epsilon theta. \ \ P R_u (theta): u&|->u|->P u, \ v&|->v cos theta + w sin theta|->P v cos theta+P w sin theta, \ w&|->-v sin theta+ w cos theta|->-P v sin theta+P w cos theta. $ $==> R_(P u) (theta)P, P R_u (theta)$ have the same effect on $(u,v,w).$ #h(1fr) $square.stroked$

*Proof of Theorem* $quad$ Recall that $f_2=R_e_3 (psi) e_2.$ \ Then $R_f_2 (theta) attach(=,t:"Lem") R_e_3(psi) R_e_2 (theta) R_e_3(psi)^(-1),$ or $ R_f_2 (theta) R_e_3 (psi)=R_e_3 (psi) R_e_2 (theta). $ Also note that $u_3=R_f_2 (theta) e_3=R_f_2 (theta) R_e_3 (psi) e_3,$ hence $ R_u_3 (phi) &= R_f_2(theta) R_e_3 (psi) R_e_3(phi) R_e_3(psi)^(-1)R_f_2(theta)^(-1), $ which gives $ R_u_3(phi) R_f_2(theta) R_e_3(psi) &= R_f_2(theta) R_e_3(psi)R_e_3(phi) \ &= R_e_3(psi) R_e_2(theta) R_e_3(psi). $ #h(1fr) $square.stroked$

In terms of matrices, $ T=mat(cos psi, -sin psi,;sin psi, cos psi,;,,1;) dot mat(cos theta,,sin theta;,1,;-sin theta,,cos theta) dot mat(cos phi,-sin phi,;sin phi,cos phi,;,,1). $

*Remark* $quad exists$ other conventions. Different $(phi,theta,psi)$ may yield same rotations due to topological reasons. A simple example is $theta=0,phi+psi=0$ all returns $id.$

Next: another (better) way to describe rotations in $RR^3$.

== $section$ Quaternions

*Definition* $quad$ Let $HH$ be a $RR$-vs with $dim=4$ and basis $1,"i","j","k".$ 
- Addition and subtraction is immediately derived from the vector space structure. 
- Multiplication $HH times HH->HH$ is $RR$-bilinear, hence defining the multiplication of ${1,"i","j","k"}$ is enough. 
 - $forall x in {1,"i","j","k"}, 1 dot x=1=x dot 1,$
 - $"i"^2="j"^2="k"^2=-1,$
 - $"ij"="k"=-"ji", "jk"="i"=-"kj", "ki"="j"=-"ik".$
 $==>$ This defines $HH times HH->HH.$ Can check: $(HH,+,0,dot,1)$ is a ring!

Distributivity is clear from bilinear. However $HH$ is not commutative from definition. \ From vector space structure we can write $ q=a+b"i"+c"j"+d"k" in HH, quad a,b,c,d in RR, $ where $a,b,c,d$ are unique. Note that $RR,CC arrow.r.hook HH$ are natural.