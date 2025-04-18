*Recollection* $quad$ $G$ group, $"Aut"(G):={"automorphisms" G arrow.tilde G}, "Ad"_g:=x|->g x g^(-1) in "Aut"(G).$ 

Note that $"Ad"_g = id_G <==> g x g^(-1)=x, forall x <==> g x=x g <==> g in Z_G:$ center of $G$, subgroup.

== $section$ Cyclic groups

*Definition* $quad$ $G$ group. We say $G$ is cyclic if $exists sigma in G, G= angle.l sigma angle.r,$ i.e. $forall g in G, exists k in ZZ, g=sigma^k.$

*Example* $quad forall n in ZZ, (ZZ\/n ZZ,+)$ is cyclic, $because$ can take $sigma=1+n ZZ.$

Want to classify all cyclic groups, up to isomorphism.

*Proposition* $quad$ Let $G=angle.l sigma angle.r$ be cyclic.
- If $abs(G)=infinity$ then $ZZ arrow.tilde G$ via $n |-> sigma^n.$ 
- If $n:=abs(G)<infinity,$ then $ZZ\/n ZZ arrow.tilde G$ via $k+n ZZ |-> sigma^k.$

*Proof* $quad$ Can define the homomorphism (surjective) $ZZ arrow.twohead G, k|->sigma^k.$
- If it is injective, we get $arrow.tilde, abs(G)=abs(ZZ)=infinity.$
- If not injective, namely $i<j "s.t." sigma^i=sigma^j ==>sigma^(j-i)=1.$ Can define $n:=min{k>=1 | sigma^k=1}.$ 

$forall k in ZZ, sigma^k$ depends only on $k mod n, because sigma^n=1.$ \ $==>$ Get $ZZ\/n ZZ arrow.twohead G, k+n ZZ|->sigma^k$ still a homomorphism.

Injectivity: suppose $sigma^i=sigma^j, 0<=i<=j<n.$ Then $sigma^(j-i)=1, 0<=j-i<n.$ \ $==>$ must have $i=j$ by the minimality of $n.$

Hence $ZZ\/n ZZ arrow.tilde G, abs(G)=n.$ #h(1fr) $square.stroked$

As conclusion, cyclic groups are (up to $tilde.eq$) $display(cases(ZZ quad &("infinite"), ZZ\/n ZZ "," thick n>=1 quad &("finite")))$

$n!=m ==> ZZ\/n ZZ tilde.eq.not ZZ\/m ZZ$ by counting elements.

In fact, commutative finite groups are only slightly more complex than cyclic groups. We have the following conclusions:

*\*Lemma* $quad$ Let $G$ commutative finite group. \ $forall a,b in G, "ord"(a)=m,"ord"(b)=n,gcd(m,n)=1 ==> "ord"(a b)=m n.$

*Proof* $quad$ Say $t:="ord"(a b).$ $(a b)^(m n)=(a^m)^n (b^n)^m=1 dot 1=1 ==> t divides m n.$ \ Also $(a b)^t=1 ==> a^t = (b^t)^(-1) ==> a^(t n)=(b^(n t))^(-1)=1==>m divides t n ==>m divides t.$ \ Similarly $n divides t ==> m n divides t.$ #h(1fr) $square.stroked$

*\*Lemma* $quad$ $G$ commutative finite group, $exists a in G$ s.t. $forall b in G, "ord"(b) divides "ord"(a).$

*Proof* $quad$ Take $a$ s.t. $forall b in G, "ord"(b)<="ord"(a).$ To show: $"ord"(b) divides "ord"(a).$ 

Prove by contradiction: if $"ord"(b) divides.not "ord"(a),$ then $exists p$ prime, s.t. $p^s || "ord"(a), p^t || "ord"(b), s<t.$  

Assume $"ord"(a)=u p^s, "ord"(b)=v p^t,$ then $"ord"(a^p^s)=u, "ord"(b^v)=p^t,$

$attach(==>,t:"Lem") "ord"(a^p^s b^v)=u p^t>u p^s="ord"(a). $ Contradiction! #h(1fr) $square.stroked$

*\*Proposition* $quad$ Let $G$ commutative finite group. Then $ G "cyclic" <==> forall m in ZZ_(>=1), abs({x in G | x^m=1})<=m. $

