*Prop* $quad$ Let $T:V->W, r:="rk"T.$ From SVD we can get ONBs $underline(v), underline(w)$ and singular values $sigma_i.$ Define $S:W->V,$
$ S w_j = cases(
	sigma_j^(-1)v_j "," quad& 1<=j<=r,
	0 "," & j>r
) $
Then $S$ is an MP inverse of $T$. 

In terms of matrices, $exists P in M_(m times m)(RR), Q in M_(n times n)(RR)$, both orthogonal, $Q^(-1)A P = "diag"(sigma_i).$ Define $S<->"matrix" B$ such that $P^(-1)B Q="diag"(sigma_i^(-1)).$

*Proof* $quad$ Use the explicit definition construction of MP inverse $S w  = v''.$
$ & forall w in W, w = sum_(j=1)^n a_j w_j, im T = angle.l w_1,..,w_r angle.r \
==> & w' = sum_(j=1)^r a_j w_j, quad "Set" v := sum_(j=1)^r sigma_j^(-1)a_j v_j, T v = w' \ 
& v in angle.l v_(r+1),..,v_m angle.r^perp = (ker T)^perp \
==> & v = 0 + v = v' + v'' $
Therfore the definition of $S$ agrees with the construction of MP inverse of T. $qed$

== $section$ Min-Max principle

Let $V$ be an inner product space on $RR$. Let $B$ be a symmetric bilinear form $V times V->RR.$ Then $exists! S in "End"(V), S^*=S$ such that $B(v_1,v_2)=(v_1 | S v_2).$ In fact, we can identify $V$ with $RR^n +$ std IP. Then we observe that 
$ exists! A in M_(n times n)(RR), B(v_1,v_2)  = v_1^T A v_2 = v_1 dot A v_2. $
Therefore $S$ is the $A$ in the equation above, and S is self-adjoint since B is symmetric.

$exists "ONB" underline(v) "of" V, lambda_1>=..>= lambda_n$ such that $S v_i = lambda_i v_i.$

A simple observation: 
$ lambda_1 = max_(||v||=1) B(v,v), lambda_n = min_(||v||=1) B(v,v). $

*Proof* $quad$ Let $v = a_1 v_1 + .. + a_n v_n. ||v||=1 <==> sum_(i=1)^n a_i^2 =1.$

$ lambda_n <= (B(v,v) = (v | S v) = sum_(i=1)^n a_i^2 lambda_i) <= lambda_1. qed $

*Remark*
- ${v in V| ||v||=1}$ is compact (if $V tilde.eq RR^n$) and $B(v,v)$ is continuous $==>$ extrema exists.
- Given $S in "End"(V), S=S^*,$ can show $underbrace(limits(max)_(||v||=1)(v | S v), "always exists")$ attained at $v:$ eigenvector of $S$ (Set $V=RR^n$ and use Lagrange multipiers). Can get another real proof of diagonalizable theorem.
- $limits(max)_(||v||=1)B(v,v) = limits(max)_(v eq.not 0)B(v,v)/((v|v))$, since $B(t v,t v)=t^2B(v,v), (t v|t v) = t^2(v|v).$

*Theorem(Courant-Fischer)* $quad$ Given $S:V->W, S=S^*, forall 1<=k<=n:=dim V: $
$ lambda_k = min_(U &subset V, \ dim U& = n-k+1) {limits(max)_(||v||=1,v in U) B(u,v)},\
lambda_k = max_(U &subset V, \ dim &U = k){min_(||v||=1,v in U) B(v,v)}. $

*Proof* $quad$ Replace $S$ by $-S$: min $<->$ max. Suffices to prove the first equation.

Assume $U in V, dim U = n-k+1.$ 
$ dim U inter angle.l v_1,..,v_k angle.r 
=& dim U + k - dim U union angle.l v_1,..,v_k angle.r \
>=& dim U + k -n \
=& 1. $
So we can take $v=sum_(i=1)^k a_i v_i in U, ||v||=1.$
$ B(v,v)=(v|S v)=sum_(i=1)^k lambda_i a_i^2>=lambda_k sum_(i=1)^k a_i^2 = lambda_k. $
$limits(max)_(||v||=1, v in U) B(v,v)>=lambda_k ==> limits(inf)_(dim U=n-k+1){limits(max)_(||v||=1,v in U)B(v,v)>=lambda_k}.$

To show that minimum can be attained, take $U=angle.l v_k,..,v_n angle.r. forall v = sum_(i=1)^n a_i v_i, ||v||=1,$
$ B(v,v)=sum_(i=k)^n sigma_i a_i^2<=lambda_k sum_(i=k)^n a_i^2=lambda_k. $
Therefore $limits(max)_(||v||=1,v in U)B(v,v)=lambda_k$ for this $U$. $qed$

This is also related to SVD.

