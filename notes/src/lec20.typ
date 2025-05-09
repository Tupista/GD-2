*Recall* $quad$ Modules over a ring $R$ (left), homomorphisms, isomorphisms, submodules, quotients.

$R$ field $==>$ vector space.

== $section$ Direct product and direct sum

*Definition* $quad R$ ring, $(M_i)_(i in I)$ a family of $R$-modules, $display(product_(i in I) M_i)$ defined as an additive group.

Make it into an $R$-module: $ R times product_(i in I) M_i quad &arrow.long quad product_(i in I) M_i\ (r,(x_i)_(i in I)) quad &arrow.bar.long quad (r x_i)_(i in I) $ where $display(product_(i in I) M_i)$ is called the *direct product*.

$ plus.circle.big_(i in I) M_i:={(x_i)_(i in I) | exists I_0 in I "finite", forall i in I\\I_0,x_i=0} $ is called the *direct sum*.

*Convention* $quad I=emptyset ==> product=plus.circle.big={0}.$ Notations are similar to vector spaces.

$forall j in I,$ we have homomorphisms $iota_j:M_j arrow.hook display(plus.circle.big_(i in I) M_i), thick p_j:display(plus.circle.big_(i in I) M_i) arrow.twohead M_j ==>$ Can identify $M_j$ as a submodule of $display(plus.circle.big_(i in I) M_i).$ Then $plus.circle.big M_i=sum$ of these submodules.

*Internal version*

*Definition-Proposition* $quad M thick R$-module, $(M_i)_(i in I)$ family of submodules. \  Define $sigma: display(plus.circle.big_(i in I) M_i->M), thick (x_i)_(i in I)|->sum x_i.$ The following are equivalent: \ (1) $sum M_i=M,$ and $forall i in I, M_i inter display(sum_(j!=i) M_j)={0}$; #math.quad (2) $forall x in M, exists!(x_i)_(i in I)$ s.t. $x=sum x_i;$ \ (3) $sigma$ is an isomorphism.

If these hold, we say $M$ is the (internal) direct sum of submodules $(M_i)_(i in I).$

*Proof* $quad$ Same as the case of vector spaces. #h(1fr) $square.stroked$

== $section$ Free module

*Definition* $quad X$ set, $R^(plus.circle X) thick R$-module, along with map $X->R^(plus.circle X),x thick |->(delta_(x y))_(y in X).$ It is called the *free module* with basis $X.$

*Observation* $quad forall R$-module $N, "Hom"_R (R^(plus.circle X),N)<-->{"maps" X->N}$ where $ phi quad &arrow.bar.long quad phi_X, \ [phi((r_x)_x)=sum_x r_x f(x)] quad &arrow.l.bar.long quad (f:X->N). $

*Question* $quad$ Given $M,$ subset $X subset M,$ does these exist $M arrow.tilde R^(plus.circle X)$?

#pagebreak()

*Definition-Proposition* $quad$ The following are equivalent:

- $X$ generates $M,$ and $X$ is linearly independent, i.e., $display(sum_(x in X) r_x x=0 <==> forall x), r_x=0.$

- $forall y in M, exists! (r_x)_(x in X) in R^(plus.circle X)$ s.t. $y=display(sum_(x in X) r_x x).$

- Let $phi:R^(plus.circle X)->M$ be the homomorphism corresponding to $X arrow.hook M, phi$ is an isomorphism.

In this case, we say $M$ is free with basis $X.$ We say an $R$-module $M$ is free if $exists X subset M$ s.t. $M$ is free with basis $X.$ ($<==> exists$ isomorphism $R^(plus.circle X) arrow.tilde M$ for some $X$)

*Proof* $quad$ (1) $<==>$ (2): $X$ generates $M<==>$ existence of $(r_x)_x.$ Linearly independent $<==>$ unique.

(2) $<==>$ (3): Existence $<==> phi$ surjective, uniqueness $<==>phi$ injective. #h(1fr) $square.stroked$

*Remark* $quad R$ field, then $forall R$-module is free! (also true for division ring, not true in general)

*Example* $quad R=ZZ, M:=ZZ\/n ZZ, n in.not {0,plus.minus 1} ==> M tilde.eq.not ZZ^(plus.circle X)$ for any set $X$ by counting.

*Definition-Proposition* $quad R$ commutative ring, $M$     free with basis $X,Y,$ then $abs(X)=abs(Y).$ Hence we can define its *rank* as $"rk"(M):=abs(X)$ for any basis $X$ of $M.$

*Proof (the case $R$ integral domain, $M$ finitely generated)* 

First: $forall$ basis $X, abs(X)<oo, because$ Identify $M$ with $R^(plus.circle X).$ But $X$ infinite $<==> R^(plus.circle X)$ not finitely generated! 

