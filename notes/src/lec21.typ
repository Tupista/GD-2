*Recall* $quad F$ field, $n in ZZ,$ then $ &{F[X]"-modules", dim_F=n}\/tilde.eq \ <-->& {(V,T): dim V=n, T in "End"(V)}\/approx \ <-->&M_(n times n)(F)\/"conjugation" $

$f=c_0+dots+c_(n-1)X^(n-1)+X^n in F[X],$ then $F[X]\/(f)<-->C_f$ up to $tilde.eq$ and conjugation, respectively.

*Structure Theorem* $quad R$ PID, $M$ finitely generated $R$-module, then $ M tilde.eq R\/I_1 plus.circle dots plus.circle R\/I_k plus.circle E $ where $R!=I_1 supset dots supset I_k!={0}$ ideals, $k in ZZ_(>=0), E$ free module, all unique up to $tilde.eq.$

$R=F[X],$ can write $I_i=(f_i), f_i in F[X]\\F$ is monic / 首一.

*Theorem* $quad$ Fix $n in ZZ_(>=1).$ Let $A in M_(n times n)(F),$ then $exists !$ sequence of monic $f_1 divides dots divides f_k$ \ in $F[X]\\F,k>=1$ s.t. $sum deg(f_i)=n$ and $A attach(~,b:"conj")"diag"(C_f_1,dots,C_f_k),$ called the *rational canonical form* / 有理标准形, $f_1 divides dots divides f_k:$ the invariant factors of $A\/$conj.

*Proof* $quad$ Let $M$ be the $F[X]$-module$\/tilde.eq$ corresponding to $A\/$conj. Then $ M tilde.eq F[X]\/(f_1) plus.circle dots plus.circle F[X]\/(f_k) plus.circle E $ $dim_F M=n,dim_F F[X]=oo==>E={0},sum dim_F display(F[X]\/(f_i))=sum deg f_i=n.$

Known: $F[X]\/(f_i)<-->C_f_i,$ hence $M <--> "diag"(C_f_1,dots,C_f_k)$ up to $tilde.eq$ and conjugation, respectively. Uniqueness follows from structure theorem. #h(1fr) $square.stroked$

*Corollary*
- The minimal polynomial $"Min"_A=f_k.$
- The characteristic polynomial $"Char"_A=product f_i.$

*Proof*
- $forall h in F[X],h(A)=0.$ 

 Multiplication by $X$ on $M=display(F[X]/((f_1)) plus.circle dots plus.circle F[X]/((f_k))) <--> A$ as a linear map $F^n->F^n,$ so $ h(A)=0_(n times n)<==>& h(X) "acts as" 0 "on" M \ <==>& forall i, h(X) "acts as 0 on" F[X]\/(f_i) \ <==>& f_i divides h, forall i <==>f_k divides h. $ Thus $"Min"_A=f_k.$ #h(1fr) $square.stroked$

- Suffices to show $forall i, "Char"_C_f_i=f_i:$ known. #h(1fr) $square.stroked$

In particular: $"Min"_A divides "Char"_A,$ i.e. $"Char"_A (A)=0_(n times n):$ gives another proof of Cayley-Hamilton Theorem.

*Remark* $quad$ Sometimes, rational canonical form are stated using $attach(C_f,tl:t).$ Since $A attach(~,b:"conj") B <==> attach(A,tl:t) attach(~,b:"conj") attach(b,tl:t),$ this is equivalent.

*Another application of structure theorem* $quad R=ZZ==>$ Every finitely generated group $A,$ $ A tilde.eq ZZ\/d_1 ZZ plus.circle dots plus.circle ZZ\/d_k ZZ plus.circle ZZ^r $ for unique $d_1 divides dots divides d_k, k>=0, forall d_i>=1$ and $r>=0.$

*Next*:

- Variants of structure theorem,
- Application to rational canonical form $->$ Jordan canonical forms,
- Proof of structure theorem: existence & uniqueness, + computational recipe.

*Definition* $quad R$ commutative ring, $I subset R$ ideal, $M thick R$-module. Let $ M[I]:={x in M | forall a in I, a x=0} $ then $M[I]$ is a submodule of $M.$ When $I=(h),$ we write $M[h]==>M[I]=display(inter.big_(h in I) M[h]).$ If $R$ integral domain, $x in M, x in M[h]$ for some $h in R\\{0},$ we say $x$ is a *torsion element* / 挠元 of $M,$ otherwise we say $x$ is torsion-free.

*Example* $quad R$ integral domain, then there are no torsion elements $!=0$ in free $R$-modules. ($because$ reduce to $M=R$.)

For integral domain $R$ and $R$-module $M,$ $ M_"tors":={x in M: "torsion element"} $ Claim: $M_"tors"$ is a submodule of $M.$

- $0 in M_"tors",$
- If $x,y in M_"tors",$ say $r x=s y=0,$ then $r s(x+y)=0 ==>x+y in M_"tors"$ since $r s in R\\{0}.$
- Let $x in M_"tors",$ say $r x=0$ for some $r in R\\{0}.$ \ $forall t in R, r t x=t r x=t dot 0=0.$

Define $M_"tf":M\/M_"tors",$ called the torsion-free quotient / 无挠商 of $M$. Check that $M_"tf"$ has no torsion elements $!=0.$

- Let $overline(x)=x+M_"tors"in M_"tf", x in M, r in R\/{0}, r overline(x)=overline(0),$ i.e. $r x in M_"tors".$ \ $==>exists s in R\\{0}$ s.t. $underbracket(s r, in R\\{0}) x=0==>x in M_"tors",$ i.e. $overline(x)=overline(0)$ in $M_"tf".$ #h(1fr) $square.stroked$

