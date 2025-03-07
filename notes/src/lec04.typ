*Recall* $quad$ $epsilon$-Hermitian forms $B: V times V -> CC, V: CC$-vector space. 

With $V=CC^n,$ they correspond to $epsilon$-Hermitian matrices $A in M_(n times n)(CC), A^dagger = epsilon A.$

In this case, left radical of $B=$ right radical of $B$.

=== Adjoint linear maps on $CC$ inner product space 

*Definition-Proposition* $quad$ Let $B_1: V_1 times V'_1->CC, B_2: V_2 times V'_2->CC$ be sesquilinear forms with all $dim<infinity.$ Assume $B_1$ is nondegenerate.
- $exists$ semi-linear map $"Hom"(V_1,V_2) -> "Hom"(V'_2,V'_1), T|->T^*$ characterized by
$ B_2(T v_1, v'_2)=B_1(v_1, T^* v'_2). $
- $exists$ semi-linear map $"Hom"(V'_1,V'_2) -> "Hom"(V_2,V_1), T|->attach(T,tl:"*")$ characterized by
$ B_2(v'_1,T v_2)=B_1(attach(T,tl:"*")v'_1, v_2). $

*Proof* 
+ Repeat the proof in the linear case.
+ Reduce to the bilinear case by passing $overline(V_1),overline(V_2).$
+ Look at matrices. Up to $tilde.eq,$ may assume $V_i=CC^(m_i), V'_i=CC^(m'_i).$ Here
 $ B_i <--> A_i in M_(m_i times m'_i)(CC), wide A_1: "invertible". $
 For the right adjoint:
 $ B_2(T v_1, v'_2)=(T v_1)^dagger A_2 v'_2=v_1^dagger T^dagger A_2 v'_2=v_1^dagger A_1 underbrace(A_1^(-1) T^dagger A_2,T^*)  v'_2. $
 For the left adjoint:
 $ B_2(v_2,T v'_1)=v_2^dagger A_2 T v'_1=v_2^dagger A_2 T A_1^(-1) A_1 v'_1=(underbrace((A_2 T A_1^(-1))^dagger, attach(T,tl:"*")) v_2^dagger) A_1 v'_1. qed $

*Observation*
+ $(S T)^* = T^* S^*,$ check by using definition.
+ If $B_1,B_2$ both nondegenerate, then $attach((T^*),tl:"*") = T = (attach(T,tl:"*"))^*.$
+ If $epsilon=plus.minus 1,$ both $B_1,B_2$ are $epsilon$-Hermitian ($V_i=V'_i$), then $T^*=attach(T,tl:"*")$ \
 since $B(T v, w)=epsilon overline(B(w, T v))=epsilon overline(B(attach(T,tl:"*")w,v))=epsilon^2 B(v,attach(T,tl:"*")w)=B(v,attach(T,tl:"*")w).$

*Definition* $quad$ Given a nondegenerate $epsilon$-Hermitian form $B: V times V->CC, T in "End"(V).$
- If $T=T^*,$ we say $T$ is *self-adjoint*,
- If $T=-T^*,$ we say $T$ is *anti/skew-adjoint*.

In term of matrices, $V <--> CC^n, B <--> A in M_(n times n)(CC) "s.t." A^dagger=epsilon A,$ and $T in "End"(V)=M_(n times n)(CC),$ then 
$ T^* = plus.minus T <==> A^(-1)T^dagger A=plus.minus T. $
In particular if $epsilon=1, A="id"$ (the standard complex inner product), then
$ "T is self-adjoint" &<==> T^dagger=T, \
"T is anti/skew-adjoint" &<==> T^dagger=-T. $

*Remark* $quad$ Let $c in "i"RR\\{0},$ then 
$ B: V times V->CC "is Hermitian" <==> c B "is anti-Hermitian," \
T in "End"(V) "is self-adjoint" <==> c T "is anti-adjoint". $

*Definition* $quad$ Let $V: CC$-vs., $dim V<infinity, B:V times V->CC,$ nondegenerate, $epsilon$-Hermitian. \
$T in "End"(V)$ is *normal* iff $T T^* = T^* T.$

$T$ is self-adjoint and anti-adjoint $==> T$ is normal (and many other special cases).

== $section$ Classification of Hermitian Forms 

*Recall* $quad$ Theory of quadratic forms say over $RR$,
+ Quadratic forms $limits(sum)_(i,j) a_(i j)X_i X_j, a_(i j)=a_(j i),$
+ Symmetric matrices $A in M_(n times n)(RR), A^T=A,$
+ Symmetric bilinear forms $B: V times V->RR,$
are all the same. As for equivalent classes:
+ $\/_("the linear change of variables")$, i.e., $f ~ f'$ if $f=f'(y_1,dots,y_n), mat(y_1;dots.v;y_n)=C mat(x_1;dots;x_n), C$ invertible.
+ $A ~ A'$ if $exists C in M_(n times n)(RR)$ invertible, $A=C^T A' C.$
+ $B ~ B'$ if $B(v,v)=B'(C v,C v)$ where $C: RR^n arrow.tilde RR^n.$
+ $(V,B)~(V',B')$ if $exists C: V arrow.tilde V', B(v_1,v_2)=B'(C v_1,C v_2).$

Now, analogue for Hermitian forms on $CC$-vs. of $dim=n.$
- Classify all $(V,B), dim V=n, B:V times V->C, epsilon$-Hermitian up to $tilde.eq.$ 
- Classify for $V=CC^n$ or $A in M_(n times n)(CC), A^dagger=A,$ up to $A ~ C^dagger A C, C$ invertible.
- Classify all maps $f: CC^n->CC$ of the form 
 $ f(x_1,dots,x_n)=sum_(i,j)a_(i j)overline(x_i)x_j, quad a_(i j)=overline(a_(j i)), $
 up to $CC$-linear change of variables. Note that $f$ is $RR$-valued.

We now show that the matrix version of complex quadratic forms is still the equivalent of the polynomial version.
- Matrices $==>$ Poly: take $f$ as above with $a_(i j)=$ the $(i,j)$-th entry of $A.$
- Poly $==>$ Matrices: 
 $ f(v+w)-f(v)-f(w)&=B(v+w,v+w)-B(v,v)-B(w,w) \
 &=B(v,w)+B(w,v) \
 &= 2"Re"B(v,w). $
 Therefore $f$ determines the real part of $B,$ and since $"Im"B(v,w)="Re"B("i" v,w), B$ is completely determined and $A$ follows $B$ as well.

To classify them we can:
- Reduce to the quadratic forms on $RR,$
- Use spectral theorem for self-adjoint versions,
- Copy the arguments for quadratic forms (配方法).

 + Diagonalization: Any $f=limits(sum)_(i,j) a_(i j)overline(x_i)x_j$ is equivalent with a diagonal quadratic form $ f'=limits(sum)_i a_i abs(x_i)^2. $
 + Rescaling: $x_i->sqrt(abs(a_i))x_i$ when $a_i!=0$ $==>$ reduces to $a_i in {0,plus.minus 1},$ i.e. $ f tilde.eq abs(x_1)^2+dots+abs(x_p)^2-abs(x_(p+1))^2-dots-abs(x_(p+q))^2. $

 *Proposition* $quad$ Given $n in ZZ_(>=1),$
 $ {"Hermitian forms" f: CC^n -> CC} \/_tilde ={(p,q) in ZZ_(>=0)^2 | p+q<=n}. $

*Definition* $quad$ Given $V: CC$-vs., $B:V times V->CC,$ Hermitian form. We say $B$ is
- *Positive semi-definite* if $B(v,v)>=0,$
- *Positive definite* if $B(v,v)>=0, B(v,v)=0 <==> v=0.$
The negative case is similar, and $B$ is *indefinite* if none of above is true.

If $f:CC^n->RR$ (or $B:CC^n times CC^n->CC$) corresponds to $(p,q),$ then:
$ f ("or" B) "is positive semi-definite" &<==> q=0,\
"positive definite" &<==> p=n,\
"indefinite" &<==> p,q>0. $

*Definition* $quad$ $p:=$ 正惯性指数, $q:=$ 负惯性指数 of $f$ (or $B$) up to $tilde.eq.$
