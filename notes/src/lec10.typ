*Last time* $quad HH_0 := {"quaternions" q in HH | overline(q)=-q} tilde.eq RR^3.$

*Theorem* $quad$ $forall$ rotation in $RR^3 tilde.eq HH_0 = R_x$ for some $x in HH^times, N(x)=1$ where $R_x (q)=x q x^(-1), q in HH_0.$

*Corollary* $quad$ Let $u in HH_0, N(u)=1$ and $theta in RR.$ Then $R_u (theta)=R_x, x = cos theta/2 + sin theta/2 u.$

*Proof* $quad$ Check that: $overline(u)=-u.$
$ N(x) &= x overline(x) = (cos theta + sin theta/2 u)(cos theta - sin theta/2 u) \
&= cos^2 theta/2 - sin^2 theta/2 u^2. $
$1=u overline(u)=-u^2 quad ==> quad N(x)=cos^2 theta/2+sin^2 theta/2=1.$

If $u="i",$ we know that $R_u (theta)=R_x$ for the $x$ above. In general, $exists$ rotation $P$ in $HH_0 tilde.eq RR^3 "s.t." P("i")=u.$

Known: $R_u (theta) = P R_"i" (theta) P^(-1)attach(=,t:"Thm")R_y R_"i" (theta) R_(y^(-1))=R_x$ where 
$ x&=y (cos theta/2 + sin theta/2 "i")y^(-1) \ 
&= y cos theta/2 y^(-1) + y sin theta/2 "i" y^(-1) \
&= cos theta/2 + sin theta/2 y "i" y^(-1) \
&= cos theta/2 + sin theta/2 u $
since $y "i" y^(-1)=R_y ("i")=P("i")=u.$ #h(1fr) $square.stroked$

*Remarks* $quad$ 

+ ${x in HH^times: N(x)=1} attach(arrow.twohead,t:2":"1) {"rotations in" HH_0 tilde.eq RR^3}.$

+ $R_u (theta)=R_x$ where $x=e^(psi u)=limits(sum)_(n=0)^infinity (psi^n u^n)/(n!)=cos psi + sin psi dot u, psi:=theta/2$. Convergence can be achieved in $HH tilde.eq RR^4,$ and the proof is same as the proof for $e^("i" psi)=cos psi + sin psi dot "i".$

== $section$ Symmetric Polynomials

*Recall* $quad$ A *ring* is a set $R$ with $+ ("commutative"), dot , 0_R, 1_R$ with associativity, distributativity and some other properties. We denote the invertibles of $R$ as $R^times$. A *division ring* is a non-zero ring s.t. $R^times=R\\{0}.$ A *field* is a commutative division ring.

*Examples* $quad QQ,RR,CC$ are fields, $HH$ is a division ring, $M_(n times n)(FF)$ is a ring for all fields $FF,$ \
$R[x]:={"polynomials" f =c_0+c_1 X+dots+c_n X^n | c_i in R}$ is a commutative ring when $R$ is also a commutative ring. $R[X,Y,dots]={"polynomials in" X,Y,dots "with coefficient" in R}$ is also a commutative ring.

Now we fix a field $FF$ and $n in ZZ_(>=1).$ Define $S_n={"permutations" sigma: {1,dots,n}attach(->,t:1":"1){1,dots,n}}.$ \
$forall f in FF[X_1,dots,X_n], forall sigma in S_n,$ set $sigma f:=f(X_(sigma(1)),dots,X_(sigma(n))) in FF[X_1,dots,X_n].$

Then $ id dot f=f,\ forall sigma,tau in S_n,(sigma tau) f=sigma(tau f), $
$ because sigma(tau(f))(X_1,dots,X_n)&=(tau f)(X_(sigma(1)),dots,X_(sigma(n)))\ &=(tau f)(Y_1,dots,Y_n)\ &=f(Y_(tau(1)),dots,Y_(tau(n)))\ &=f(X_(sigma tau(1)),dots,X_(sigma tau(n))). $

*Definition* $quad$ If $f in FF[X_1,dots,X_n]$ satisfies $forall sigma in S_n, sigma f=f,$ we say $f$ is a *symmetric polynomial*. All symmetric polynomials in $FF[X_1,dots,X_n]$ are denoted as $FF[X_1,dots,X_n]^(S_n):={"symmetric" f}$.

