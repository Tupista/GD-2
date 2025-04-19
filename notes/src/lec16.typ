== $section$ Groups in action

*Recall* $quad G arrow.cw.half X$ means a group $G$ (left) acting on set $X.$ $X arrow.ccw.half G = G^("op") arrow.cw.half X$ mean right action.

$X\\G, X\/G$ means ${G"-orbits on" X}.$

*Examples* 

- $"SO"(3):={"rotations in" RR^3}.$ Consider $"SO"(3) arrow.cw.half SS^2:={v in RR^3 | norm(v)=1} subset RR^3.$

 $bold(v) in RR^3\\{bold(0)},$ its $"SO"(3)$-orbit $={bold(w) in RR^3 | norm(w)=norm(v)},$

 its stabilizer $"Stab"(bold(v)):={g in "SO"(3) | g bold(v)=bold(v)}={R_bold(v) (theta) | theta in RR\/_(2pi ZZ)}.$

- $H lt.eq.slant G,$ then $H$ acts on $G$ by multiplication in $G,$ with orbits $=H x$ and stabilizer $={1}.$

*Definition* $quad G arrow.cw.half X$ is said to be 

- *faithful / 忠实* if $display(inter.big_(x in X) "Stab"_G (x)={1}),$ i.e. $forall g in G,$ if $g x=x$ for all $x in X$, then $g=1.$

- *transitive / 传递* if $forall x,y in X, exists g in G, g x=y,$ i.e. $X$ is a single $G$-orbit.
- *free / 自由* if $forall x in X, "Stab"_G (x)={1}.$

*Notation* $quad X^G:={x in X | forall g in G, g x=x}={x in X | {x} "is a" G"-orbit"}.$

*Structure of orbits*

Given $G arrow.cw.half X in.rev x$ and $G$-orbit $G x,$ we consider the map $ G &arrow.r.twohead G x \ g &|-> g x, $ Let $H:="Stab"_G (x),$ then $g x=g' x<==>g^(-1)g' in H <==>g'H subset g H <==> g H=g'H.$

