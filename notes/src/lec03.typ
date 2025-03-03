*Theorem(Perron)* $quad$ Let $A in M_(n times n)(RR), A>0.$
+ $rho(A)>0, exists v in RR^n, v>0, A v = rho(A) v.$
+ If $mu in CC$ is an eigenvalue, $mu != rho(A),$ then $abs(mu)<rho(A).$
+ The $rho(A)$-eigenspace has a dimension of 1.
+ $rho(A)$ is a single root of $"Char"_A.$

*Proof* $quad$ (1)(2): Done.

(3) $quad$ Suppose $v,v' in RR, A v = rho(A)v, A v' = rho(A)v'$ and $v>0.$ We show that $v' in RR v$ by contradiction: If not, we may choose some $epsilon>0,$ s.t. $v-epsilon v'>=0, exists i$ s.t. $(v-epsilon v')_i >0.$ Now \ $v-epsilon v' = rho(A)^(-1) underbrace(A,>0) underbrace(v-epsilon v',>=0","!=0)>0,$ which contradicts the assumption that $v-epsilon v'>0. qed$

(4) $quad$ Use our knowledge of direct sum and characteristic polynomials. 

The case $n=1$ is trivial, so we may assume that $n>=2.$ Fix $v>0, A v=rho(A)v.$ Since transposition doesn't change eigenvalues, $rho(A)=rho(A^T) ==> exists u in RR^n, u>0, A^T u = rho(A)u.$ 

$angle.l u angle.r = RR u,$ and $angle.l u angle.r^perp$ is $A$-invariant since $u^T A x = (A^T u)^T x = rho(A) u x = 0.$ From $u!=0$ we know that $dim angle.l u angle.r^perp =n-1,$ and that $v in.not angle.l u angle.r^perp$ since $v,u>0.$  Hence by comparing dimensions we reach 
$ RR^n = angle.l v angle.r plus.circle angle.l u angle.r^perp, $ 
both summands $A$-invariant.

Recall that under such conditions, 
$ "Char"_A = underbrace("Char"_(A|_(angle.l v angle.r)), X-rho(A)) "Char"_(A|_(angle.l u angle.r^perp)). $

If $(X-rho(A))^2 | "Char"_A,$ then $X-rho(A) | "Char"_(A|_(angle.l u angle.r^perp)),$ which infers $"Char"_A_(angle.l u angle.r^perp)(rho(A))=0.$ Hence we can get a $rho(A)$-eigenvalue $v'$ in $angle.l u angle.r^perp,v' in.not RR v,$ contradicting (3). $qed$

== $section$ Complex inner product / Hermitian inner product

*Recall* $quad$ Real IPS = $RR$-vector space $V$ + symm. bilinear form $(|):V times V -> RR,$ positive definite.

*Idea* $quad$ complex IPS = $CC$-vector space $V$ + some form $(|):V times V->CC,$ positive definite.

The bilinear form we used in real IPS won't work here. To make our previous idea actually work, we introduce a new kind of "linear map":

*Definition* $quad$ Let $T:V->W$ be a map between $CC$-vector spaces. If
$ T(v_1+v_2)&=T v_1 + T v_2, \
T(z v) &= overline(z)T v, wide z in CC, $
then we say $T$ is *semi-linear*. By definition $T$ is $RR$-linear.

*Definition* $quad$ Complex IPS = $CC$-vector space $V$ + map $(|):V times V->CC,$ linear in $v_2$, semi-linear in $v_1, overline((v_2|v_1))=(v_1|v_2),$ positive definite.

In many textbooks: linear in $v_1,$ semi-linear in $v_2.$

*Construction* $quad$ Given a $CC$-vs. $V.$ Consider the same set $V$ and the same $+:V times V->V,$ but with 
$ dot.circle: CC times V &-> V \
(z,v) &|-> overline(z) v $
$==> (V,+,dot.circle)$ is a $CC$-vs. Denote it as $overline(V).$

*Observation* $quad$
+ $overline(overline(V)) = V$ since conjugating two times returns the original complex number.
+ Given $V_1,V_2,$ define $V_1 plus.circle V_2 = {(v_1,v_2)|v_1 in V_1, v_2 in V_2},$ then $overline(V_1) plus.circle overline(V_2) = overline(V_1 plus.circle V_2)$.
+ $overline(CC) tilde.eq CC$ by $z|->overline(z) quad ==> quad overline(CC^n) tilde.eq CC^n$ by $(z_i)|->(overline(z_i)).$
+ Semi-linear map $V->W ==>$ linear map $overline(V)->W$ or $V->overline(W).$ \
 Thus $"Hom"(overline(V),W)="Hom"(V,overline(W))$ as sets (but not as $CC$-vs. !)