*Properties*

+ Subring of $FF[X_1,dots,X_n],$ since $sigma (f+g)=sigma f + sigma g, sigma(f g)=(sigma f)(sigma g), sigma(1)=1.$

+ $FF[X_1,dots,X_n]^(S_n) supset FF = {"const polynomials"}.$ 

$==> FF[X_1,dots,X_n]^(S_n)$ is an $FF$-vector subspace of $F[X_1,dots,X_n].$

*Examples* $quad$

+ Power sum $p_k:= X_1^k + dots + X_n^k, quad k>=0.$

+ Elementary symmetric polynomials $e_k:= display(sum_(1<=i_1<dots<i_k<=n)) X_(i_1)dots X_(i_k), quad forall 1<=k<=n.$ \
 Set $e_0:=1$ to get $(Y+X_1)dots(Y+X_n)=underbracket(Y^n,=e^0 Y^n) + e_1 Y^(n-1)+dots+e_n$ where $Y$ is another variable (*Vieta*).

$f in FF[X_1,dots,X_n], g_1 dots g_n in FF[Y_1,dots,Y_m],$ then evaluation function $f(g_1,dots,g_n) in FF[Y_1,dots,Y_m].$

*Theorem* (对称多项式基本定理, 存在性) $quad$ $forall f in FF[X_1,dots,X_n]^(S_n), exists g in FF[X_1,dots,X_n] "s.t."$\ $f = g(e_1,dots,e_n).$

$forall f in FF[X_1,dots,X_n],$ write $f=limits(sum)_(d>=0) f_d,$
$ f_d:=sum_(i_1+dots+i_n=d) c_(i_1,dots,i_n) X_1^(i_1)dots X_n^(i_n), $
which is called the $d$-homogeneous part of $f$ if $f=limits(sum)_(i_1,dots,i_n>=0) c_(i_1,dots,i_n) X_1^(i_1),dots,X_n^(i_n).$

When $f=f_d,$ we say $f$ is *homogeneous* of degree $d$.

*Lemma* $quad$ Let $f in FF[X_1,dots,X_n]^(S_n),$ then $f(X_1,dots,X_(n-1),0)=0 <==> e_n | f.$

*Proof* $quad$ ($<==$) $quad 0=e_n (X_1,dots,X_(n-1),0) | f(x_1,dots,X_(n-1),0).$

($==>$) $quad f=limits(sum) c_(i_1,dots,i_n) X_1^(i_1)dots X_n^(i_n).$ Now $f(X_1,dots,X_(n-1),0) = limits(sum)_(i_n=0)c_(i_1,dots,0) X_1^(i_1)dots X_(n-1)^(i_(n-1))=0$ \ implies $c_(i_1,dots,i_n) !=0 ==> i_n>=1.$ Since $f$ is symmetric, $c_(i_1,dots,i_n)!=0 ==> i_k >=1, quad forall k.$ Hence $e_n | f.$ #h(1fr) $square.stroked$