Hence $G\/H attach(<-->,t:"1:1") G x.$ Moreover $G arrow.cw.half G\/H <--> G arrow.cw.half G x$ since $a(g,g'H)=g g' H.$

Also $abs(G x)=(G:H).$

Orbit decomposition: $X=union.sq.big G x ==> abs(X)=sum abs(G x)=sum (G:"Stab"_G (x))$ as cardinal numbers.

A useful conclusion in counting is *Burnside lemma*, which is derived from orbit decomposition.

*Proposition (Burnside)* $quad$ $G$ group, $X$ non-empty set. Define $X^g={x in X | g x=x},$ then $ abs(G\\X) dot abs(G) = sum_(g in G) abs(X^g). $

*Proof* $quad$ Consider a special case where $G arrow.cw.half X$ is transitive. From $"Stab"_(G)(g x)=g "Stab"_G (x) g^(-1)$ we know $abs("Stab"_G (g x))=abs("Stab"_G (x)), forall g in G.$ Hence $ sum_(g in G) abs(X^g)=sum_(x in X) abs("Stab"_G (x))=abs("Stab"_G (x_0))dot underbracket((G:"Stab"_G (x_0)), abs(X)="length of orbit")=abs(G), $ which prove the conclusion since $abs(G\\X)=1.$

For the general case, write $X=union.sq.big G x_i, 1<=i<=n.$ Then $G arrow.cw.half X_i$ is transitive for all $i,$ hence $ sum_(g in G) abs(X^g)=sum_(x in X) abs("Stab"_G (x))=sum_(i=1)^n sum_(x in X_i) abs("Stab"_G (x))=n abs(G)=abs(G\\X) abs(G). $ #h(1fr) $square.stroked$

In other words, each element in $G$ has "around $abs(G\\X)$" fixed points in $X.$

*Remark* $quad$ Given $G$ group, $X$ non-empty set, we have $ {a:G times X->X, "action" G arrow.cw.half X} <-->{"homomorphisms" A:G->S_X}, $ where $S_X:={"bijections" X->X}.$

Indeed: to give $a:G times X->X$ amounts to $A:G->{"maps" X->X}$ s.t. $A(g)(x)=a(g,x).$

$ &a(g_1 g_2,x)=a(g_1,a(g_2,x)), forall x in X \ <==>&A(g_1 g_2)=A(g_1)A(g_2). $
$a(1_G,x)=x, forall x in X thick ==>A(id_G)=id_X.$

So: $ {G arrow.cw.half X} <--> &{A:G->{"maps" X->X}} "s.t." display(cases(A(1_G)=id_X, A(g_1 g_2)=A(g_1)A(g_2))) \ =& {"homomorphisms" A->S x}. $ #h(1fr) $square.stroked$

$G arrow.cw.half X$ is faithful $<==> (forall g in G,A(g)=id_X <==> g=1_G)<==>A$ is injective, \ $because A(g_1)=A(g_2) ==> A(g_1^(-1)g_2)=id_X.$

*Theorem (Cayley)* $quad$ Every group $G$ can be embedded into $S_G.$

*Proof* $quad$ Let $G$ acts on itself by left multiplication, i.e. $a(g, x)=g x.$ #h(1fr) $square.stroked$ \ $==>$ every finite group $G$ embeds into some $S_n,$ ideally $n<<abs(G).$

== $section$ Case study: permutations and cycles

Let $X$ non-empty set, $m>=1, a_1,dots,a_m in X$ distinct, say indexed by $ZZ\/m ZZ <--> 1,dots,m.$

Permutations $sigma in S_X$ of the form $ cases(sigma(a_i)=a_(i+1) "," quad &i in ZZ\/m ZZ, sigma(x)=x"," &forall x in X\\{a_1,dots,a_m}) $
are called $m$-cycles in $S_X.$

*Notation* $quad sigma=(a_1 thick dots thick a_m) in S_X.$

Special cases: $m=1 ==>id_X, m=2 ==> (a_1 thick a_2)$ tranposition.

We say two cycles $(a_1 thick dots thick a_m), (b_1 thick dots thick b_n)$ are *disjoint* if ${a_1,dots,a_m} inter {b_1,dots,b_n}=emptyset.$

*Easy observations*
- $"ord"(a_1 thick dots thick a_m)=m$ in $S_X,$
- $sigma,tau$ disjoint $==> sigma tau=tau sigma.$

Hereafter $X={1,dots,n},S_X=S_n.$

*Proposition* $quad$ Every $sigma in S_n$ decomposes into pairwise disjoint cycles $ sigma=(a_(1,1) thick dots thick a_(1,l_1)) dots (a_(m,1) thick dots thick a_(m,l_m)) $ where $sum l_i=n,$ and such $m$ and cycles are uniquely determined by $sigma$ up to permutations.

*Proof* $quad angle.l sigma angle.r arrow.cw.half {1,dots,n} ==>$ decomposition into $angle.l sigma angle.r$-orbits $C_1 union.sq dots union.sq C_m.$

$forall 1<=i<=m,$ pick $a_(i,1) in C_i$ and set $a_(i,k)=sigma^(k-1)a_(i,1).$ Take the minimal $l_i>=1$ s.t. $sigma^(l_i)a_(i,1)=a_(i,1),$ \ $==> sigma arrow.cw.half C_i$ by $(a_(i,1) thick dots thick a_(i,l_i)), because 1<=h<k<=l_i, a_(i,h)!=a_(i,k),$ otherwise $sigma^(k-h)a_(i,1)=a_(i,1).$

Different choice of $a_(i,1)$ is equivalent to cyclically permuting $a_(i,1),dots,a_(i,l_i).$


Hence $sigma$ acts on $C_1 union.sq dots union.sq C_m$ as $(a_(1,1) thick dots thick a_(1,l_1)) dots (a_(m,1) thick dots thick a_(m,l_m)),$ with $sum l_i=sum abs(C_i)=n. square.stroked$

*Convention* $quad$ Omit the 1-cycles in the cycle decomposition.

*Easy observations*
- $"ord"(sigma)=lcm(l_1,dots,l_m).$ \ $because forall k in ZZ, sigma^k = (a_(1,1) thick dots thick a_(i,l_1))^k dots (a_(m,1) thick dots thick a_(m,l_m))^k,$ $ sigma^k=id_n &<==> (a_(i,1) thick dots thick a_(i,l_i))^k=id, thick forall 1<=i<=m \ &<==> l_i divides k, forall i. $ #h(1fr)
- $"sgn"(sigma)=(-1)^(sum (l_i-1)), because "sgn":S_n->{plus.minus 1}$ is a homomorphism $==>$ suffices to show $ "sgn"((a_1 thick dots thick a_l))=(-1)^(l-1). $ 
 - $l=2$ case: $"sgn"((a_1 thick a_2))=-1.$
 - $l>2$ case: $(a_1 thick dots thick a_l)=(a_1 thick a_l)(a_1 thick dots thick a_(l-1)).$ Check inductively. #h(1fr) $square.stroked$

== $section$ Applications of orbit decomposition

*Idea* $quad$ Counting.

*Definition* $quad G$ finite group, $p$ prime number. If $abs(G)=p^n, n in ZZ_(>=0),$ we say $G$ is a $p$-group.

*Proposition* $quad G thick p$-group, $G arrow.cw.half X$ finite set, then $abs(X^G) eq.triple abs(X) mod p.$

*Proof* $quad X=G x_1 union.sq dots union.sq G x_m, H_i:="Stab"_G (x_i) ==> abs(X)=sum (G:H_i).$ Here $ (G:H_i)=abs(G)/abs(H)=cases(H_i!=G "," quad &in p ZZ, H_i=G "," &1) $ Hence $abs(X) eq.triple abs({i | H_i=G}) thick (mod p)=$ "the number of singleton $G$-orbits $subset$ X" $=abs(X^G).$ #h(1fr) $square.stroked$

*Proposition* $quad G thick p$-group, $G!={1}.$ Then its center $Z_G!={1}.$

*Proof* $quad$ Define an action $a:G times G->G, (g,x)|-> g x g^(-1).$ 

$x in G$ is a fixed point $<==> g x g^(-1)=x,forall g in G<==>g x=x g, forall g in G <==> x in Z_G.$

So $abs(Z_G)=abs({G"-fixed points"}) eq.triple abs(G) mod p eq.triple 0 mod p, thick 1 in Z_G ==> abs(Z_G)>1.$ #h(1fr) $square.stroked$

== $section$ Normal subgroups and quotient groups 

Let $G$ group, $S subset G$. For $x,y in G,$ define $x S y={x s y | s in S} subset G.$

*Definition* $quad$ A subgroup $H lt.eq.slant G$ is said to be *normal* if $forall g in G, g H g^(-1)=H,$ denoted as $H lt.tri G.$

Equivalently:
- $g H g^(-1) subset H, forall g in G, because$ Put $g^(-1) ==> g^(-1) H g subset H ==> H subset g H g^(-1).$
- $g H=H g, forall g in G.$
- $g H subset H g, forall g in G.$
#pagebreak()
*Examples*
- $G$ abelian $<==> forall H lt.eq.slant G, H lt.tri G.$
- ${1},G lt.tri G.$
- $Z_G lt.tri G, because g Z_G=Z_G g.$
- $N lt.tri G, H lt.eq.slant G,$ then $N inter H lt.tri H.$
- $(G:H)=2 ==> H lt.tri G, because G=H union.sq (G\\H=g H=H g)$ in terms of left and right cosets.