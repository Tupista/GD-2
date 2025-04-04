*Recall* $quad$
- $HH={q=a+b"i"+c"j"+d"k" | a,b,c,d in RR}$ is a $RR$-vs. with $dim=4.$ 
- It is also a ring with subring $RR.$ 
- $RR$ acts on $HH$ by multiplication $:=$ the $RR$-multiplication on $RR$-vs.

Moreover $CC arrow.hook.r HH$ as a subring. Injectivity is obvious. Properties of $+,1,dot$ are preserved. \ $==> HH$ becomes a $CC$-vector space. 
- $dim_CC HH=2:$ every $q in HH$ has unique expression $q=z+w"j",$ \ $because a+b"i"+c"j"+d"k"=(a+b"i")+(c+d"i")"j".$

$HH$ is not commutative by definition, its center $Z(HH)$ equals $RR.$ \ $because$ Multiplication $HH times HH->HH$ is $RR$-bilinear, hence $z in Z(HH)<==>forall x in {1,"i","j","k"},x z = z x.$

Next: show $HH$ is a division ring, i.e. $HH^times=HH\\{0}.$

*Definition* $quad$ For $q=a+b "i"+c "j"+d "k" in HH,$ define its 
- *conjugate* $overline(q):=a-b "i"-c "j"-d "k",$
- *trace* $"Tr"(q):=q+overline(q)=2a,$
- *norm* $N(q):=q overline(q).$

*Properties*
- $q|->overline(q)$ is $RR$-linear, and $overline(overline(q))=q.$
- $overline(q_1 q_2)=overline(q_2) dot overline(q_1), because$ both sides are $RR$-linear, suffices to check $q_1,q_2 in {1,"i","j","k"}.$
- $"Tr"(q)$ is $RR$-linear.
- (properties of norm)
 - $N(1)=1,$
 - $N(q) in RR, because overline(q dot overline(q))=overline(overline(q)) dot overline(q)=q overline(q).$
 - $N(q_1 q_2)=N(q_1)N(q_2), because q_1 q_2 overline(q_1 q_2)=q_1 q_2 overline(q_2) dot overline(q_1)=N(q_2) N(q_1).$
 - $N(a+b "i"+c "j"+d "k")=a^2+b^2+c^2+d^2>=0.$

*Theorem* $quad HH^times=HH\\{0}.$ In fact, $q!=0==>q^(-1)=N(q)^(-1)overline(q).$

*Proof* $quad q!=0 ==>N(q)>0.$ $ q dot N(q)^(-1)overline(q)=N(q)^(-1)q overline(q)=1, \ N(q)^(-1)overline(q) dot q=1. $ #h(1fr) $square.stroked$

*Remark* $quad$ Frobenius proved that if $D:$ division ring + $RR$-vs. structure s.t. multiplication \ $D times D->D$ is $RR$-bilinear, $dim_RR D<infinity,$ then $exists$ isomorphism of $RR$-vs. and ring $D tilde.eq RR,CC "or" HH.$

$exists$ embedding of rings $Phi:HH arrow.r.hook M_(2 times 2)(CC), z+w "j"|->display(mat(z,-overline(w);w,overline(z))),z,w in CC.$ Injectivity is clear, \ $Phi(1)=1,RR$-linear (preserves $+$). To show $Phi(q_1 q_2)=Phi(q_1)Phi(q_2),$ use $"j" w=overline(w) "j"$ and $"j"^2=-1$ to compute. #h(1fr) $square.stroked$

In this sense, 
- $"Tr"$ of $HH <--> "Tr"$ in $M_(2 times 2)(CC)$,
- norm of $HH <--> det$ in $M_(2 times 2)(CC).$ 

Under this projection, $ "i"|->mat("i",;,-"i"), quad"j"|->mat(,1;-1,;), quad "k"|->mat(,-"i";-"i",;). $ These matrices are (up to $plus.minus$) called Pauli matrices.

Similarly $CC arrow.hook.r M_(2 times 2)(RR), a+b "i"|->display(mat(a,-b;b,a)).$

== $section$ Quaternions and rotation in $RR^3$

$RR^3 tilde.eq HH_0:={q in HH | q=-overline(q)}={q | "Tr"(q)=0} = {a "i"+b "j"+c "k" | a,b,c in RR}.$ \ If we transport the std IP on $RR^3$ to $HH_0,$ then $forall q in HH_0,||q||^2=N(q).$

*Lemma* $quad$ Let $x in HH^times.$
- $N(x q x^(-1))=N(q), forall q in HH,$
- We have an orthogonal transformation $R_x: q|->x q x^(-1)$ on $HH_0,$
- $det R_x=1.$

