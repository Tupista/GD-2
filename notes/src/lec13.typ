*Eisenstein criterion* $quad$ Let $n>=1,f=a_0+dots+a_n X^n in ZZ[X].$ If $exists$ prime $p "s.t." p divides.not a_n,$ \ $p divides a_0,dots,a_(n-1), p^2 divides.not a_0,$ then $f$ is irreducible in $QQ[X].$

*Proof* $quad$ $p divides.not a_n ==> p divides.not c(f),$ hence the same conditions hold for $display(f/c(f)) in ZZ[X],$ i.e. may assume $f$ is primitive.

If $f$ is reducible in $QQ[X],$ then $f=g h, g=b_0+dots+b_m X^m, h=c_0+dots+c_l X^l quad (m,l>0),$ \ $g,h in ZZ[X]$ are both primitive. Apparently $ a_n=b_m c_l &==> p divides.not b_m, p divides.not c_l, \ a_0=b_0 c_0 &==> "may assume" p divides b_0, $ Take $1<=k<=m "s.t." display(cases(p divides b_0","dots","b_(k-1), p divides.not b_k, delim:"["))thick, a_k eq.triple b_0 c_k+dots+dots+b_k c_0 eq.triple b_k c_0 eq.triple 0 thick (mod thick p). $ \ From $p divides.not b_k$ we get $p divides c_0 ==> p^2 divides a_0.$ Contradiction! #h(1fr) $square.stroked$

*Examples*

- $forall n>=1, exists$ irreducible $f in QQ[X]$ with $deg f=n$ by taking $f=p+X^n$ where $p$ is a prime.

- Let $p:$ prime, define $Phi_p:=1+X+dots+X^(p-1)=display((X^p-1)/(X-1))$ is irreducible.
 
 *Proof* $quad$  $Phi_p=display((((X-1)+1)^p-1)/(X-1))=display((sum_(k=0)^p mat(p;k)(X-1)^k-1)/(X-1))=display(sum_(k=1)^p mat(p;k)(X-1)^(k-1)).$ \ Consider the ring automorphism $QQ[X]->QQ[X], f(X)|->f(X-1)$ along with its inverse $g(X)|->g(X+1),$ it preserves irreduciblity. Remains to show $ h(X-1)=sum_(k=1)^p mat(p;k) (X-1)^(k-1) $ is irreducible.

 $h=display(mat(p;1)+mat(p;2)X+dots+mat(p;p-1)X^(p-2)+X^(p-1)),$ with all non-leading coefficients $in p ZZ.$ Eisenstein criterion $==> h$ irreducible in $QQ[X].$ #h(1fr) $square.stroked$

 *Remark* $quad$ $Phi_p$ is the $p$-th cyclotomic polynomial (分圆/割圆多项式). \ In general, $forall n>1, Phi_n=display(product_(0<=m<n, gcd(m,n)=1)(X-e^((2 pi "i" m)/n))) in ZZ[X]$ irreducible.

*Remarks*

- The general theory (including Eisenstein) works if $ZZ->R:$ UFD and respectively \ $QQ->K:="Frac"(R).$ Can define $c(f),$ primitve polynomials, Gauss Lemma, etc.

- In particular $R:$ UFD $==> R[X]:$ UFD. Moreover $f in R[X]$ is irreducible $<==>$ either $f$ is irreducible in $R,$ or $deg f>0,f$ primitive and $f$ is irreducible in $K[X].$

- $R:$ UFD $==> forall n>=1, R[X_1,dots,X_n]$ is UFD (recall: fields are UFD). \ $because R[X_1,dots,X_n] tilde.eq (R[X_1,dots,X_(n-1)])[X_n]$ by merging coefficients, and use induction on $n.$

- $R:$ UFD, $f=a_n X^n + dots+a_0.$ If $display(f(u/v)=0), display(u/v) in K="Frac"(R),$ then $v divides a_n$ and $u divides a_0.$

 *Proof* $quad$ Same as the case $R=ZZ.$ #h(1fr) $square.stroked$

 *Remark* $quad$ Given $f in ZZ[X]\\ZZ:$ primitive, $exists$ algorithm to test irreducibilty (Kronecker).

 To test: $forall k>=1,$ whether $exists g,h in ZZ[X] "s.t." f=g h,deg g<=k.$ \  Choose $x_0,dots,x_k in ZZ$ distinct and $forall i, f(a_i)!=0.$ $ f=g h &==> forall i, g(x_i) divides f(x_i) "in" ZZ \ &==> "finitely possibilities for" (y_i)=(g(x_i))_(i=0)^k in ZZ^(k+1). $ Given $(y_i)_(i=0)^k in ZZ^(k+1), exists! g in QQ[X] "s.t." deg g<=k, g(x_i)=y_i ,forall i. $ Now we can test whether \ $g in ZZ[X]$ and $g divides f.$

 In practice: hard to compute, need to use some modulo methods etc.