*Observation* $quad h divides k in R==>M[h] subset M[k].$

Now assume $t in R\\{0}$ and $R$ PID: $ t ~ p_1^(a_1) dots p_m^(a_m), quad p_i "prime", thick a in ZZ_(>=0) $

*Lemma* $quad M[t]=display(plus.circle.big_(i=1)^m M[p_i^(a_i)]), M thick R$-module.

*Proof* $quad$ Suffices to show: $t=a b, a,b in R$ coprime $==>M[t]=M[a] plus.circle M[b].$

Recall: $exists u,v in R$ s.t. $a u+b v=1.$ \  Let $x in M[t],x=1 dot x=underbracket(a u x,in M[b])+underbracket(b v x,in M[a])==>M[t]=M[a]+M[b].$ \ Let $x in M[a] inter M[b],x=u a x+v b x=0+0=0$ in $M.$ #h(1fr) $square.stroked$

$p$ prime in a PID $R, M thick R$-module, then $M[p] subset M[p^2] subset dots$ Write $M[p^oo]=display(union.big_(i>=1) M[p^i]):$ submodule of $M.$ So: If $exists t!=0$ s.t. $M=M[t],$ then $M=display(plus.circle.big_p M[p^oo]),$ \ $because M[p^n]=M[p^n] inter M[t]=M[gcd(p^n,t)]=M[p^a].$ If $p^a bar.double t,$ then $M[p^oo]=M[p^a].$

*Example* $quad R$ PID, $M=R\/(t), p in R$ prime.
- $p^a divides t ==> (R\/(t))[p^a] tilde.eq R\/(p^a).$
- $p^a bar.double t ==>(R\/(t))[p^oo] tilde.eq R\/(p^a). $

*Proof*
- $p^a bar t, overline(x)=x+(t) in R\/(t).$ $p^a overline(x)=overline(0) <==>exists y,p^a x=t y$ in $R.$ Put $s:=t\/p^a in R,$ then $x in (s).$ \ So: $(R\/(t))[p^a]=(s)\/(t) arrow.l.twohead R$ as $R$-modules via $s y+(t) arrow.l.bar y.$ \  Its kernel $={y in R: t bar s y}=(p^a)==>(R\/(t))[p^a] tilde.eq R\/(p^a).$

- Note that $M:=R\/(t)$ satisfies $M=M[t].$ Hence $M[p^oo]=M[p^a] attach(tilde.eq,b:(1)) R\/(p^a).$ #h(1fr) $square.stroked$ 

*Second form of structure theorem for $M$ finitely generated $R$-modules, $R$ PID*: $ M tilde.eq underbrace(R\/(f_1) plus.circle dots R\/(f_k),=M_"tors"=M[f_k]) plus.circle E $ where $f_1 bar dots bar f_k, f_i in R\\{0}, in.not R^times.$

$forall p in R$ prime, $p bar f_k,$ take $b_i (p)$ s.t. $p^(b_i (p)) bar.double f_i, forall 1<=i<=k.$ \ $ ==>&R\/(f_i)=display(plus.circle.big_(p bar f_k) (R\/(f_i))[p^oo] tilde.eq plus.circle.big_(p bar f_k)(R\/(f_i))[p^(b_i (p))]) \ ==>& M_"tors" tilde.eq plus.circle.big_(p bar f_k) plus.big_i R\/(p^(b_i (p))) $

Note that invariant factors $f_1 bar dots bar f_k <-->$ elementary factors $b_1 (p) <= dots <= b_k (p), forall p.$

Now take $R=F[X],$ we obtain the 2nd form of rational canonical forms:

$A in M_(n times n) (F), n in ZZ_(>=1), "Min"_A =p_1^(a_1) dots p_m^(a_m), p_i$ monic irred. in $F[X],$ distinct, $a_i>=1.$ Then $ A attach(~,b:"conj") "diag"(A_1,dots,A_m) $ where $forall 1<=j<=m, A_j="diag"(C_(p_j^(b_(1,j))),dots,C_(p_j^(b_(r_j,j)))),r_j>=1,1<=b_(1,j)<=dots<=b_(r_j,j).$ 

These data are unqiuely determined by $A\/$conj, up to permutation of $p_1,dots,p_m.$

== $section$ Existence part of structure theorem 

$R$ PID. The key tool is: 

*Lemma* $quad E$ free $R$-module, rank $=n in ZZ_(>=0), N subset E$ submodule. Then $exists f_1,dots,f_n$ of $E,$ \ $d_1,dots,d_n in R$ s.t. $d_1 bar dots bar d_n$ and $d_1 f_1,dots,d_r f_r$ form a basis of $N$ ($==>N$ free) \ where $r:=max{i:d_i!=0}.$

*Proof of existence part in structure theorem*

$M$ finitely generated $R$-module, say generated by $x_1,dots,x_n.$ \ $E:=R^(plus.circle n)->>M,$ its kernel $=:N ==>M tilde.eq E\/N.$ Take $f_i,d_i,r$ from Lemma, then $ M tilde.eq& (R f_1 plus.circle dots plus.circle R f_n)/(R d_1 f_1 plus.circle dots plus.circle R d_r f_r) quad quad ((M_1 plus.circle M_2)/(N_1 plus.circle N_2) tilde.eq M_1/N_1 plus.circle M_2 / N_2) \ tilde.eq& (plus.big_(i=1)^r R\/(d_i)) plus.circle R^(plus.circle (n-r)). $ #h(1fr) $square.stroked$