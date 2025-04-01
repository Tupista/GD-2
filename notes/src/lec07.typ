*Last time*: Many results for IPS$\/_RR$ carry over to IPS$\/_CC.$ Examples include $sqrt(T)$ and polar decomposition.

*Theorem (SVD)* $quad$ Let $V,W:$ IPS$\/_CC, dim V=m, dim W=m (m,n< infinity).$ Then $exists "ONB" v_1,dots,v_m in V,w_1,dots,w_n in W, sigma_1>=dots>=sigma_p>=0, p:=min{m,n} "s.t." T v_i = sigma_i w_i.$

The sequence $sigma_i$ is unqiuely determined by $T,$ called the singular values of $T.$

*Proof*  $quad$ $T^* T in "End(V)"$ is self-adjoint, positive semi-definite. From Spectral Theorem we claim its eigenvalues $lambda_1>=dots>=lambda_m>=0,$ with corresponding $"ONB" v_1,dots,v_m.$ Take $sigma_i:=sqrt(lambda_i),$ and rest is same as the real version. #h(1fr) $square.stroked$

In terms of matrices, let $V=CC^m, W=CC^n + "std IP", T$ corresponds to $A in M_(m times n)(CC).$ Then $exists$ unitary matrix $P in M_(m times m)(CC),Q in M_(n times n)(CC) "s.t." attach(Q,tl:dagger)A P = "diag"(sigma_1,dots,sigma_p,0,dots,0),$ i.e. $A=Q "diag"(sigma_1,dots,sigma_p,0,dots,0)attach(P,tl:dagger).$

In fact, $P=(v_1|dots|v_m), Q=(w_1|dots|w_n)$ in terms of $"ONB"$.

*Definition-Proposition (Moore-Penrose inverse)* $quad$ $forall T in "Hom"(V,W),exists! S in "Hom"(W,V) "s.t."$

+ $T S T = S,$
+ $S T S = T,$
+ $(S T)^* = S T,$
+ $(T S)^* = T S.$

*Proof* $quad$ Same as the real case. #h(1fr) $square.stroked$

The connection between SVD and MP inverse remains. If ${v_i},{w_j},{sigma_k}$ are as in SVD of $T,$ then 
$ S w_j=cases(sigma_j^(-1) v_j "," quad &j<="rk"T, 0 "," quad &j>"rk"T) $

In term of matrices, $A=Q mat(sigma_1,,,;,dots.down,,;,,sigma_r,;
,,,)attach(P,tl:dagger) quad ==> quad "MP inverse" = P mat(sigma_1^(-1),,,;,dots.down,,;,,sigma_r^(-1),;,,,;)attach(Q,tl:dagger).$

That is all for complex inner product spaces. Continue with real cases.

== $section$ Orthogonal transformations / operators on IPS$\/_RR$

In this section we will classify all orthogonal operators on IPS$\/_RR$ by showing that they share similar formats. We shall start by recalling some basic knowledge.

Let $V:$ IPS$\/_RR, dim<infinity.$ Recall that $T$ is orthogonal if $T^*=T^(-1)$ (equivalently: $T$ is linear, invertible and preserves inner product). In the case of $V=RR^n + "std IP",$ orthogonal matrix $A in M_(n times n)(RR)$ satisfies $attach(A,tl:t)=A^(-1).$

*Observation* $quad$ $T$ orthogonal $==> det T=plus.minus 1 because A attach(A,tl:t)=1 ==> (det A)^2=1.$

*Definition* $quad$ We say $T in "End"(V)$ is *normal* if $T^* T=T T^*.$ Note that $T$ may be non-diagonalizable, so Spectral Theorem is unavailable.

*Lemma* $quad$ If $T$ is normal and $exists k>=0 "s.t." T^k=0 in "End"(V),$ then $T=0_V in "End"(V).$

*Proof* $quad$ Work in matrices. Assume $T <--> A in M_(n times n)(RR), attach(A,tl:t)A=A attach(A,tl:t).$ Since $RR subset CC, A$ is also normal in the sense of complex IPS. Spectral Theorem tells us $exists P:$ unitary, $P^(-1)A P=mat(lambda_1,,;,dots.down,;,,lambda_n), lambda_i in CC.$ Therefore $A^k=P^(-1)mat(lambda_1^k,,;,dots.down,;,,lambda_n^k)P=0 quad ==> quad forall i,lambda_i=0.$ #h(1fr) $square.stroked$

*Next* we will classify orthogonal operators on $V:$ IPS$\/_RR.$

*Observation* $quad A in M_(n times n)(RR): "orthogonal" <==> A=(v_1|dots|v_n), thick {v_i}: "ONB of" V.$

- $n = 1: "End"(V) tilde.eq RR,$ i.e. orthogonal operators $={plus.minus id_V}.$ 

