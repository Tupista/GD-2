*Last time* $quad$ Normal subgroups and examples.

*Definition* $quad$ $f:G->G'$ homomorphism, define its *kernel* as $ ker(f):=f^(-1)(1_G')={g in G | f(g)=1_G'}. $

*Key observation* $quad ker(f) lt.tri G.$ \ $because 1_G in ker(f), x,y in ker(f) ==> f(x y)=f(x)f(y)=1_G',f(x^(-1))=f(x)^(-1)=1_G'^(-1)=1_G'.$ \ Also $forall g in G, h in ker(f),f(g h g^(-1))=f(g)f(h)f(g^(-1))=1==>g ker(f) g^(-1) subset ker(f).$

*Examples*

- Homomorphism $"sgn":"S"_n->{plus.minus 1}, "A"_n:=ker("sgn") lt.tri S_n.$ (alternating group)

  $"S"_4 gt.tri "A"_4={id,(2,2),(3,1)}$ in terms of cycle lengths.

  In fact $sigma (a_1 thick dots thick a_m) sigma^(-1)=(sigma(a_1) thick dots thick sigma(a_m)),$ hence $sigma "A"_4 sigma^(-1) lt.tri "S"_4.$

- $W:F$-vector space, $dim W<infinity.$ $det: "GL"(W)->F^times,ker(det)="SL"(W) lt.tri "GL"(W).$

*Observation* $quad N:="ker"(f:G->G').$ \ $forall x,y in G, f(x)=f(y) <==> f(x y^(-1))=1<==> x y^(-1) in N<==>x in N y <==> N x=N y.$

Hence $f$ is injective $<==> ker(f)={1}.$

*Next*: Given $N lt.tri G,$ try to make $G\/N$ into a group s.t. the quotient map $q:G->G\/N, g|->g N$ is a homomorphism.

Now $1_(G\/N)=q(1_G)=N, ker(q)={g in G | g N=N}=N.$

*Definition-Proposition* $quad$ Let $N lt.tri G.$ On $G\/N={"cosets" g N},$ one can define a binary operation $(x N,y N)|->(x y)N$, and:
- It makes $G\/N$ into a group,
- $q:G->G\/N$ is a homomorphism.
We say $G\/N$ is the *quotient group* / 商群 of $G$ by $N.$

*Proof* $quad$ Check $x y N$ only depends on $x N$ and $y N.$

Assume $x N=x' N, y N=y' N.$ Then $x'=x u, y'=y v, u,v in N,$ $ x' y' N=x u y v N=x y underbracket(y^(-1)u y, in N) v N=x y N. $ Hence $(x N,y N)|->x y N$ is well-defined.

Group axioms: reduce to $G.$ $ (x N, y N) z N=(x y N) z N=x y z N=x N (y z N)=(x N)(y N, z N). $ Take $1_(G\/N):=1_G N,$ then $ x N 1_G N=x N = 1_G N x N. $ Set $(x N)^(-1)=x^(-1)N$ since $ x N x^(-1) N=1_G N=x^(-1)N x N. $

To show $q$ is a homomorphism, suffices to show $ q(x y)=x y N=x N dot y N=q(x)q(y), forall x,y in G. $ #h(1fr) $square.stroked$

*Remark* $quad$ The group structure on $G\/N$ is the unique one making $q$ into a homomorphism.

$"ker"(q:G->G\/N)=N.$

- Quotient of vector space $V\/U$ subspace $=$ the quotient group $(V,+)\/(U,+)$ together with multiplication by $F,$
- Quotient ring $R\/I$ ideal $= (R,+)\/(I,+)$ together with a multiplication.

*Proposition* (Universal property of quotient groups) \ Let $f:G->G'$ homomorphism, $N lt.tri G$ s.t. $N subset ker(f).$ Then $exists!$ homomorphism $overline(f):G\/N->G'$ s.t. $ f = overline(f) compose q. $ We say $overline(f)$ is induced / 诱导 by $f.$

*Proof* $quad$ Uniqueness: $overline(f)q=f<==>overline(f)(x N)=f(x), forall x in G==>$ this determines $overline(f).$

Existence: If $x N=x' N, x,x' in G,$ then $x'=x u, u in N attach(==>,t:N subset ker(f)) f(x')=f(x)f(u)=f(x).$ \ Hence $overline(f):G\/N->G', x N|->f(x)$ is a well-defined map. $ overline(f)(x N dot y N)=overline(f)(x y N)=f(x y)=f(x)f(y)=overline(f)(x N) overline(f)(y N), $ $==>overline(f)$ is a homomorphism. #h(1fr) $square.stroked$

*Corollary* $quad$ Let $f:G->G'$ homomorphism, $N lt.tri G, N' lt.tri G', f(N) subset N'.$

Then $exists!$ homomorphism $overline(f):G\/N -> G'\/N'$ s.t. $q' f=overline(f)q.$ (see ref for commute graph)

*Remark* $quad$ Take $N'={1}, G' tilde.eq G'\/{1}$ to get the previous Prop.

*Proof* $quad$ Take $f'=q' f$ in previous Prop, $f(N) subset N'=ker(q')==>N in ker(q'f).$ #h(1fr) $square.stroked$

*Corollary* $quad$ Let $f:G->G'$ homomorphism. Recall $im(f)=f(G)$ is a subgroup of $G'$. \ Put $N:=ker(f),$ we get $overline(f):G\/ker(f) arrow.tilde im(f) subset G'.$

*Proof* $quad overline(f)(x N)=f(x)$ shows that $im(overline(f))=im(f).$ \ If $overline(f)(x N)=overline(f)(y N)$ then $f(x)=f(y),$ so $x N=y N.$ Hence $overline(f)$ is injective $==> overline(f):G\/N arrow.tilde im(f).$ #h(1fr) $square.stroked$ 

In particular, surjective homomorphisms $approx$ quotient groups.

Also $(G:ker(f))=abs(im(f))$ by counting.

*Examples*

- $"sgn": "S"_n->{plus.minus 1}$ is surjective when $n>1 ==> ("S"_n:"A"_n)=2.$

- $N:HH^times->RR_(>0)^times$ is a homomorphism, its kernel $ker(N):=HH^1 lt.tri HH^times.$ \
  $R:HH^1->"SO"(3)={"rotations in" RR^3}, q|->R_q (x)=q x q^(-1)$ is a homomorphism, $ker(R)={plus.minus 1}$ Hence $R$ induces $overline(R):HH^1\/{plus.minus 1} arrow.tilde "SO"(3).$

  Recall that $HH tilde.eq {display(mat(z,-overline(w);w,overline(z))):z,w in CC}$ s.t. $N<-->det.$ 
  
  Hence $HH^1 tilde.eq {display(mat(z,-overline(w);w,overline(z))):abs(z)^2+abs(w)^2=1}, quad {plus.minus 1} tilde.eq {plus.minus 1_(2 times 2)}.$

  Set $"SU"(2)={"unitary" A in M_(2 times 2)(CC) | det A=1},$ then $ "SU"(2)\/_{plus.minus 1} tilde.eq HH^1\/_{plus.minus 1} tilde.eq "SO"(3). $

#pagebreak()

*Proposition* $quad$ Let $f:G->G'$ surjective homomorphism. Then denote $N:=ker(f),$ $ {H' subset G' "subset"} &<--> {N subset H subset G "subset"} \ H'quad &arrow.r.bar.long quad f^(-1)(H), \ f(H) quad  &arrow.l.bar.long quad H. $

- $H'_1 subset H'_2 <==> H_1 subset H_2,$
- $H' lt.tri G'(<==>H lt.tri G)$, then $G attach(->,t:f)G'attach(->,t:"quot")G'\/H'$ induces $G\/H tilde.eq G'\/H'.$

*Proof* $quad$ Clearly $H subset f^(-1)(f(H)).$ Also $f^(-1)f(H) subset H$ since $f(x)=f(h), x in G, h in H$ \ $==>x h^(-1) in N ==>x in H, because N in H.$

In the other direction $H'=f^(-1)f(H)$ holds for any surjection $f:G->G'$ \ $==>$ get $tilde.eq,$ preservation of $subset$ is clear.

Given $H,thick N subset H subset G.$ $forall g in G,g H g^(-1)=H<==> forall overline(g) in G', overline(g)f(H)g^(-1)=f(H),$ \ $because f$ surjective and $N subset H.$

Finally, let $H lt.tri G <--> H' lt.tri G'.$ Composite $G attach(arrow.twohead,t:f) G' arrow.twohead G'\/H'$ is also surjective. \  Its kernel $=f^(-1)(H')=H ==> G\/H arrow.tilde G'\/H'.$ #h(1fr) $square.stroked$

*Example* $quad {"Subgroups of" ZZ}={m ZZ | m>=0}.$ \ $forall n, {"Subgroup of" n ZZ} <--> {"Subgroups" n ZZ subset m ZZ subset ZZ}={m ZZ: m divides n}$