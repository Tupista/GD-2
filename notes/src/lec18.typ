*Supplements* $quad$ We say a group $G$ is *simple* if $G!={1}$ and $forall N lt.tri G, N={1},G.$

*Example* $quad$ Cyclic group $ZZ\/n ZZ$, all its subgroups are normal, and are $m ZZ\/n ZZ, m divides n.$ \ Hence $Z\/n ZZ$ is simple $<==> n$ is a prime.

In short, simple cyclic group $approx ZZ\/p ZZ,p$ prime $approx G, abs(G)=p.$

*Proposition* $quad$ Let $H,K$ be subgroups of $G,$ and $K lt.tri G.$ $H K:={h k | h in H, k in K} subset G$ is a subgroup and $H K=K H.$

*Proof* $quad$ First, $H K=K H: forall h in H, k in K, h k=underbracket(h k h^(-1),subset h K h^(-1)=K) h in K H,$ the other side is similar.
Next, $H K$ is a subgroup:
- $1=1 dot 1 in H K,$
- $h_1 k_1 dot h_2 k_2 in h_1 K H k_2=h_1 H K k_2=H K,$
- $(h k)^(-1)=k^(-1)h^(-1) in K H=H K.$ #h(1fr) $square.stroked$

*Generalization* $quad$ $forall K lt.eq.slant G,$ define $Z_G (K):={g in G | g k g^(-1)=k}$ / 中心化子群 and \ $N_G (K):={g in G | g K g^(-1)=K}$ / 正规化子群.

From definition $Z_G (K) lt.eq.slant N_G (K), K lt.tri N_G (K).$

Then, if $H, K lt.eq.slant G "s.t." H lt.eq.slant N_G (K),$ then $H K=K H$ is a subgroup.

*Proof* $quad$ Work in $N_G (K)$ where $K lt.tri N_G (K).$ #h(1fr) $square.stroked$

*Proposition* $quad H,K lt.eq.slant G, H lt.eq.slant N_G (K),$ then $H inter K lt.tri H$ and $ H K\/K quad &tilde.eq quad H\/(H inter K) \ h K quad &<-> quad h (H inter K) $

*Proof* $quad$ Let $x in H inter K, h in H.$ then $h x h^(-1) in H, H subset N_G (K) ==> h x h^(-1) in K==> H inter K lt.tri H.$

Consider $H arrow.r.hook H K arrow.twohead H K\/K,$ its composite $=: f.$ $f(h)=h K.$
- $f$ is surjective: $h k K=h K=f(h).$
$ker(f)= H inter K$ since $f(h)=K <==> h K=K<==> h in K.$ 

Hence $f$ induces $overline(f): H\/(H inter K)tilde.eq H K\/K,overline(f)(h (H inter K))=f(h)=h K.$ #h(1fr) $square.stroked$

== $section$ Semidirect products

Already seen: $G_1,G_2$ groups $==>G_1 times G_2$ is also a group.

Below is a "twisted" version.

