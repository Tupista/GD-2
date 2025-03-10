== $section$ Complex inner product space / Hermitian space 

*Definition* $quad$ Given $V: CC$-vs. A *complex / Hermitian inner product space* on $V$ means an Hermitian form $(|)_V: V times V->CC,$ positive definite. The datum $(V,(|)_V)$ is called a complex / Hermitian IPS, or simply IPS$\/_CC.$

$forall v in V,$ its *length* $||v||:=sqrt((v|v)),$ so:
+ $||v||=0 <==> v=0$ since $(|)_V$ is positive definte.
+ $||t v||:=sqrt((t v|t v))=abs(t)||v||,forall t in CC.$
+ $||v+w||^2=||v||^2+||w||^2+2"Re"(v|w).$ If $(v|w)=0,$ we say they are *diagonal*, written as $v perp w,$ in which case $||v+w||^2=||v||^2+||w||^2.$
+ If $||v||=1,$ we say $v$ is a *unit vector*.

In general, given a subset $S subset V$:
- $S$ is *orthogonal* if $S in.rev.not 0,$ and $forall v,w in S, v!=w ==> v perp w.$
- $S$ is *orthonormal* if $S$ is orthogonal and $forall v in S, ||v||=1.$

*Fact* $quad S subset V "orthogonal" ==> S "linearly independent".$

*Proof* $quad$ For $v=limits(sum)_(i=1)^m a_i v_i, a_i in CC, v_i in S,$ we can write $a_i = ((v_i|v))/((v_i|v_i)).$ Hence
$ (v_i|v)=sum_(i=1)^m a_j (v_i|v_j)=a_i (v_i|v_i), $
that is $v=0 <==> forall i, a_i=0. qed$

*Definition* $quad$ Let $V:$ IPS$\/_CC, V_0,V_1$ be subspaces of $V.$ $V_0 perp V_1$ means $forall v_0 in V_0, v_1 in V_1, v_0 perp v_1.$ \
Given a family of subspaces $(V_i)_(i in I)$ of $V,$, if $V=limits(plus.circle.big)_(i in I)V_i$ as vector space, $i!=j ==> V_i perp V_j,$ we say \
$V$ is the *orthogonal direct sum* of $(V_i)_(i in I)thin.$

*Fact* $quad$ Given $V$: IPS$\/_CC, V_0 subset V:"subspace", dim V_0 < infinity,$ define $ V_0^perp:={v in V | forall v_0 in V_0, (v|v_0)=0}, $
then $V=V_0 plus.circle V_0^perp.$ Proof same as the real case with the construction
$ v=underbracket(sum_(i=1)^m (v|v_i) v_i, in V_0) + underbracket((v - sum_(i=1)^m (v|v_i)v_i), in V_0^perp), $
where $v_1,dots,v_m$ is an ONB of $V_0.$ This is also the *orthogonal projection* of $v$ to $V_0.$

*Proposition* $quad$ $v perp w ==> ||v+w||^2=||v||^2+||w||^2.$ Proof somewhere above.

*Theorem (Cauchy-Bunyakovsky-Schwarz)* $quad$ In a IPS$\/_CC$ $V$,we have
$ |(v|w)|^2<=(v|v)(w|w), $
with equality $<==> v,w$ linearly dependent.

*Proof* $quad$ Recall that in the real case we calculated the discriminant of $(t v+w|t v+w)$ and showed that $Delta>=0$ is equivalent to the statement to be proved. Here we use similar tricks.

Assume $w!=0.$ $forall t in CC, 0<=||v+t w||^2=||v||^2+abs(t)^2||w||^2+2"Re"(v|t w).$ Put $t=-((w|v))/((w|w))$ to get
$ 0<=||v||^2-(|(v|w)^2|)/((w|w)). $
If equality holds then $v=-t w$ for this choice of $t,$ hence $v,w$ are linearly dependent. Conversely, if $v=t w$ for some $t,$ then we can easily show the equality holds. $qed$

*Corollary (Triangle Inequality)* $quad$ $||v+w||<=||v||+||w||, $ with equality $<==> v=t w or w=t v$ for some $t>=0.$

*Proof*
$ ||v+w||^2=||v||^2+||w||^2+2"Re"(v|w)<=||v||^2+||w||^2+2abs((v|w))<=(||v||+||w||)^2. $
Equality holds when $v=t w or w=t v, t in CC ==> t >=0$ for 1st equality.$qed$

*Theorem (Gram-Schmidt)* $quad$ Let $V$ be an IPS over $CC, v_1,dots,v_n in V$ be linearly independent. Define deductively:
$ w_1&=v_1, \
w_k &=v_k-sum_(i=1)^(k-1)((v_k|w_i))/((w_i|w_i))w_i, $
then $w_1,dots,w_n$ are orthogonal and $forall k, angle.l v_1,dots,v_k angle.r = angle.l w_1,dots,w_k angle.r.$ 