Secondly $abs(Y)<=abs(X)=:n.$ Identify $M$ with $R^(plus.circle n) arrow.hook K^(plus.circle n)$ where $K:="Frac"(R).$ \  $forall y_1,dots,y_(n+1)$ in $M=R^(plus.circle n), exists a_1,dots,a_(n+1) in K$ not all $0$ s.t. $sum_(i=1)^(n+1) a_i y_i=0$ in $K^n:K$-vector space. May assume $forall i, a_i in R,$ hence $y_1,dots,y_(n+1)$ are linearly dependent in $M, abs(Y)<=n.$ #h(1fr) $square.stroked$ 

*Remark* $quad exists$ version for right $R$-modules. Fact: (right modules) $ "Hom"_R (R^(plus.circle n), R^(plus.circle m))quad &<--> quad M_(m times n) (R) \ [mat(x_1;dots.v;x_n)|-> A mat(x_1;dots.v;x_n)] quad & arrow.l.bar.long quad A $ we use right module to ensure for $t in R,$ $ mat(x_1 t;dots.v;x_n t)|->[A mat(x_1;dots.v;x_n)]t. $ For left modules: should use row vectors and right multiplication.

*Key example* $quad F$ field, $X$ variable. $M thick F[X]$-module $-->$  get $F$-vector space structure on $M$ via $F arrow.hook F[X]$ as subring.

*Lemma* $quad V thick F$-vector space, upgrade $V$ to an $F[X]$-module $<-->$ prescribe $T in "End"_F (V)$ by letting $f in F[X]$ act on $V$ via $f(T) in "End"_F (V).$ Furthermore, given $(V,T)$ and $(V',T'),$ $ "Hom"_(F[X]) (V,V')={phi in "Hom"_F (V,V') | phi T=T' phi}. $

*Proof* $quad$ Upgrade $V <-->$ prescribe $forall f in F[X]$ with $rho_f:V->V$ s.t. $ rho_f (v_1+v_2)=rho_f v_1 + rho_f v_2, quad rho_(f+g)=rho_f + rho_g, quad rho_(f g)=rho_f rho_g, quad rho_t (v)=t v, forall t in F. $ $==> rho_f (v)=f(T)v$ if $T:=rho(X):V->V$ is $F$-linear. 

Conversly, given $T,$ can define $rho_f=f(T)$ to make $V$ into $F[X]$-module. 

Given $V,V', phi in "Hom"_F (V,V'),$ $ phi in "Hom"_F (V,V') &<==> phi rho_f=rho'_f phi, forall f in F[X] \ &<==>phi rho_X=rho'_X phi <==> phi T=T' phi. $ #h(1fr) $square.stroked$

*Corollary* $quad$ Given $(V,T),(V',T'),$ then $ {"isom" phi:V->V' "as" F[X]"-modules"} = {F"-linear" phi:V arrow.tilde V' "s.t." phi T=T' phi}. $

*Goal* $quad$ Classify all $F[X]$-modules $V$ (or data $(V,T)$) up to $tilde.eq,$ where $dim_F V=:n<oo.$

Define $(V,T) approx (V',T')$ if $exists phi:V->V' thick F$-linear s.t. $phi T=T' phi.$

$ &{V:F[X]"-module", dim_F V=n}\/tilde.eq \ <-->& {(V,T): T in "End"_F (V), dim_F V=n}\/approx \ <-->& M_(n times n) (F)\/" conjugation" (V=F^n) $

Key: $F[X]$ is a PID, and $dim_F V<oo==>V$ is  a finitely generated $F[X]$-module.

*Theorem* $quad R$ PID, $M$ finitely generated $R$-module, then $ M tilde.eq R\/I_1 plus.circle dots plus.circle R\/I_k plus.circle E $ where
- $I_1 supset dots supset I_k:$ non-trivial ideals in $R$,
- $k in ZZ_(>=0),$
- $E$ finitely generated free $R$-module, and if $ R\/I_1 plus.circle dots plus.circle R\/I_k plus.circle E tilde.eq R\/I'_1 plus.circle dots plus.circle R\/I'_k plus.circle E', $ then #h(1fr)
 - $k=k', forall i, I_i=I'_i,$
 - $E tilde.eq E'$ ($<==> "rk"(E)="rk"(E')$).
The sequence of ideals $I_1 supset dots I_k supset {0} supset dots supset {0}$ is called the invariant factors / 不变因子 of $M.$

$R=F[X], M=F[X]\/(f), f=c_0+dots+c_(n-1)X^(n-1)+X^n.$ \ Take the basis of $M:1+(f),dots,X^(n-1)+(f),$ then $ T(X^i+(f))=x^(i+1)+(f), \  T(X^(n-1)+(f))=-c_0-dots-c_(n-1)X^(n-1)+(f), $ hence the matrix of $T$ is $ c_f=mat(0,0,dots,0,-c_0;1,0,dots,0,-c_1;0,1,dots,0,-c_2;dots.v,,dots.down,,dots.v;0,0,dots,1,-c_(n-1)) $