*External version* $quad$ Given $H,N$ groups, homomorphism $phi:H->"Aut"(N).$ On the set $N times H$, define the binary operation $(n,h)(n',h'):=(n phi_h(h'),h h'),$ where $phi_h in "Aut"(N)$ is the image of $h.$

*To check*: This makes $N times H$ into a group $N times.r_phi H$ with $1_(N times.r_phi H)=(1_N,1_H),$\ $(n,h)^(-1)=(phi_(h^(-1))(n^(-1)),h^(-1)).$

$N arrow.r.hook N times.r_phi H arrow.l.hook H$ as subgroups, and $n|->(n,1_H), h|->(1_N,h),(n,1_H)(1_N,h)=(n,h).$ \ Also $N lt.tri N times.r_phi H.$

*Proof* $quad$ Idea: seek a group $G$ s.t. $N arrow.hook G arrow.l.hook H, N lt.tri G,$ and every $g in G$ can be expressed uniquely as $g = n h.$ If so: $n h dot n' h'=n underbracket(h n' h^(-1), in N) dot underbracket(h h', in H),$ hence everything is covered by $ phi: H quad -> quad "Aut"(N) \ h quad |-> quad phi_h $ where $phi_h (n)=h n h^(-1)$ in $G.$ Also $(n h)^(-1)=h^(-1)n^(-1)=(h^(-1)n^(-1)h)h^(-1)=phi_(h^(-1))(n^(-1))h.$

*Construction* $quad$ Build "$G$" on the set $N times H.$

Associativity: $ ((n,h)(n',h'))(n'',h'') =& (n phi_h (n'),h h')(n'',h'') \ =& (n phi_h (n') phi_(h h')(n''),h h' h''), \ (n,h)((n',h')(n'',h'')) =& (n,h)(n' phi_h' (n''),h' h'') \ =&(n phi_h (n' phi_h'(n'')),h h' h''). $ To show: $phi_h (n') phi_(h h') (n'')=[phi_h (n' phi_h' (n''))=phi_h (n')phi_h (phi_h' (n''))],$ \ $<== phi_(h h') (n'')=phi_h (phi_h' (n'')).$ $phi$ is a homomorphism $==> phi_(h h')=phi_h compose phi_h'. checkmark$

Unit:  $ (1_N,1_H)(n,h)=(phi_1 (n),h)=(n,h), because phi_1=1_"Aut"(N)=id, \ (n,h)(1_N,1_H)=(n phi_h (1_N),h)=(n,h), because phi_h (1_N)=1_N. $

Inverse: omitted.

Remains to show both embeds are homomorphisms (omitted), and $ (n,1_H)(1_N,h)=(n phi_1(1_N),h)=(n,h). $

To show $N lt.tri N times.r_phi H,$ it suffices to show that $ (1_N,h)(n,1_N)(1_N,h)^(-1) &= (1_N,h)(n,1_H)(1_N,h^(-1)) \ &= (1_N,h)(n,h^(-1))=(phi_h (n),1_H) in N. $ #h(1fr) $square.stroked$

Special case: Take $phi_h=id_N, forall h in H==>$ get $N times H.$

*Internal version* $quad$ Given a group $G$ and subgroups $N,H lt.eq.slant G.$ When can we identify $G$ with $N times.r_phi H$ for suitable $phi$ s.t. $N times.r_phi H tilde.eq G$?

*Proposition* $quad$ Assume $N lt.tri G, G=N H, N inter H={1}.$ Consider $"Ad":H->"Aut"(N),$ \ $"Ad"_h (n)=h n h^(-1).$ Then $Phi:N times.r_"Ad" H tilde.eq G, (n,h)|->n h$ with notation $G=N times.r H.$

*Proof* $quad$ $Phi$ is a homomorphism: $ Phi((n,h)(n',h'))&=Phi(n "Ad"_h (n'),h h') \ &= n "Ad"_h (n')h h'=n h n' h'=Phi((n,h))Phi((n',h')). $

$Phi$ is surjective as $G=N H.$

$Phi((n,h))=1<==>n h=1<==>n=h^(-1) in N inter H={1}.$ Hence $Phi$ is bijective. #h(1fr) $square.stroked$
#pagebreak()
*Examples*

- Let $n>1, tau:=(i thick j) in S_n.$ Then:
  - $S_n=A_n times.r angle.l tau angle.r,$ \ $because A_n inter angle.l tau angle.r ={id},A_n=ker("sgn") lt.tri S_n.$ \ $forall sigma in S_n,$ if $sigma in.not A_n$ then $"sgn"(sigma)=-1==>sigma tau in A_n, sigma in A_n tau.$ Thus $S_n=A_n angle.l tau angle.r.$

  - Note that $n>2 ==> S_n tilde.eq.not A_n times ZZ\/2 ZZ, because Z(S_n)={id},Z(A_n times ZZ\/2 ZZ) supset ZZ\/2 ZZ.$

- Dihedral groups / 二面体群 $ "SO"(2) lt.tri "O"(2):={"orthogonal trans. in" RR^2} $ Let $n>=3, "D"_(2n):={T in "O"(2) | T("regular" n"-gon") = "regular" n"-gon"}$ \ $==> "D"_(2n)$ is a subgroup of $"O"(2).$

  Identify $RR^2$ with $CC,$ and the regular $n$-gon has vertices $1,zeta,dots,zeta^(n-1)$ with $zeta=e^((2pi i)/n).$

  - $sigma:=$ rotation $R((2pi)/n)$ on $RR^2=$ multiplication by $zeta$ on $CC ==> sigma in "D"_(2n), ZZ\/n ZZ tilde.eq angle.l sigma angle.r lt.eq.slant "D"_(2n).$

  - $tau:=$ reflection w.r.t. the X-axis on $RR^2=$ conjugation on $CC ==> tau in "D"_(2n), ZZ\/2 ZZ tilde.eq angle.l tau angle.r lt.eq.slant "D"_(2n).$

  - $tau sigma^a tau^(-1)=tau sigma^a tau=sigma^(-a).$ Can check over $CC.$

  Claim: $"D"_(2n)=angle.l sigma angle.r times.r angle.l tau angle.r tilde.eq ZZ\/n ZZ times.r_phi ZZ\/2 ZZ$ where $phi(1+2ZZ)$ maps $a+n ZZ$ to $-a+n ZZ.$

  *Proof* 
  
  - $"D"_(2n) inter "SO"(2)=angle.l sigma angle.r, because$ any rotation $in "D"_(2n)$ must send $1$ to $zeta^a, a in ZZ\/n ZZ==>$ it is $sigma^a.$

  - $"SO"(2) lt.tri "O"(2) ==> angle.l sigma angle.r lt.tri "D"_(2n).$

  - $tau in.not "SO"(2),$ hence $angle.l sigma angle.r inter angle.l tau angle.r = {id}. $

  - $tau sigma^a tau^(-1)=sigma^(-a) ==>$ the description of $phi.$

  - Remains to show $"D"_(2n)=angle.l sigma angle.r angle.l tau angle.r$.

    Let $g in "D"_(2n), g(1)=zeta^k ==>(sigma^(-k) g)(1)=1 in CC.$ 
    
    In $CC$ we have $angle.l 1 angle.r^perp=angle.l "i" angle.r==> sigma^(-k) g$ has matrix $display(mat(1,;,plus.minus 1)).$

    - "$+$" $==> sigma^(-k) g=id$ in $"D"_(2n),g=sigma^k.$

    - "$-$" $==> sigma^(-k) g=tau$ in $"D"_(2n), g=sigma^k tau.$ #h(1fr) $square.stroked$
  
  *Remark* $quad$ For any $n>=1,$ we can define $"D"_(2n)=ZZ\/n ZZ times.r_phi ZZ\/2 ZZ$ where $phi(1+2ZZ)$ maps $a+n ZZ$ to $-a+n ZZ.$ In this sense $"D"_2=ZZ\/2 ZZ, "D"_4=ZZ\/2 ZZ times ZZ\/2 ZZ.$