*Proof of Theorem* $quad$ Let $f in FF[X_1,dots,X_n]^(S_n).$ $forall d>=0, f_d$ is symmetric $==>$ Reduce to the case $f = f_d$ for some $d.$ $forall g in F[X_1,dots,X_n],$ define its *weight*
$ "wt"(g):=cases(
  max {limits(sum)_(k=1)^n k i_k | c_(i_1,dots,i_n)!=0} "," quad &g!=0,
  -infinity "," &g=0.
) $
To show: If $f=f_d,$ then $exists g "s.t." "wt"(g)<=d$ and $f=g(e_1,dots,e_n).$ \
Induction on $n+d:$
- If $d=0$ i.e. $n+d=1,$ then $f in FF$ and we can take $g=f, "wt"(g)=0 \/ infinity$ when $f!=0 \/ f=0,$ respectively.
- Assume $d>=1. forall h in FF[X_1,dots,X_n],$ define $h^flat:=h(X_1,dots,X_(n-1),0) in FF[X_1,dots,X_(n-1)],$ and $d=1$ gives elements in $FF.$ \
 $h$ symmetric $==> h^flat$ also symmetric in $n-1$ variables. Hence $f^flat$ is still homogeneous of degree $d$, and $e_i^flat$ is the elementary symmetric polynomial with $n-1$ variables.

 By induction $exists g_1 in FF[X_1,dots,X_(n-1)] "s.t." f^flat = g(e_1^flat,dots,e_n^flat), "wt"(g)<=d.$ 

 *Observation* $quad$ $deg g_1 (e_1,dots,e_(n-1))<="wt"(g_1)<=d.$

 Hence $ f_1:= f-g_1(e_1,dots,e_(n-1)) $ with $deg<=d$ is symmetric (in $n$ variables), and $ f_1^flat=f^flat-g_1(e_1^flat,dots,e_(n-1)^flat)=0 quad attach(==>,t:"Lem") quad  e_n | f_1. $
 Note that $ f_2:=f_1/e_n in FF[X_1,dots,X_n] $ is symmetric and $deg f_2<=d-n.$ Write $f_2=limits(sum)_(d'>=0)f_(2,d').$

 By induction (applied to $forall f_(2,d')$) we get $g_2 "s.t." f_2=g_2(e_1,dots,e_n), "wt"(g)<=d-n.$
 $ f&=f_1+g_1(e_1,dots,e_(n-1))\
 &=e_n f_2 + g_1(e_1,dots,e_(n-1))\
 &=g(e_1,dots,e_n), $
 with $g=X_n g_2+g_1.$ 

 Here $"wt"(g)<=max {"wt"(X_n g_2), "wt"(g_1)}<=d.$ #h(1fr) $square.stroked$

*Remark* $quad$ Can replace $FF$ by any commutative ring in the above since we did not use any division.

*Theorem* (对称多项式基本定理, 唯一性) $quad$ $g_1(e_1,dots,e_n)=g_2(e_1,dots,e_n) ==> g_1=g_2.$

*Proof* $quad$ $(g_1-g_2)(e_1,dots,e_n)=0.$ Suffices to show: $g in FF[X_1,dots,X_n],$
$ g(e_1,dots,e_n)=0 quad &==> quad g=0 \ "or" wide wide wide  g!=0 quad &==> quad g(e_1,dots,e_n) !=0. $

The proof can be completed in the following steps:

+ May enlarge the field $FF ==>$ may assume $FF$ is infinite, eg. $F arrow.r.hook F(t):$ real functions.

+ $FF$ infinite, $g!=0 attach(==>,t:"Fact") exists (y_1,dots,y_n) in FF^n "s.t." g(y_1,dots,y_n) !=0.$

+ Consider $p:=X^n-y_1 X^(n-1)+dots+(-1)^n y_n in FF[X].$\ $exists$ extension of fields $F arrow.r.hook L "s.t." p$ splits in $L,$ i.e. $ p=limits(product)_(i=1)^n (X-x_i) ==> e_k (x_1,dots,x_n)=y_k, quad forall 1<=k<=n. $ 

 Now set $X_i=x_i$ in step 3 above, then $ g(e_1,dots,e_n) =g(y_1,dots,y_n)!=0 quad ==> quad g(e_1,dots,e_n)!=0. $ #h(1fr) $square.stroked$

*Fact* $quad$ Let $F:$ infinite field, $g in FF[X_1,dots,X_n],g!=0.$ Then $exists (y_1,dots,y_n) in FF^n, g(y_1,dots,y_n)!=0.$

*Proof* $quad$ 
- $n=1: g$ has at most $deg g$ roots in $F.$

- $n>1:$ Let $g=limits(sum)_(k>=0)g_k X_n^k!=0, thick g_k in FF[X_1,dots,X_(n-1)]==> exists k, g_k !=0. $ \
 By induction, $ &exists (y_1,dots,y_(n-1)), g_k (y_1,dots,y_(n-1))!=0 \ ==>& g(y_1,dots,y_(n-1),X_n) in FF[X_n]\\{0} \ ==>& exists y_n in FF, g(y_1,dots,y_n) !=0. quad (n=1 "case") $ #h(1fr) $square.stroked$

*Remark* $quad$ If $FF$ is a subfield of $CC,$ we may work with $L=CC.$