*Proof* $quad$
- $N(x)N(x^(-1))=N(x x^(-1))=N(1)=1.$ Hence $N(x q x^(-1))=N(x)N(q)N(x^(-1))=N(q).$ 

 Similarly $overline(x^(-1))dot overline(x)=overline(x dot x^(-1))=1=overline(x^(-1)dot x)=overline(x) dot overline(x^(-1)) ==> overline(x^(-1))=overline(x)^(-1).$
- Let $q in HH_0$ and assume $N(x)=1 (x^(-1)=overline(x)).$ \ $overline(x q x^(-1))=overline(x^(-1))dot overline(q)dot overline(x)=x overline(q) dot overline(x)=-x q overline(x) ==> x q overline(x) in HH_0.$ \ $RR$-linear is given by definition. $R_x$ is also isometry by (1), hence case $N(x)=1$ is proved. \ In general $x=sqrt(N(x))dot y, N(y)=1, x q x^(-1)=y q y^(-1).$
- Identify $HH$ with $RR^4$ and $HH_0$ with $RR^3==>R_x$ identified with a $3 times 3$ orthogonal matrix, hence $det T in {plus.minus 1}.$ All entries of the matrix are continuous functions in $x in HH^times tilde.eq RR^4 \\ {0},$ \ i.e. $RR^4\\{0}->{plus.minus 1}, x|->det R_x$ is continuous.  Note that $x=1$ gives $det R_1=det 1_(3 times 3)=1.$ Now $RR^4\\{0}$ is connected and ${plus.minus 1}$ is discrete, hence it is a constant function. $det R_x eq.triple 1.$ #h(1fr) $square.stroked$

*Observations*
- $R_(x y)=R_x R_y, because (x y) q (x y)^(-1)=x (y q y^(-1))x^(-1)=(R_x R_y) (q) ==> R_x^(-1)=R_(x^(-1)).$ \
- $R_(t x)=R_x, forall t in RR^times.$

From above we showed that $R_x$ acts as a rotation in $HH_0 tilde.eq RR^3$ forall $x in HH^times.$

*Question*: does $forall$ rotation arise in this way? (if so, may assume $N(x)=1$ by $\/sqrt(N(x))$.)

*Theorem* $quad$ Let $T:$ rotation in $HH_0.$ $exists x in HH, N(x)=1 "s.t." T=R_x$ and $x$ is unique up to $plus.minus.$

*Proof* $quad$ Existence: Identify $HH_0$ with $RR^3.$ Euler angles: $exists phi,theta,psi in RR,$ $ T=R_e_3(psi)R_e_2(theta)R_e_3(phi). $ Hence reduce to the case $T=R_e_ell (psi), ell in {1,2,3},psi in RR.$ \ For $ell=1:$ take $x=cos theta+sin theta "i" in HH^times, N(x)=1. x^(-1)=overline(x)=cos theta-sin theta "i".$ $ x "i" x^(-1)="i by working in" CC, \ x "j" x^(-1)=(cos theta+sin theta "i")"j"(cos theta-sin theta "i")=cos 2theta "j"+sin 2theta "k", \ x "k" x^(-1)=(cos theta +sin theta "i")"k"(cos theta-sin theta "i")=cos 2theta "k"-sin 2theta "j",  $ In ONB $("i","j","k"),$ $R_x$ has matrix $display(mat(1,,;,cos 2theta,-sin 2theta;,sin 2theta,cos 2theta))=R_e_1(2theta).$\  Similarly, $ x=cos theta+sin theta "j" ==> R_x=R_e_2(plus.minus 2theta), \ x=cos theta+sin theta "k"==>R_x=R_e_3 (plus.minus 2theta). $

Uniqueness:$quad$ If $x,y in HH, N(x)=N(y)=1, R_x=R_y,$ then $ id=R_x R_y^(-1)=R_(x y^(-1)). $ Remains to show: $N(x)=1,R_x=id==>x in {plus.minus 1}.$ $ R_x=id ==>x q x^(-1)=q,forall q in HH_0. $ Since $R_x$ is $RR$-bilinear, we can generalize to $q in HH.$ Hence $x q=q x, x in Z(HH) inter {N(x)=1}.$ #h(1fr) $square.stroked$

More precisely, let $u in HH_0,N(u)=1.$ $R_u (theta)$ (definition same as the $RR^3$ case) equals $R_x$ where $ x=cos theta+sin theta dot u. $