- $n=2:$ Assume $V=RR^2+$ std IP. $ mat(alpha,beta;gamma,delta) "is orthogonal" <==> cases(alpha^2+gamma^2=beta^2+delta^2=1, alpha beta + gamma delta = 0) $ Take $theta in RR "s.t." alpha=cos theta, gamma=sin theta.$ All unit vectors $perp (alpha,gamma)$ are $ {(sin theta, -cos theta), (-sin theta, cos theta)} in.rev (beta,delta), $
 with $plus.minus$ determined by $display(mat(delim:"|",alpha,beta;gamma,delta)) in {plus.minus 1}.$ Specifically $ mat(delim:"|", cos theta, -sin theta; sin theta, cos theta)=1, quad mat(delim:"|", cos theta, sin theta; sin theta, -cos theta)=-1. $

 *Remark* $quad$ Fixing $theta in 2pi ZZ$ and $det=1$ gives $display(mat(1,0;0,-1)),$ which acts on $RR$ by reflection on $x$-axis.

 When $det=1$, we define $ mat(cos theta, -sin theta; sin theta, cos theta)=:R(theta), $ called the *rotation matrix* of angle $theta mod 2pi.$

 - $R(0)=1_(2 times 2), quad R(-1)=-1_(2 times 2).$

 - $R(theta_1)=R(theta_2) <==> theta_1=theta_2 quad (mod 2pi).$

 - $R(theta)R(phi)=R(theta+phi)=R(phi)R(theta) ==>$ commutative.

 - $R(theta) mat(1;0) = mat(cos theta; sin theta) ==> R(theta)mat(cos phi;sin phi)=R(theta)R(phi)mat(1;0)=mat(cos(theta+phi);sin(theta+phi)).$

 *Lemma* $quad$ Let $theta in RR, P in M_(2 times 2)(RR):$ orthogonal, $epsilon:=det P in {plus.minus 1}.$ Then $ P^(-1)R(theta)P=R(epsilon theta). $

 *Proof* $quad$ 

 - $epsilon=1: exists phi in RR, P=R(phi).$ Then $P^(-1)R(theta)P=R(-phi+theta+phi)=R(epsilon theta).$

 - $epsilon=-1:$ can write $P=R(phi)mat(1,0;0,-1).$ Then $ P^(-1)R(theta)P=mat(1,0;0,-1)R(-phi)R(theta)R(phi)mat(1,0;0,-1)=mat(1,0;0,-1)R(theta)mat(1,0;0,-1)=R(-theta). $ #h(1fr) $square.stroked$

 *Theorem* $quad$ Let $n:=dim V, T in "End"(V):$ orthogonal. $exists "ONB"$ under which $T$ becomes $ "diag"(1_a, -1_b, R(theta_1),dots,R(theta_m)) $ where $a+b+2m=n, quad theta_i in RR\\ZZ pi.$

 *Lemma* $quad$ If $T:$ orthogonal, then $T+T^(-1)$ is self-adjoint with eigenvalues $in [-2,2].$

 *Proof* $quad (T+T^(-1))^*=T^*+T^(**)=T+T^*.$ \ Assume $V=RR^n, T$ viewed as $n times n$ matrix, orthogonal. Since $RR subset CC$ and $T^*T=T T^*,$ from Spectral Theorem $exists P$: unitary, $P^(-1)T P="diag"(lambda_1,dots,lambda_n), lambda_i in CC, abs(lambda_i)=1.$ \ $==>P^(-1)(T+T^(-1))P="diag"(lambda_1+lambda_1^(-1),dots,lambda_n+lambda_n^(-1))==>abs(lambda_i+lambda_i^(-1))<=2.$ #h(1fr) $square.stroked$

 *Proof of Theorem* $quad$ Let $S=T+T^(-1),$ then $V=limits(plus.circle.big)_(lambda in [-2,2]) V_lambda$ (orthogonal). Note that \ $S T=  T^2+1=T S ==> V_lambda$ is $T$-invariant. Hence reduce to the case $S=lambda dot id, lambda in [-2,2].$

 - If $lambda in {plus.minus 2},$ then $underbracket((T plus.minus id), "normal")^2=0_V attach(==>,t:"Lem") T=minus.plus id.$

 - Assume $abs(lambda)<2,$ then $X^2-lambda X+1=0$ has no real roots (irreducible on $RR$) $==>$ It is $"Min"_T.$ \ As a result, $T$ has no real eigenvalues.
 
  Now fix $v in V, v!=0,$ then $v,T v$ are linearly independent. Let $W=angle.l v,T v angle.r, dim W=2.$ \ From $T^2-lambda T+id=0_V$ one can show $W$ is $T$-invariant, hence $W^perp$ is $(T^*=T^(-1))$-invariant. \ Also $T=lambda dot id-T^(-1)$ gives $T=f(T^(-1)),$ so $W^perp$ is $T$-invariant as well with $dim W^perp=n-2.$

  Reduce to the case $V=V_lambda, abs(lambda)<2,dim V=2$ via induction on $dim V$ and replacing $V$ with $W$. By comparing dimension, $X^2-lambda X+1=0$ is exactly $"Char"_T.$ From $det T=1, T=R(theta)$ under some $theta$ and ONB. Here $theta in.not pi ZZ,$ otherwise $S=T+T^(-1)$ has eigenvalue $in {plus.minus 2}.$ #h(1fr) $square.stroked$

 *Remark* $quad$ 
 - The data $a,b,theta_1,dots,theta_m$ are uniquely determined by $T$ up to permutation and $plus.minus theta_i +2 k pi.$
 - $a=$ the multiplicity of $1$ as a root of $"Char"_A.$ $b$ and $theta_i$ is similar.
 - $det T=(-1)^b.$

*Next time*: Special case $dim V=3.$

*Definition* $quad$ When $dim V=3, V:$ IPS$\/_RR$, we say $T in "End"(V)$ is a *rotation* if $T$ is orthogonal and $det T=1.$ From Thm we know $ T attach(<-->,t:exists "ONB") mat(1,;,R(theta)) "or" mat(1,,;,-1,;,,-1). $