*Proof* $quad$ Same as real case with due care on complex conjugation.$qed$

Can get orthonormal $u_1,dots,u_n$ with $u_i=w_i/(||w_i||),$ and $w_i=v_i$ if $v_i$ is already orthogonal.

*Consequences*

+ Let $v_1,dots,v_l in V$ be orthogonal (resp. orthonormal), where $V$ is an IPS on $CC$ with $dim<infinity$ \
 $==>$ They can be extended to an orthogonal (resp. orthonormal) basis of $V.$ \
 $because$ They can be first extended to a basis, then apply Gram-Schmidt to get an orthogonal (resp. orthonormal) basis.

+ $exists$ ONB for any IPS$\/_CC$ by setting $l=0$ in (1).

*Examples*

- Standard inner product of $CC^n$: $x dot y=limits(sum)_(i=1)^n overline(x_i)y_i$ or $x^dagger y.$ \
 Standard basis $e_1,dots,e_n$: $e_i = (dots ,1,dots)$ with $1$ placed at the $i$-th entry.

- Function space: Let $a<b$ in $RR, C[a,b]={f:[a,b]->CC, "continuous"}.$ \
 This forms a $CC$-vector space, and we can define a inner product $(f|g)=integral_a^b f(x)g(x)dif x,$ which is positive definite and Hermitian. However $dim=infinity.$

- Variant: limit the previous space to polynomials. Can study the result of Gram-Schmidt, etc.

*Notion of isomorphisms* $quad$ Let $V,W$ be IPS$\/_CC$. If $T in "Hom"(V,W), ||T v||_W=||v||_V, forall v in V,$ we say $T$ is *isometry*. If $V attach(arrows.rl,t: T, b: S) W$ are a pair of isometry, and $S T=id_V, T S=id_W,$ we say they are *isomorphisms*.

*Observations* (same as the real case)

+ $T in "Hom"(V,W)$ is an isometry $<==>$ $(T v_1|T v_2)_W=(v_1|v_2)_V, forall v_1,v_2 in V.$ \
 $because ||dot||^2$ determines $"Re"(dot|dot),$ and by adding an $"i"$ it further determines $"Im"(dot|dot).$ 

+ If $T in "Hom"(V,W)$ is an isometry, then $T$ is an isomorphism between IPS$\/_CC,$ i.e. $T^(-1)$ is an isometry, $because$ $forall w in W, ||T^(-1)w||_V=||v||_V=||T v||_W=||w||_W$ where $v:=T^(-1)w.$

+ Suppose $dim V=: n in ZZ_(>=1),$ then
 $ {"Isomorphisms of IPS"\/_CC: CC^n + "std IP" arrow.tilde V} attach(<-->, t: 1:1) {"Ordered ONB" v_1,dots,v_n "of" V}. $
 Since we already know 
 $ {"Isomorphism of "CC"-vs":CC^n arrow.tilde V} attach(<-->,t:1:1) {"Ordered basis" v_1,dots,v_n "of" V}. $
 - Given $T$ as above, if $T$ is $tilde.eq$ of IPS$\/_CC$, then $T e_1,dots,T e_n$ is an ONB since $e_1,dots,e_n$ is an ONB.

 - Given an ONB $v_1,dots,v_n in V,$ define $T$ s.t. $T e_i=v_i,$
 $ mat(delim:||, T(sum_i a_i e_i))^2 = mat(delim:||, sum_i a_i v_i)^2=sum_i |a_i|^2=mat(delim:||,sum_i a_i e_i)^2. $

+ Since any IPS$\/_CC$ with $dim=n$ has an ONB, they are $attach(tilde.eq, b:phi) (CC^n, "std IP")$ where $phi$ is not unique.

*Definition (Unitary operator)* $quad$ Given $V:$ IPS$\/_CC,$ a *unitary operator* on $V$ \
$ :="Isomorphism" (V,(|))arrow.tilde(V,(|)), $ i.e. automorphism of IPS$\/_CC.$ Here the term "operator" means linear map $V->V.$

*Proposition* $quad$ Given $V:$ IPS$\/_CC, dim<infinity.$ Then $T "unitary" <==> T^*=T^(-1).$ \
Here $T^*$ can always be defined since $(|)_V$ is nondegenerate.

*Proof* $quad$ Asuume $T$ is invertible.
$ T "unitary" &<==> (T v_1|T v_2)=(v_1|v_2), forall v_1,v_2 in V \
&<==> (v'_1|T v_2)=(T^(-1)v'_1|v_2), forall v'_1,v_2 in V \
&<==> T^*=T^(-1) "by defintion". $