*Proof* $quad$ ($==>$) Let $G=angle.l g angle.r, n:=abs(G).$ For $x=g^t, x^m=1 ==> x^gcd(m,n)=1$ since \ $exists u,v in ZZ$ s.t. $u m+v n=gcd(m,n).$ Hence $g^(t gcd(m,n))=1 ==> n divides t dot gcd(m,n)==> display(n/gcd(m,n)) divides t.$ Therefore $x in angle.l g^(n/gcd(m,n)) angle.r,$ while $abs(angle.l g^(n/gcd(m,n)) angle.r)=gcd(m,n)<=m.$

($<==$) From Lemma we can take $a in G$ s.t. $forall b in G, "ord"(b) divides "ord"(a)=:m.$ Hence $forall b in G, b^m=1==> abs({x in G | x^m=1})=n<=m.$ On the other side $m="ord"(a) divides n ==> m=n.$ #h(1fr) $square.stroked$

== $section$ Cosets in a group 

Let $G$ group, $H subset G$ subgroup (sometimes denoted as $lt.eq.slant$).

$forall x,y in G,$ define $x attach(~,b:"left") y$ if $exists h in H "s.t." x=h y.$ The right version is similar.

This is a equivalence relation on $G:$
- $x attach(~,b:"left") x, because x=1_H dot x,$
- $(x attach(~,b:"left") y ==> y attach(~,b:"left") x), because x=h y ==>y=h^(-1) x,$
- $(x attach(~,b:"left") y, y attach(~,b:"left") z ==>x attach(~,b:"left") z), because x=h y, y=h' z ==>x = (h h')z.$

*Recall* $quad X$ set, $~$ equivalence relation on $X,$ then $ X\/_~:={~ "equivalence classes in" X} $ where $X=display(union.sq.big_(C in X\/_~) C),$ with quotient map $X->X\/_~.$

Now: $forall g in G,$ set $H g:={h g | h in H}, g H:={g h | h in H}.$ They are the left (resp. right) equivalence class of $g$, and called the right (resp. left) coset of $g.$

The corresponding quotient sets are $ attach(\\,bl:H) G := G\/_attach(~,b:"left")={"right cosets" H g | g in G}, \ G \/_H:=G\/_attach(~,b:"right")={"left cosets" g H | g in G}. $

So $G=display(union.sq.big_(H g in attach(\\,bl:H) G) H g=union.sq.big_(g H in G \/_H) g H).$

*Lemma* $quad forall$ subset $S subset G, S^(-1):={s^(-1) | s in S} subset G$ \ $==> (H g)^(-1)=g^(-1)H^(-1)=g^(-1)H, (g H)^(-1)=H g^(-1).$

*Proposition* $quad attach(\\,bl:H) G <--> G \/_H$ via $ H g &|-> g^(-1)H=(H g)^(-1), \ (g H)^(-1)=H g^(-1) &arrow.l.bar g H. $

*Proof* $quad$ Both directions are given by $S|->S^(-1),$ and $(S^(-1))^(-1)=S.$ #h(1fr) $square.stroked$

*Definition* $quad (G:H):=$ the common cardinality of $attach(\\,bl:H)G, G \/_H,$ called the *index* of $H subset G.$

*Theorem (Lagrange)* $quad abs(G)=abs(G) dot (G:H).$ (multiplication of cardinal numbers)

*Proof* $quad$ $forall$ coset $C in attach(\\,bl:H) G,$ pick $x_c in C,$ i.e. $H x_c=C.$ Consider $ H times attach(\\,bl:H) G &-> G, \ (h,C)&|->h x_c, $ Surjective: $forall g in G, exists C "s.t." g in C=H x_c ==> g in "im".$

Injective: $h x_c=h' x_c' ==> C inter C' != emptyset ==> C=C', x_c=x_c'.$ Cancellation law gives $h=h'.$

Hence $abs(G)=abs(H) dot abs(attach(\\,bl:H) G)=abs(H) dot (G:H).$

Another way: $G=display(union.sq.big_(C in attach(\\,bl:H)G) C);$ for each $C$ we have $abs(C)=abs(H)$ since cancellation law $==> H g <-->H.$ This also gives $abs(G)=abs(H) dot abs(attach(\\,bl:H)G).$ #h(1fr) $square.stroked$

*Corollary* $quad G$ finite, then $abs(H)$ divides $abs(G)$ forall subgroups $H subset G.$

*Corollary* $quad H,K subset G$ subgroups, finite. $abs(H),abs(K)$ coprime $==> H inter K={1}.$

