== Newton's formula (in symmetric polynomials)

$forall k >= 0,p_k:=display(sum_(i=1)^n X_i^k) quad (p_0=n)$.

- $1<=k<=n, quad underbracket(p_k, e_0 p_k)-e_1 p_(k-1)+e_2 p_(k-2)+dots+(-1)^k k e_k=0.$

- $k>=n,quad p_k-e_1 p_(k-1)+dots+(-1)^n e_n p_(k-n)=0.$

Using this, one can

- express $forall p_k$ in terms of $e_1,dots,e_n,$ with coefficients$\/_ZZ.$

- express $e_1,dots,e_n$ in terms of $p_1,p_2,dots$ with coefficients$\/_QQ.$

*Sketch of Proof* $quad$ Consider formal power series in $Y:$
$ P(Y)&:= sum_(k>=1) p_k Y^(k-1)=sum_(k>=1) sum_(i=1)^n X_i^k Y^(k-1)\ &= sum_(i=1)^n X_i/(1-X_i Y), $
$ E(Y):= sum_(k=0)^n e_k Y^k=product_(i=1)^n (1+X_i Y). $
Now $P(-Y)=display(sum_(i=1)^n X_i/(1+X_i Y)=(E'(Y))/E(Y)),$$ (sum_(a>=0) e_a Y^a)(sum_(b>=1) p_b (-Y)^(b-1))=E(Y)P(-Y)=E'(Y)=sum_(k=1)^n k e_k Y^(k-1). $
Coefficient of $Y^(k-1)$ is $display(sum_(a+b=k) e_a p_b (-1)^(b-1)=k e_k).$

== $section$ Irreducible polynomials

*Recall* $quad R:$ integral domain, $x,y in R.$ If $exists u in R^times, x=u y,$ we write $x~y.$ 

Let $x in R\\R^times, x!=0$. If $x=a b ==>a~1 or b~1$, we say $x$ is *irreducible* in $R.$

Now let $F:$ field, $R=F[X], R^times=F^times.$ $f in F[X]$ is irreducible means: $ f=g_1 g_2 ==> g_1~1 or g_2 ~ 1. $
Things are more complicated on $QQ[X]$ and $ZZ[X].$

*Definition* $quad$ Let $f=a_0+dots+a_n x_n in ZZ[X]\\{0}.$ $c(f):=gcd(a_0,dots,a_n) in ZZ_(>=1).$ If $c(f)=1,$ we say $f$ is primitive.

*Lemma (Gauss)* $quad$ Let $g,h in ZZ[X]$ be both primitive, then so is $g h.$

*Proof* $quad$ $forall p:$ prime, write $ g=a_0+dots+underbracket(a_r X^r, p divides.not a_r) + underbracket(dots,p divides a_i),  \ h=b_0+dots+underbracket(b_s X^s, p divides.not b_s)+underbracket(dots,p divides b_j). $

The coefficient of $X^(r+s)$ in $g h$ is $display(sum_(i+j=r+s) a_i b_j eq.triple a_r b_s eq.triple.not 0 quad (mod p)) ==> p divides.not c(g h).$ 

Vary $p$ to reach conclusion. #h(1fr) $square.stroked$

Alternatively, for any prime $p$ we can argue $ overline(g)&:=g mod p in FF_p [X] \ &=sum_i overline(a_i) X^i = overline(a_0)+dots+overline(a_r)X^r quad (overline(a_r)!=0). \ overline(h)&= overline(b_0)+dots+overline(b_s)X^s. $

$overline(g h)=overline(g) dot overline(h) !=0$, i.e. $p divides.not c(g h).$

*Lemma* $quad$ Let $g,h in ZZ[X]\\{0}, c(g h)=c(g)c(h).$

*Proof* $quad g=c(g)g_0, h=c(h)h_0, g h=c(g)c(h)underbracket(g_0 h_0, "primitive") ==> c(g h)=c(g)c(h).$ #h(1fr) $square.stroked$

*Theorem* $quad$ Let $f in ZZ[X]\\{0}$ be primitive.

- If $f=g h$ in $QQ[X],$ then $exists alpha in QQ^times$ s.t. $g_1:=alpha g, h_1:= alpha^(-1)h$ are both in $ZZ[X]$ and primitive.

- When $deg f>0,$ the following are equivalent:

 - $f$ is irreducible in $QQ[X],$

 - There are no $g,h in ZZ[X]$ s.t. $f=g h$ and $deg g, deg h>0.$

*Proof* $quad$

- $deg f=0 ==>$ take $alpha:= g^(-1).$

 Assume $deg f>0, f=g h$ in $QQ[X].$ Take $u,v in ZZ_(>=1)$ s.t. $u g,v h in ZZ[X].$
 
 $==> quad u v = c(u v f)=c(u g dot v h) attach(=,t:"Lem") c(u g)c(v h) quad ==> quad f=display((u g)/c(u g) dot (v h)/c(v h)),$ \ i.e. can take $alpha:=display(u/c(u g)).$

- ($not b ==> not a$) $quad f=g h$ in $ZZ[X],quad  deg f,deg h>0 ==> f$ reducible in $ZZ[X].$
($not a==>not b$) $quad$ Suppose $f=g h,$ $g,h in QQ[X], deg>0.$ By (1) $f=g_1 h_1 in ZZ[X].$ #h(1fr) $square.stroked$

*Recall* $quad$ Let $R:$ integral domain. We say $R$ is *UFD* if $forall r in R\\{0}$ has a decomposition $ r~p_1 dots p_m, quad p_i "irreducible in" R quad (m in ZZ_(>=0)) $
and $p_1,dots,p_m$ are unique up to permutations.

*Theorem'* $quad ZZ[X]$ is UFD, whose irreducibles are 
- (Type I) Irreducibles in $ZZ,$
- (Type II) Primitive $f in ZZ[X]$ satisfying the property (2) in Thm.

*Proof* $quad$ Firstly we classify the irreducibles. Type I are the irreducibles of $ZZ[X]$ with $deg=0.$

Now assume $f in ZZ[X], deg f>0,f=c(f)f_0.$

If $f$ is irreducible in $ZZ[X],$ then $c(f)=1$ (otherwise can take some integer factor) $==> f$ primitive.

If $f=g h$ in $ZZ[X], thick g,h in.not ZZ^times.$ $ f "primitive" ==> deg g, deg h>0. $ So $f$ is irreducible in $ZZ[X] <==>$ there are no $g,h in ZZ[X]$ s.t. $f=g h,thick  deg g,deg h>0.$

Thm gives the conclusion that Type II are exactly the irreducibles in $ZZ[X]$ of $deg > 0.$

Now we will prove that $ZZ[X]$ is UFD. Let $f in ZZ[X]\\{0}.$ Firstly, $f=c(f)f_0$ where $c(f)$ is the product of irreducibles of type I ($because ZZ$ is a UFD). Then decompose $f_0$ into irreducibles in $QQ[X].$ Thm: may assume (up to $QQ^times$) that each factor is primitive in $ZZ[X],$ i.e. irreducibles in $ZZ[X]$ of type II.

$==> f~$ product of irreducibles in $ZZ[X]$.

Uniqueness: $quad underbracket(a_1 dots a_m, "I") thick underbracket(p_1 dots p_n, "II")~underbracket(b_1 dots b_r, "I") thick underbracket(q_1 dots q_s, "II").$

By taking $c(dot)$ we can show $product a_i ~ product b_j$ in $ZZ,$ hence $product p_i ~ product q_j.$ We already know $F:$ field $==> F[X]:$ UFD, hence after converting $p_i, q_j$ to primitive polynomials on $ZZ[X]$, two decompositions are equal up to $~$ and permutation.

*Remark* $quad$ We used tools on $QQ[X]$ to prove the $ZZ$ version. The other way is also possible by multiplying a common integer.