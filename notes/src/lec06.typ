In the following discussion, $V$ is an IPS$\/_CC$ with $dim < infinity.$

*Recall* $quad$ $T in "End"(V) "is unitary" <==> T:(V,(|)) tilde.eq (V,(|))$ or $T^*=T^(-1).$

*Definition* $quad$ We say matrix $A in M_(n times n)(CC)$ is unitary if $A^dagger=A^(-1).$

Thus, when $V=CC^n+"std IP", "End"(V)=M_(n times n)(CC)$ via std basis, then $"unitary" T <--> "unitary matrix" A$ since $"adjoint" <--> A^dagger.$

Let $P in M_(n times n)(CC), P=(v_1|dots|v_n), v_i in CC^n.$ \
$P^dagger = mat(v_1^dagger;dots.v;v_n^dagger),$ therefore the $(i,j)$-th entry of $P^dagger P$ is $v_i^dagger v_j = v_i dot v_j$ (std IP).

$==> (P "unitary" <==> P^dagger P = id)$ i.e. its column vectors are orthonormal.

Same discussions on $P P^dagger$ gives $(P "unitary" <==> P P^dagger=id)$ i.e. its row vectors are orthonormal.

== Spectral Theorem for normal operators

*Recall* $quad$ $T in "End"(V)$ is said to be normal if $T T^*=T^* T.$

*Theorem* $quad$ The following are equivalent for $T in "End"(V):$

+ $exists "ONB" v_1,dots,v_n$ of $V$ and corresponding eigenvalues $lambda_1,dots,lambda_n in CC$ s.t. $T v_i = lambda_i v_i, forall i,$

+ $T$ is normal.

In terms of matrices, take $V=CC^n + "std IP",$ then (1) says:

$exists P in M_(n times n)(CC)$ unitary, and $exists lambda_1,dots,lambda_n in CC$ s.t. $P^(-1)A P=mat(
	lambda_1,,;,dots.down,;,,lambda_n
)$ where $A <--> T.$

*Proof of (1) $==>$ (2)* $quad$ Choosing an ONB of $V$, may assume $V=CC^n, T <--> A in M_(n times n)(CC).$

$P^(-1)A P=mat(
	lambda_1,,;,dots.down,;,,lambda_n
), A = P mat(
	lambda_1,,;,dots.down,;,,lambda_n
) P^(-1).$

$T^* <--> A^dagger = (P^(-1))^dagger mat(
	overline(lambda_1),,;,dots.down,;,,overline(lambda_n)
)P^dagger = P mat(
	overline(lambda_1),,;,dots.down,;,,overline(lambda_n)
)P^dagger.$

Calculation shows
$ A A^dagger = P mat(
	abs(lambda_1)^2,,;,dots.down,;,,abs(lambda_n)^2
) P^dagger = A^dagger A, $
so $A$ is normal by definition.

Alternatively, let $v_1,dots,v_n$ be as in (1). Can check: $T^* v_i=overline(lambda_i)v_i==> T^*T=T T^*, v_i |-> abs(lambda_i)^2 v_i.$

*Proposition* $quad$ Any $T in "End"(V)$ decomposes uniquely into $T'+T''$ where $T'$ is self-adjoint and $T''$ is anti-adjoint. Moreover, if $T$ is normal, $T'T''=T''T'.$

*Proof* $quad$ (Uniqueness) If $T=T'+T''=S'+S''$ are two such decompositions, let \ $T'-S'=S''-T''=:R ==> -R = R^* = R. ==> R=0 in "End"(V).$

(Existence) $ T'=(T+T^*)/2, T''=(T-T^*)/2 $
is a valid decomposition. Here we prove the second statement for normal $T$ by using $T T^*=T^* T.$ #h(1fr)$square.stroked$

*Proposition* $quad$ Let $V_0 in V: "subspace"$ be $T$-invariant. Then $V_0^perp$ is $T^*$-invariant.

*Proof* $quad$ Let $v in V_0^perp.$ For all $v_0 in V_0, (T^* v|v_0)=(v|T v_0)=0.$ #h(1fr)$square.stroked$

*Proof of (2) $==>$ (1)* 

+ $T$ is self-adjoint. Claim: $exists v_1 in V, ||v_0||=1$ and $exists lambda_1 in RR$ s.t. $T v_1=lambda_1 v_1.$

 *Proof* $quad$ Take any eigenvalue $lambda_1 in CC, v_1 in V\\{0}, T v_1 = lambda_1 v_1.$

 $overline(lambda_1) = (T v_1|v_1) = (v_1|T^* v_1)=(v_1|T v_1)=lambda_1 ==> lambda_1 in RR.$

 Claim $==> V=underbracket(angle.l v_1 angle.r plus.circle angle.l v_1 angle.r^perp, "both" T"-invariant"), angle.l v_1 angle.r = CC v_1.$

 Now $T|_(angle.l v_1 angle.r^perp)$ is still self-adjoint, and $T|_(angle.l v_1 angle.r)=lambda_1 dot id$ is self-adjoint as well.

 Induction on $dim V=:n$ to get $"ONB" v_2,dots,v_n$ and corresponding real eigenvalues $lambda_2,dots,lambda_n in RR, T v_i = lambda_i v_i.$ Merge it with Claim to extend to $n=1.$ #h(1fr) $square.stroked$