*Proposition* $quad$ Let V, W be IPSs on $RR$ with $dim < infinity.$ Let $T$ be a linear map $V->W$ with singular values $sigma_1>=..>=sigma_i>=..$ and set $sigma_i=0$ when $i>max{dim V, dim W}.$ Then 
$ sigma_1 = max_(v!=0)(||T v||)/(||v||), wide sigma_(dim V)=min_(v!=0)(||T v||)/(||v||).  $

*Proof* $quad$ Take $S = T^*T in "End"(V), S = S^*$ and let $B$ be the bilinear form corresponding to $S.$
$ B(v_1,v_2)=(v_1|S v_2)=(T v_1|T v_2), B(v,v)=||T v||^2, B(v,v)/((v|v))=((||T v||)/(||v||))^2. $
Recall that $sigma_1^2>=..>=sigma_(dim V)^2$ are the eigenvalues of $S$. From the simple observation above we proved this proposition. $qed$

== $section$ Positive matrices

Let $A in M_(m times n)(RR), A >= B$ means $forall i,j, a_(i j)>=b_(i j). A>0, A>=0$ is defined similarly, not to be mistaken by positive- or semi-positive definite.

*Lemma* $forall A in M_(m times n)(RR), x in RR^n = M_(n times 1)(RR).$
- $A>0, x>=0, x!=0 ==> A x > 0,$
- $A>0, x>=0 ==> A x >=0.$

*Proof* $quad$ The conclusion is obvious. $qed$

To study the eigenvalues and eigenvectors of positive matrices $A in M_(m times n)(RR), A>0,$ we give the following definition:

*Definition* $quad$ For $A in M_(m times n)(RR),$ its *spectral radius* $rho(A)=limits(max)_(lambda in CC, "eigenvalue")|lambda|.$ 

*Theorem* (Perron) $quad$ Let $A in M_(n times n)(RR), A>0.$
+ $rho(A)>0, exists v in RR^n, v>0, A v = rho(A)v.$
+ If $mu:$ eigenvalue of $A$ satisfies $mu!=rho(A)$, then $|mu|<rho(A).$
+ The $rho(A)$-eigenspace of $A$ has $dim = 1.$
+ $rho(A)$ is a single root of $"Char"_A.$

After adding more conditions, can get a more general version for $A>=0$ (Perron-Frobenius Theorem).

*Lemma* $quad$ $A in M_(n times n)(RR), A>0 ==> exists v in RR^n, v>0, A v = rho(A)v.$

*Proof* $quad$ Let $S:={x in RR^n| ||x||=1, x>=0}$. Consider the continuous map
$ L: S &-> RR_(>0) \
x &|-> min_(1<=i<=n,x_i!=0) (A x)_i / x_i $
Since $S$ is compact, $exists v in S,$ s.t. $L$ attains its maximum $rho>0$ at $v$. Here we claim that 
$ A v = rho v and v >0. $

From $L(v)=rho$ we know $A v>=rho v.$ If $A v!=rho v, A v - rho v>=0,$ then $A(A v- rho v)>0$.

Therfore for some small $epsilon,$ 
$ A(A v - rho v)>=epsilon A v ==> A^2 v>=(epsilon+rho)A v ==>  A w>=(epsilon+rho)w $
where $w = t A v, t in RR, w in S.$ Hence we reach a contradiction $==> A v = rho v.$

$v = rho^(-1)underbracket(A,>0) underbracket(v,!=0) ==> v > 0.$ Also from definition of $rho(A)$ we have $rho<=rho(A).$

To show that $rho=rho(A),$ let $mu in CC, w in CC^n\\{0}$ s.t. $A w = mu w.$

For this equation we can show $forall i, |mu||w_i| = |(mu w)_i|$
$  =|sum_(j=1)^n a_(i j)w_j|<=sum_j a_(i j)|w_j|. $
Set $w' = (|w_1|,..,|w_n|) in CC^n,$ and scale it to ensure $||w'||=1.$ 

$w'>=0, A w'>=mu w', w' in S ==> rho(A)>=rho>=L(w')>=|mu|$ for all eigenvalues $mu in CC$. Hence $rho = rho(A). qed$

*Proof of Theorem* $quad$ (1) done. (2) continue the previous proof.

We already showed $rho(A)=limits(max)_(v in S)L(v)>=L(w')>=|mu|,$ and we need to prove $|mu|=rho(A) ==> mu=rho(A).$ We reason that $|mu|=rho(A) ==> L(w')=rho(A)$ from the inequality above, therefore
$ A w' = rho(A)w' ==> forall i, sum_j a_(i j)|w_j| = rho(A)w_i = |mu w_i| = |sum_j a_(i j)w_j| $
Hence all $w_i$ are on the same ray in $CC$. Take some nonzero number $c$ on this ray and $forall i, c^(-1)w_i in RR, c^(-1)w_i >=0.$
This shows that $mu$ is a real number. $qed$