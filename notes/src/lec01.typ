== $section$ Singular value decomposition

Let $V,W$ be inner product spaces on $RR, dim V, dim W < infinity.$ Let $T$ be a linear map from $V$ to $W$. Then we can define its adjoint $T^*$, characterized by $(T v|w)_W = (v | T^* w)_V, forall v in V, w in W.$

*Recall:*
+ $ker T = ker(T^* T)$, since $ker T subset ker (T^* T)$ is trivial, and 
  $ T^* T v = 0 => (v | T^* T v) = 0 => (T v | T v) = 0 => T v = 0. $
+ $"rk"T = "rk"T^*$, since $dim V = dim im T + dim ker T.$
+ $T T^*, T^* T$ are both self-adjoint.
+ $T T^*, T^* T$ are both positive semi-definite, since 
  $ (w | T T^* w) = (T^* w | T^* w) >=0 $
	and $T^* T$ is similar.

Also recall that given $V = RR^n, W = RR^m$, std basis $e_1,..,e_n$ and std inner product, we have
$ "End"(V) = M_(n times n)(RR), quad "Hom"(V,W) = M_(m times n)(RR), quad T <-> "matrix" A, quad T^* <-> A^T $

*Theorem(SVD)* $thick$ Set $m=dim V, n=dim W, T: V -> W$ linear map, then$exists "ONB" v_1,..v_n "of" V, w_1,..w_m "of" W "and" sigma_1 >=..>=sigma_p>=0$ where $p=min(n,m)$ such that 
$ T v_i = cases(
	sigma_i w_i "if" 1<=i<=p,
	0 "if" i>p 
) $
and $sigma_i$ is unqiuely determined by $T$, called the *singular values* of $T$.

In terms of matrices, for some $A in M_(n times m)(RR), exists P in M_(m times m)(RR), Q in M_(n times n)(RR),$ both orthogonal (i.e. $P^(-1)=P^T$), such that 
$ Q^(-1)A P = "diag"(sigma_1,..sigma_p,0,..,0), quad sigma_1>=..>=sigma_p>=0: "unique" $

*Proof* 

*Uniqueness*: we claim that $T^* w_j = sigma_j v_j$ satisfies the definition of $T^*.$ This can be shown by comparing 
$ (v_i | T^* w_j) = (v_i | sigma_j v_j) = sigma_j delta_(i,j) \
(T v_i | w_j) = (sigma_i w_i | w_j) = sigma_i delta_(i,j) $
In fact, both inner products $=sigma_i delta_(i,j)$, which proves our previous claim. Next we derive
$ "Claim" &=> T^*T v_i = T^* (sigma_i w_i) = sigma_i^2 v_i \
&=> sigma_1^2,..,sigma_p^2 "are eigenvalues of" T^* T "(counting mutiplicity)" \
&=> "unique!" $

*Existence*: we already know that $T^*T$ is self-adjoint and positive semi-definite, therefore $exists "ONB" v_1,..,v_m in V, lambda_1>=..>=lambda_m>=0, quad"s.t." T^*T v_i = lambda_i v_i.$

Let $r:="rk"(T^*T)="rk"(T)<=p$, then $lambda_1,..,lambda_r>0, lambda_(r+1)=..=0.$

Set $sigma_i:=sqrt(lambda_i)$ and $w_i = sigma_i^(-1)T v_i.$ Here $w_i$ is indeed orthogonal:
$ (w_i | w_j) = sigma_i^(-1)sigma_j^(-1)(T v_i | T v_j) = sigma_i^(-1)sigma_j^(-1)(v_i | T^*T v_j) = sigma_i^(-1)sigma_j (v_i | v_j) = delta_(i,j) $
Therefore we can extend $w_i$ to an ONB of $W$, and it satisfies all requirements. $qed$ 

*Remark*: there are many good algorithms for calculating SVD, and it sees some applications in data science.

== $section$ Moore-Penrose Generalized Inverse

Let $V,W$ be inner product spaces on $RR$, $dim V, dim W < infinity$, and linear map $T: V -> W.$

*Goal*: seek some substitute of "$T^(-1)$", especially when $T$ is not inversible.

*Definition*: Given $T: V->W.$ If $S:W->V$ satisfies 
- (MP1) $T S T = T,$
- (MP2) $S T S = S,$
- (MP3) $(T S)^* = T S,$
- (MP4) $(S T)^* = S T,$
then we say $S$ is a *MP inverse* of $T$, and vice versa.

*Example*: T invertible $<->$ $T^(-1)$ is (the) MP-inverse.

*Theorem* $quad forall T: V->W, exists! S: W->V$ that is a MP inverse of $T$. 

*Proof*

Existence: 
$ forall v in V, v = v' + v'' "where" v' in ker T, v'' in (ker T)^perp \
forall w in W, w = w' + w'' "where" w' in im T, w'' in (im T)^perp $
and all summands above are unique. For each $w in W$, take any $v in T^(-1)(w')$ and set $S w = v''$. Under such definition, $v''$ only depends on $v + ker T = T^(-1)(w')$, showing that $S$ is well-defined. Can also check that $S$ is linear, so we only need to show that $S$ satisfies MP properties.

MP3: $ forall v in V, S T v = v'' &=> S T "is orthogonal projection" V -> (ker T)^perp \
&=> (S T)^* = S T quad "(Prop 9.5.9)" $
and MP4 is similar.

MP1: $T S T v = T v'' = T v, quad$ MP2: $S T S w = S w' = S w$. 

Hence: $S$ is a MP inverse of $T$!

Uniqueness: Let $S,R$ be MP inverses of $T$. 
$ S=S T S = S(T S)^* = S S^* T^* = S S^* (T R T)^* = S S^* T^* R^* T^*  = S(T S)^*(T R)^* = S T S T R = S T R \
R = R T R = (R T)^*R = T^* R^* R = (T S T)^* R^* R = T^* S^* T^* R^* R = (S T)^*(R T)^*R = S T R T R = S T R $
Therfore $S=R. qed$