+ $overline("Hom"(V_1,V_2))="Hom"(overline(V_1),overline(V_2))$ as $CC$-vs.

 *Proof* $quad$ Linear map $V_1->V_2 =$ linear map $overline(V_1)->overline(V_2),$ i.e. $"Hom"(V_1,V_2)="Hom"(overline(V_1),overline(V_2))$ as sets. Let $T in "Hom"(V_1,V_2), z in CC,$
 $ underbrace((z T), "Hom"(V_1,V_2))(v_1)=z underbrace(T v_1, V_2)=underbrace(overline(z) dot.circle T v_1, overline(V_2))=underbrace((overline(z)T), "Hom"(overline(V_1),overline(V_2)))(v_1) $
 $==> overline("Hom"(V_1,V_2))="Hom"(overline(V_1),overline(V_2))$ as $CC$-vector spaces. $qed$

*Recall* $quad$ The dual space of $V$ is $"Hom"(V,CC)=:V^or.$ Take $W=CC$ to get
$ overline(V)^or = "Hom"(overline(V),CC) = overline("Hom"(V,overline(CC))) tilde.eq overline("Hom"(V,CC)) tilde.eq overline(V^or), $
given by $lambda <-> overline(lambda):w->overline(lambda(w)).$

*Definition* $quad$ Let $V,W,X$ be $CC$-vs, $B:V times W -> X.$ We say map $B$ is *sesquilinear* if $B$ is \
semi-linear in $V$and  linear in $W.$ All sesquilinear maps $V times W->X$ form a $CC$-vs. by
$ (B_1+B_2)(v,w)=B_1(v,w)+B_2(v,w), wide(z B)(v,w)=z B(v,w). $
Proof by checking directly or note that sesquilinear map $V times W->X$ =  bilinear map $overline(V) times W->X.$

Special case: $X=CC$ to get *sesquilinear forms*.

*Definition* $quad$ Let $B:V times W->CC$ be sesquilinear. 
- *Left radical* of $B:={v in V | B(v,dot)=0},$
- *Right radical* of $B:={w in W | B(dot,w)=0}.$
They are subspaces of $V,W$ respectively.

When  $dim V, dim W<infinity,$ if left radical $={0}=$ right radical, then we say $B$ is *non-degenerate*.

*Fact* $quad$ Assume $dim<infinity.$ If non-degenerate $B:V times W->CC,$ sesquilinear, then $dim V=dim W.$ \
When $dim V=dim W<infinity,$ $B$ non-degenerate $<==>$ left radical = ${0} <==>$ right radical = ${0}.$ 

*Proof* $quad$ Copy the arguments for bilinear case, or note that sesquilinear $B:V times W->CC$   \
\= bilinear $overline(V) times W->CC,$ and the notion of radicals remain the same. Now everything reduces to the known case of bilinear forms.

This method also implies that: if $B$ is non-degenerate, then $phi:W tilde.eq overline(V)^or, w|->B(dot,w)$ and \
$psi: overline(V) tilde.eq W^or,$ both isomorphisms of $CC$-vs.

=== Sesquilinear forms and matrices

Take $V=CC^m, W=CC^n$ (spaces of column vectors).

*Proposition*
+ \ $ M_(m times n)(CC) &tilde.eq {"sesquilinear forms" CC^m times CC^n -> CC} \
A &|-> B(v,w)=v^dagger A w $
 where $C^dagger = overline(C^T)$ for some matrix $C.$

+ \ $ B(limits(sum)_i x_i e_i, limits(sum)_j y_j e_j) = limits(sum)_(i,j) a_(i j)overline(x_i)y_j. $ 
+ $B$ non-degenerate $<==> A$ invertible.

*Proof*

RHS = ${"bilinear forms" overline(CC^m) times CC^n -> CC} tilde.eq {"bilinear forms" CC^m times CC^n -> CC} tilde.eq M_(m times n)(CC).$ The description of $B(limits(sum)_i x_i e_i, limits(sum)_j y_j e_j)$ follows in the same way by expanding 
$ B(sum_i x_i e_i, sum_j y_j e_j)=mat(overline(x_1),dots,overline(x_m)) A mat(y_1;dots.v;y_n) $
As for the relation between non-degenerate and invertible, can direct check or reduce to the bilinear case. $qed$

*Remark* $quad$ If you insist sesquilinear forms are semi-linear in $w,$ then must take
$ B(v,w) = v^T A overline(w) = sum_(i j) a_(i j) x_i overline(y_j). $

*Definition* $quad$ Let $V$ be a $CC$-vs., $epsilon in {plus.minus 1}, B: V times V->CC,$ sesquilinear. We say $B$ is *$epsilon$-Hermitian* if $overline(B(w,v))=epsilon B(v,w), forall v,w in V.$ Specifically, $epsilon=1$ is called *Hermitian*, and $epsilon=-1$ is called *skew/anti-Hermitian*.

Note that if $V=CC^n,$ and $B <-> A in M_(n times n)(CC),$ then 
$  underbrace((v,w)|->overline(B(w,v)), "corresponds to " A^dagger)=underbrace(overline(w^dagger A v),in CC)=(w^dagger A v)^dagger = v^dagger A^dagger w $
So $B$ is $epsilon$-Hermitian $<--> A$ is $epsilon$-Hermitian in the sense $A^dagger=epsilon A.$