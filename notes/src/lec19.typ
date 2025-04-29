== $section$ Modules / 模

*Idea* $quad$ $F$ field, $V: F$-vector space is a group (additive), $(V,+)$ endowed with $(dot): F times V->V "s.t."$ $ t(v_1+v_2)=t v_1+t v_2, quad (t_1+t_2)v=t_1 v+t_2 v, quad 1_F v=v. $ Clearly: can replace $F$ by any ring.

*Definition* $quad R$ ring, a (left) *$R$-module* is an additive group $(M,+)$ endowed with \  $(dot):R times M->M "s.t."$ $ r(x+y)=r x+r y, quad (r_1+r_2)x=r_1 x+r_2 x, quad (r_1 r_2) x=r_1 (r_2 x), quad 1_R x=x $ where $r,r_1,r_2 in R, x,y in M.$ Shorthand: $M.$

The right $R$-module is similar except for $x(r_1 r_2)=(x r_1)r_2.$

Trivial $R$-module: ${0}.$

*Remark* $quad$ Left $R$-module $=$ right $R^"op"$-module where $R^"op"$ is the ring with the same $(R,+)$ \ but $x dot.circle y=y x.$ Hence we shall focus on left modules. Note that $R$ commutative $==>$ no difference!

*General properties*
- $0_R x=0_M,$
- $(-1_R)x=-x,$
- $(n dot 1_R) x=n x, forall n in ZZ.$

*Examples*

- $F$ field, then $F$-modules are $F$-vector spaces.
- $R$ is a $R$-module where $+,dot$ are those in $R.$
- Take $R=ZZ, ZZ$-module $=$ an additive ring $(A,+)$ with $ZZ times A->A+$ properties. \ But: $forall n in ZZ, underbracket(n a,"module")=underbracket(n a,(A,+))==>$ the module structure is determined by $(A,+).$ \ Conversely: given $(A,+),$ setting $ZZ times A->A:(n,a)|->underbracket(n a,(A,+))$ makes $A$ into a $ZZ$-module. \ Hence $ZZ$-modules $=$ additive groups ($=$ abelian groups), and the notation of homomorphisms conincide.

*Definition* $quad$ Let $M_1,M_2$ be $R$-modules. A map $f:R_1->R_2$ is said to be a homomorphism if
- $f$ is a homomorphism of abelian groups,
- $f(r x)=r f(x), forall r in R, x in M_1.$
$"Hom"(M_1,M_2)="Hom"_R (M_1,M_2)={f:M_1->M_2 | "homomorphisms"}.$

$"Hom"(M_1,M_2)$ is an additive group via $(f_1+f_2)(x)=f_1(x)+f_2(x).$

*Caution* $quad$ In general, $"Hom"(M_1,M_2)$ is not an $R$-module by setting $(r f)(x):=r f(x)$! \ $because (r f)(r' x)=r f(r' x)= r r'f(x)!=r' r f(x)=r' ((r f)(x)).$ However if $R$ commutative, then $"Hom"(M_1,M_2)$ is an $R$-module by setting $(r f)(x):=r f(x).$

Homomorphisms are closed under composition. Composition is "bi-additive":$ (f_1+f_2)g=f_1 g + f_2 g, quad f(g_1+g_2)=f g_1+f g_2. $

*Definition* $quad$ Isomorphisms from $M$ to $M'$ means a homomorphism $f:M->M'$ s.t. \  $exists g:M'->M$ homomorphism, $g f=id_M, f g=id_M'.$ Such $g$ is unique (the inverse map of $f$). We say $M$ is isomorphic to $M'$ if $exists f:M arrow.tilde M'.$

*Notation* $quad f:M arrow.tilde M', M tilde.eq M'.$

*Easy properties* 
- Closed under composition,
- $id_M$ is a $arrow.tilde,$
- $f:thick arrow.tilde thick ==> f^(-1):thick arrow.tilde.$

*Proposition* $quad$ Let $f:M->M'$ homomorphism, if $f$ is bijective, then $f$ is $arrow.tilde.$

*Proof* $quad$ Same as groups / vector spaces. It boils down to show: the inverse map $f^(-1):M'->M$ is a homomorphism. #h(1fr) $square.stroked$

*Definition* $quad$ *Submodule* $N subset M$ is a subset that is a subgroup under $+$ and closed under multiplication by $R.$ $N$ is an $R$-module itself, and the inclusion $N arrow.hook M$ is a homomorphism.

*Examples* 

- $R$ field $==>$ get vector subspaces. $R=ZZ ==>$ subgroups. \ $R$ commutative, $M=R==>$ submodules $=$ ideals of $R.$