== $section$ Groups

*Motivation* $quad$ "Symmetries" in mathematics, physics, etc.

#set align(center)
#table(
  columns: (auto, auto),
  table.header([Symmetries], [Structure in Question]),
  [Automorphism $V tilde.eq V$], [Vector spaces over $F:$ field],
  [Permutations on $X$], [Finite set X],
  [Orthogonal transformation], [IPS$\/_RR$ with $dim V<infinity$],
  [Unitary transformation], [IPS$\/_CC$ with $dim V<infinity$],
  [Rotations in $RR^3$], [$RR^3:$ IPS$\/_RR$ + orientation]
)
#set align(left) 

These are certain bijections on sets + structures. Common features include "identity", multiplication & composition, inverse, etc.

$exists$ other math objects sharing these features!

*Examples*
- $R^times thick (R:"ring"),$ 
- invertible $n times n$ matrices,
- $q in HH: N(q)=1.$

*Definition* $quad$ *Group* $:= "data"(G,dot)$ satisfying
- $G:$ set $!=emptyset,$
- $dot: G times G->G$ (i.e. binary operator on $G$), called "multiplication" $(x,y)|->x dot y$,
- $x(y z)=(x y)z, forall x,y,z in G,$
- $exists 1_G in G "s.t." x dot 1_G=x=1_G dot x, forall x in G,$
- $forall x in G, exists x^(-1) in G "s.t." x x^(-1)=1_G=x^(-1)x$ (we will show later that $1_G$ is unique for $G$).

Abbreviate $(G,dot)$ as $G.$

We say $G$ is *commutative/Abelian* if $x y=y x$ for all $x,y in G.$

*Basic properties*
- $1_G$ is unique: if $1_G,1'_G$ have the required properties, then $1_G=1_G 1'_G=1'_G.$ (often written as $1$.)
- Cancellation laws:
 - $x y=x z ==> y=z, because (x^(-1)x)y=x^(-1)(x y)=x^(-1)(x z)=(x^(-1)x)z.$
 - $y x= z x==>y=z$ for exactly the same reason.
- $forall x in G,$ the term $x^(-1)$ is uniquely determined by $x$ since $x x^(-1)=x (x^(-1))'$ gives $x^(-1)=(x^(-1))'.$
- $(x y)^(-1)=y^(-1)x^(-1)$ by checking directly.

We say $G$ is *trivial* if $G={1_G}.$ *Order* of $G:=abs(G).$

*Variants* $quad$ 
- If we remove the axiom about $x^(-1) ==>$ get *monoid* (幺半群), preserves the uniqueness of $1_G$.
- If both $exists x^(-1)$ and $exists 1_G$ are removed $==>$ get *semigroup* (半群).
- In a semigroup, can define $ x^n:=underbracket(x dot dots dot x, n "copies") quad (n>=1). $
- In a monoid, can define $x^0:=1.$
- In a group,, can define $forall n in ZZ_(<0), x^n=(x^abs(n))^(-1)=(x^(-1))^abs(n).$

In each case $x^(m+n)=x^m dot x^n, (x^m)^n=x^(m n)$ and $x^(-n)=(x^(-1))^n=(x^n)^(-1)$ with proper constraints.

*Definition* $quad$ Let $G:$ group, $H subset G.$ If 
- $1_G in H,$
- $x,y in H ==> x dot y in H,$
- $x in H ==> x^(-1) in H,$
Then we say $H$ is a *subgroup* of $G$, in which case $(H,dot)$ is also a group.

*Boring examples*: 
- ${1_G},G$ are subgroups of $G.$
- $inter.big H_i$ is a subgroup where $H_i subset G:$ subgroup.
- Center: $Z_G:={z in G | forall g in G, z g=g z}.$ \ Can check: $Z_G$ is a subgroup and $G$ Abelian $<==> Z_G=G.$

*\*Proposition* $quad$ Let $H subset G$ as subset. The following are equivalent:

- $H$ is a subgroup of $G$,
- $forall a,b in H, a b in H,a^(-1) in H,$
- $forall a,b in H, a b^(-1) in H.$

*Proof* $quad (1)==>(2), (2)==>(3)$ are obvious.

Take any $h in H, h h^(-1)=1 in H, 1 dot h^(-1)=h^(-1) in H.$

$forall a,b in H, a b=a (b^(-1))^(-1) in H, because b^(-1) in H.$ #h(1fr) $square.stroked$

Given the definition $H K={h k | h in H, k in K},$ the proposition above can be rewritten as 

*Proposition'* $quad$ Let $H subset G.$ The following are equivalent:

- $H$ is a subgroup of $G$,
- $H^2 subset H, H^(-1) subset H,$
- $H H^(-1) subset H$ (or equivalently $H^(-1) H subset H$).