*Proof* $quad H inter K$ is a subgroup of both $H$ and $K,$ hence $abs(H inter K)$ divides $abs(H),abs(K)==> abs(H inter K)=1.$ \ $==> H inter K={1}.$ #h(1fr) $square.stroked$

*Definition* $quad G$ group, $sigma in G.$ *order* / 阶 of $sigma: "ord"(sigma)=abs(angle.l sigma angle.r).$ 

Recall that $"ord"(sigma)=min{k>=1 | sigma^k=1}.$

Moreover: $ sigma^k=sigma^l thick <==> thick "ord"(sigma) divides abs(k-l), \ sigma^k=1 thick <==> "ord"(sigma) divides k. $

i.e. $"ord"(sigma)=$ "the minimal period of $sigma^0,sigma^1,sigma^2 dots$"

*Corollary* $quad$ $G$ finite, $sigma in G,$ then $"ord"(sigma) divides abs(G),$ i.e. $forall g in G, g^(abs(G))=1.$

*Corollary* $quad$ If $p:=abs(G)$ is a prime number, then $G$ is cyclic.

*Proof* $quad$ Note that $G:$ any group, $sigma in G, "ord"(sigma)=1 <==> sigma=1.$

Pick $sigma in G, sigma!=1.$ $ 1!="ord"(sigma) divides p ==> "ord"(sigma)=p ==> abs(angle.l sigma angle.r) = abs(G). $

Another property of indicies: $K subset H subset G$ subgroups, then $(G:K)=(G:H)(H:K).$

#pagebreak()

*Proof* $quad G=display(union.sq.big_(C in attach(\\,bl:H)G)H x_c),$ pick $x_c in C$ for all $C;$ $H=display(union.sq.big_(D in attach(\\,bl:K)H) K y_d),$ pick $y_d in D$ for all $D.$ $ &G=union.sq.big_C H x_c=union.sq.big_(C,D) K y_d x_c \ ==>&attach(\\,bl:K)G <--> {(C,D) | C in attach(\\,bl:H)G, D in attach(\\,bl:K)H} \ ==>& (G:K)=(G:H)(H:K). $ #h(1fr) $square.stroked$

== $section$ Groups in action

In the earlier examples, groups "act" on a set or other structures.

Let $X:$ non-empty set, $"S"_x:={"permutations on" X}$ acts on $X,$ and $"S"_n$ acts on ${1,2,dots,n}.$

$forall F$-vs. $V, "GL"(V)={"automorphisms" V arrow.tilde V}$ acts on $V.$

$G$ group, $"Aut"(G)$ acts on $G.$

*Definition* $quad$ $G$ group, $X$ set. A *left $G$-action on $X$* means a map $a: G times X->X "s.t."$

- $a(1,x)=x,$
- $a(g, a(h, x))=a(g h,x).$

Write $a(g,x)=\"g x\".$ The properties above becomes $1 dot x=x,g (h x)=(g h) x.$

Right $G$-action on $X$ means $a':X times G->X "s.t." x dot 1=x,(x g) h=x (g h)$ using similar notations.

For convenience, by default action = left action.

*Definition* $quad G:$ any group, define its *opposite group* $G^("op"):=(G,dot.circle) "s.t." g dot.circle g'=g' g.$ \ $==> G^("op")$ is a group, in which $g^(-1),1$ are the same as those in $G.$

$(G^("op"))^("op")=G,$ and $G^("op")=G <==> G$ is abelian.

Moreover $G arrow.tilde G^("op")$ via $g|->g^(-1).$

Left $G$-action on $X=$ Right $G^("op")$-action on $X$. Given $a:G times X->X,$ can define $a':X times G->X,$ \ $a'(x,g)=a(g, x).$

*Notation* $quad G arrow.cw.half X$ or $X arrow.ccw.half G.$

*Definition* $quad$ Let $G arrow.cw.half X, x in X.$

- The *$G$-orbit* of $x=G x:={g x | g in G} subset X.$
- *Stabilizer* of $x="Stab"_G (x):={g in G | g x=x} subset G$ subgroup.

$forall x,y in X,$ write $x attach(~,b:G) y$ if $exists g in G, x=y g.$ This is a equivalence relation on $X.$

- $attach(~,b:G)$ equivalence classes $=G$-orbits $G x$ in $X$. 

 $attach(\\,bl:G)X:= X\/_attach(~,b:G)={"all" G"-orbits" G x}.$

*Next time*: Decomposition into orbits.