- Let $(M_i)_(i in I)$ be a family of submodules of $M==> display(inter.big_(i in I) M_i)$ is a submodule of $M.$ 

- Define $display(sum_(i in I) M_i:={"finite sums" lr(sum_(i in I) x_i thick|) thick forall i in I, x_i in M_i }),$ it is a submodule of $M.$ 

 It is also the smallest submodule of $M$ that contains all $M_i.$ 

- $S$ any subset of $M,$ set $angle.l S angle.r:={"finite sums" display(lr(sum_(s in S) r_s s thick |)thick r_s in R)} = display(sum_(s in S) R s).$ 

 It is the smallest submodule of $M$ containing every element in $S.$

 $angle.l s_1, dots,s_n angle.r := angle.l {s_1,dots,s_n} angle.r. $

*Observation* $quad$ Let $f:M->M'$ be a homomorphism, $ker(f):=f^(-1)(0_M'), im(f)=$ its image, both are submodules (of $M$ and $M'$, respectively), $because f(r x)=r f(x).$

== $section$ Quotient modules 
$R$ ring, $M:R$-module, $N subset M$ submodule. Cosets of $N$ in $M:=$ subsets of the form $x+N$ in $M.$

*Goal* $quad$ Upgrade $(M\/N,+)$ to an $R$-module s.t. the quotient map $q:M->M\/N$ is a homomorphism of modules.

*Definition-Proposition* $quad$ On the quotient group $(M\/N,+)$ define $ (dot):R times M\/N quad &-->quad M\/N \ (r,x+N)quad&|->quad r x + N $
This makes $M\/N$ into an $R$-module s.t. $q$ is a homomorphism of modules. We call $M\/N$ the quotient module of $M$ by $N$.

*Proof* $quad$ Well-defined: suppose $x+N=x'+N,$ then $exists u in N "s.t." x'=x+u,$ then $ r x'+N=r x+r u+N=r x+N. $

Asscociativity / distributativity and other axioms: reduce to the level of $M$.

Finally, $q$ is already a homomorphism of abelian groups. Also $ q(r x)=r x+N=r(x+N)=r q(x). $ #h(1fr) $square.stroked$

This is also the unique module structure on $M\/N$ that makes $q$ $R$-linear.

$R$ field $-->$ quotient spaces, $R=ZZ -->$ quotient groups.

*Definition* $quad$ Let $f:M->M'$ homomorphism, its *cokernel* $:="coker"(f):=M'\/im(f).$

$f$ surjective $<==> im(f)=M' <==> "coker"(f)={0}.$ Also $f$ injective $<==>ker(f)={0}.$

*Proposition (universal property of quotients)* $quad$ Let $f:M->M'$ homomorphism, $N subset M$ submodule, $N subset ker(f).$ Then $exists!$ homomorphism $overline(f):M\/N->M'$ s.t. $f=overline(f)q$ and $im(f)=im(overline(f)).$

*Proof* $quad$ Reduce to the level of additive groups. Remains to show: $overline(f)$ is an $R$-module homomorphism.$ overline(f)(r x+N)=f(r x)=r f(x)=r overline(f)(x+N). $ #h(1fr) $square.stroked$

*Corollary* $quad$ Given $f:M->M'$ homomorphism, $N subset M, N' subset M'$ submodules, $f(N) subset N',$ then $exists! overline(f):M\/N->M'\/N'$ s.t. $q' f=overline(f)q.$

*Proof* $quad$ Take $f=f q'$ in previous Prop. #h(1fr) $square.stroked$

*Proposition* $quad f:M->M'$ homomorphism, then $overline(f):M\/ker(f)arrow.tilde im(f)subset M'.$

*Proof* $quad$ Known that $M\/ker(f) attach(arrow.tilde,b:overline(f))im(f)$ as groups. But $overline(f)$ is a homomorphism of $R$-modules, hence it is $arrow.tilde$ of $R$-modules. #h(1fr) $square.stroked$

*Proposition* $quad f:M->M'$ surjective homomorphism, then: $ {"submod" N' subset M'} quad &attach(<-->,t:"1:1")quad {"submod" ker(f) subset N subset M} \ N quad &arrow.r.long.bar quad f^(-1)(N') \ f(N) quad &arrow.l.long.bar quad  N $ preserving $subset,$ and if $N'<-->N$ then the composite of $M->M'->M'\/N'$ induces $M\/N arrow.tilde M'\/N'.$

*Proposition* $quad "M"$ $R$-module, $M,N subset "M"$ submodules $==> M\/(M inter N) arrow.tilde (M+N)\/N.$

*Proof* $quad$ Upgrade from the group version. #h(1fr) $square.stroked$