+ $T$ is anti-adjoint. Merging (1) and (2) will solve the normal case.

 $("i"T)^*=-"i"T^*="i"T ==> exists "ONB" v_1,dots,v_n in V, lambda_1,dots,lambda_n in RR,$
 $ ("i"T)(v_i) = lambda_i v_i quad ==> quad  T v_i = (- lambda_i"i")v_i. $
 In fact: all $lambda_j in "i"RR.$

+ General normal $T.$

 $T=T'+T'', T'T''=T''T' ==>$ Simultaneous Orthonormal Diagonalization.

 Let $V=V_(mu_1) plus.circle dots plus.circle V_(mu_m)$ where $mu_1,dots,mu_m$ are distinct eigenvalues of $T',$ and $V_(mu_i) perp V_(mu_j)$ if $i!=j.$

 From $T'T''=T''T'$ we know all $V_(mu_i)$ is $T''$-invariant, $because forall v in V_(mu_i), T'(T'' v)= T''(T' v)=mu_i T'' v.$

 Also $(T''|_(V_(mu_i)))^* = -T''|_(V_(mu_i))$ since $T''$ is anti-adjoint. From (2) we know $V_(mu_i)$ has an ONB consisting of eigenvectors of $T''.$

 $==>$ Now we have an ONB of $V$, both $T', T''$ act by scalar on any element in ONB.

 $==>$ So is $T=T'+T''.$ #h(1fr) $square.stroked$

To sum up all previous conclusions:

$ T^*=T wide &<==> wide forall "eigenvalue" lambda in RR \
T^* = -T wide &<==> wide forall "eigenvalue" lambda in "i"RR \
T^* = T^(-1) wide &<==> wide forall "eigenvalue" abs(lambda)=1 $

In particular, $T^*=T^(-1) <==> overline(lambda)=lambda^(-1)<==>abs(lambda)=1.$

== Many facts for IPS$\/_RR$ carry over to IPS$\/_CC$

*Theorem* $quad$ Let $f:CC^n->RR$ be an Hermitian form corresponding to $A in M_(n times n)(CC), A^dagger=A.$ \
Then 
$ f "is positive definite" &<==> "all eigenvalues of" A "are" >0, \
f "is positive semi-definite" &<==> "all eigenvalues of" A "are" >=0. $

*Proof* $quad$ Spectral Theorem $==> exists "unitary" C$ s.t. $C^dagger A C=mat(
	lambda_1,,;,dots.down,;,,lambda_n
), lambda_i in RR.$

$==> f tilde.eq limits(sum)_(i=1)^n lambda_i abs(x_i)^2$ as Hermitian forms on $CC.$ Rescale $x_i$ to reduce coefficients to ${plus.minus 1}.$ #h(1fr) $square.stroked$

Let $T in "End"(V), T^*=T.$ Then $(v_1,v_2)|->(T v_1|v_2)=(v_1|T v_2)=overline((T v_2|v_1))$ is Hermitian. We say $T$ is positive definite etc. if this Hermitian form is. Note that this implies that whenever we say $T$ is positive definite, etc., *we assume $T$ is self-adjoint*.

Let $V,W$ be IPS$\/_CC$ and $T in "Hom"(V,W) ==> T^* T in "End"(V), T T^* in "End"(W)$ both positive semi-definite since $(T^* T v|v)=(T v|T v)>=0$ and the other case is similar. Here 
$ "Positive definite" <==> &"ker"T={0} quad("for" T^*T), \
&"ker"T^*={0} quad ("for" T T^*). $

In fact, $"ker"T^*=("im"T)^perp$ for all $T in "Hom"(V,W)$, \
$because T^* w=0 <==>forall v in V,(v|T^* w)=0<==>(T v|w)=0 <==> w in ("im"T)^perp.$ 

*Definition-Proposition* $quad$ If $T in "End"(V)$ is positive definite (resp. positive semi-definite), then $exists! S in "End"(V),$ positive definite (resp. positive semi-definite), and $S^2=T.$ Notation: $S=sqrt(T).$

*Proof* $quad$ Same as the real case using spectral theorem. #h(1fr) $square.stroked$

*Theorem (Polar Decomposition)* $quad$ Let $T in "End"(V)$ invertible. Then $exists!$ pair of operators $R,U in "End"(V)$ s.t. $T=R U,$ where $R$ is positive definite and $U$ is unitary.

Special case: $V=CC, "End"(V) tilde.eq CC, because$ all linear maps are equivalent to a scalar. Here $"positive definite" <==> RR_(>0), "unitary"<==>|dot|=1.$

*Proof* $quad$ Same as in the real case. In fact, $R=sqrt(T T^*):"positive definite", U=R^(-1)T.$ #h(1fr) $square.stroked$