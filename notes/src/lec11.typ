*Theorem* $quad$ Let $FF:$ field, $f in FF[X_1,dots,X_n]^(S_n).$ $exists! g in FF[X_1,dots,X_n] "s.t." f=g(e_1,dots,e_n)$ where $e_i$ are elementary symmetric polynomials.

In fact, this works if $FF$ is only an integral domain by $R arrow.r.hook "Frac"(R):$ field.

*Examples (Discriminant)* $quad$ $f=X_n-c_1X^(n-1)+dots+(-1)^n c_n=display(product_(i=1)^n (X-alpha_i)).$ Define
$ "disc"(f):=product_(i<j)(alpha_i-alpha_j)^2. $
If we view $alpha_1,dots,alpha_n$ as variables, then $"disc"(f)$ is a symmetric polynomial in $alpha_1,dots,alpha_n.$

$because forall sigma in S_n, sigma$ sends $display(product_(i<j) (alpha_i-alpha_j))$ to $plus.minus display(product_(i<j) (alpha_i-alpha_j)).$

$attach(==>, t:"Thm") "disc"(f)$ is a polynomial (uniquely) in $e_i (alpha_1,dots,alpha_n)=c_i, 1<=i<=n.$ This works on $QQ$ (and $ZZ$ if we accept that Thm works on integral domains).

*Examples* $quad$ 
 
- $f=X^2-b X+c=(X-alpha_1)(X-alpha_2),$ \ $"disc"(f)=(alpha_1-alpha_2)^2=(alpha_1+alpha_2)^2 - 4 alpha_1 alpha_2 = b^2-4 a c.$

- $f=X^3+p X+q=(X-alpha_1)(X-alpha_2)(X-alpha_3),$ \
 $"disc"(f)=-4p^3-27q^2.$

== $section$ Resultant

*Motivation* $quad$ Let $FF$: field,  $f,g in FF[X].$ To determine whether $f,g$ are coprime, the classical solution is Euclidean algorithm. But we also want an "equational" criterion, i.e. some function whose result determines directly whether $f,g$ are coprime.

*Definition* $quad$ Fix $n,m in ZZ_(n>=1)$, consider $f=v_0 X^n + dots+v_n, g=w_0 X^n+dots+w_m, v_i, w_j in FF.$ \
*Resultant* of $f$ and $g$ is defined as 
$ "Res"(f,g):=mat(v_0,dots,dots,v_n,,,;
,dots.down,,,dots.down,,;
,,v_0,dots,dots,v_n,;
w_0,dots,dots,w_m,,,;
,dots.down,,,dots.down,,;
,,dots.down,,,dots.down,;
,,,w_0,dots,dots,w_m; delim:"|"). $

*Properties* $quad$

- View $v_i,w_j$ as variables, then $"Res"(f,g)$ is a polynomial$\/_ZZ$ in $v_0,dots,w_m$ independent of $FF.$

- The coefficient of $v_0^m w_m^n$ is $1, because$ only contribution comes from diagonal line.

- $"Res"(f,g)=(-1)^(n m)"Res"(g,f)$ by swapping rows.

- $forall t in FF, "Res"(t f,g)=t^m "Res"(f,g), "Res"(f,t g)=t^n "Res"(f,g).$

*Lemma* $quad$ Given $n,m$ and $f,g$, then 
$ "Res"(f,g)=0 quad <==> quad exists f_1,g_1 in FF[X] "s.t." f g_1 + g f_1=0, $
where $f_1, g_1$ not both $=0, deg f_1<n, deg g_1<m.$

*Proof* $quad$ Write $f_1=a_1 X^(n-1)+dots+a_n, g_1=b_1 X^(n-1)+dots+b_m, a_i, b_j in FF.$
$ f g_1+g f_1=0 <==> cases(b_1 v_0 + a_1 w_0=0,
b_1 v_1 + b_2 v_0 + a_1 w_1 + a_2 w_0=0,dots,b_m v_n + a_n w_m = 0.) $
This homogeneous system of linear equations is equivalent to the transpose of $"Res"(f,g)$, which have the same determinant. The existence of $f_1,g_1 <==>$ $det=0$ by Cramer's rule. #h(1fr) $square.stroked$

*Theorem* $quad$ Given $n,m$ and $f,g$ as before,
$ "Res"(f,g)=0 quad <==> quad cases(v_0=0=w_0,
"or" exists h in FF[X] "," deg h>0 ","  h|f and h|g.) $

*Proof* $quad$ ($<==$) If $v_0=0=w_0,$ then the first column of $"Res"(f,g)$ is all $0 ==>det = 0.$

If $exists$ such $h,$ then $display(f dot underbracket(g/h, deg < m) + g dot underbracket((-f)/h, deg < n))=0 attach(==>, t:"Lem") "Res"(f,g)=0.$

($==>$) Assume $"Res"(f,g)=0.$

- One of $f$ and $g$ is zero, say $f=0.$
 - $deg g>0 ==>$ take $h=g.$
 - $g in FF ==>$ get $w_0=0$ since $m>=1.$
- $f,g$ are both nonzero. May assume $(v_0,w_0)!=(0,0),$ say $w_0!=0.$

 $attach(==>,t:"Lem")$ $exists f_1,g_1$ not both zero, $f_1 g + g f_1=  0, deg g_1<m.$

 In $F(X):={"rational functions"\/_FF}="Frac"(FF[X]), display(f/g = (-f_1)/g_1).$ If $f$ is coprime with $g,$ we would get $g | g_1,$ contradicting $deg g_1<m=deg g.$ #h(1fr) $square.stroked$

*Theorem* $quad$ Fix $n,m in ZZ_(>=1), display(f=a product_(i=1)^n (X-alpha_i)), display(g=b product_(j=1)^m (X-beta_j))$ with all variables $in FF,$ then 
$ "Res"(f,g)&=a^m product_(i=1)^n g(alpha_i) = (-1)^(n m)b^n product_(j=1)^m f(beta_j) \
&=a^m b^n product_(i,j)(alpha_i-beta_j). $

*Proof* $quad$ (Last equation) $thick (-1)^(m n)b^n display(product_(j=1)^m f(beta_j))=(-1)^(m n)a^m b^n display(product_(i,j) (beta_j-alpha_i))=a^m b^n display(product_(i,j)(alpha_i-beta_j)).$ \
(Second equation) Use $"Res"(f,g)=(-1)^(m n)"Res"(g,f),$ reduce to first equation.

To show: $"Res"(f,g)=a^m display(product_i g(alpha_i)), "Res"(t f,g)=t^m "Res"(f,g) ==>$ may assume $a=1.$

- Special case: $g(alpha_i)$ are pairwise distinct. Now consider $"Res"(f,g-Y) in FF[Y] subset F(Y), y=0$ yields $"Res"(f,g).$ Note that the top term is $(-1)^n Y^n.$ 

 Also, $f$ and $g-g(alpha_i)$ have a common root $alpha_i attach(==>,t:"Thm") "Res"(f,g-g(alpha_i))=0,$ i.e. $ ("Res"(f,g-Y))(g(alpha_i))=0 ==> (g(alpha_i)-Y) | "Res"(f,g-Y). $ From assumption we can reach $ display(product_(i=1)^n (g(alpha_i)-Y)) | "Res"(f,g-Y), $ Both sides have $deg=n$ and leading coefficient $=(-1)^n$, hence they are equal. Set $y=0$ on LHS to reach the conclusion.

- General case "Pertubation", or argue as follows:

 Keep $g,$ assume $b!=0$ and take $tilde(f)=display(product_(i=1)^n (X-Z_i))$ where $Z_i$ are formal variables. Special case (for $F(Z_1,dots,Z_n)$) gives $ "Res"(tilde(f),g)=display(product_(i=1)^n g(Z_i)), $ since $g(Z_i)$ are pairwise distinct in $FF[Z_1,dots,Z_n].$

 Put $Z_i <- alpha_i$ to get $"Res"(f,g)=display(product_(i=1)^n g(alpha_i).)$ #h(1fr) $square.stroked$

 *Back to discriminants*, given $f=a display(product_(i=1)^n (X-alpha_i)) in FF[X],$ set $"disc"(f):=a^(2n-2) display(product_(i<j) (alpha_i-alpha_j)^2).$

 *Corollary* $quad$ 
 - $a dot "disc"(f)=(-1)^(n(n-1)/2)"Res"(f,f').$
  
  *Proof* $quad$ Theorem $==> "Res"(f,f')=a^(n-1) display(product_(i=1)^n f'(alpha_i)).$ From $f'=a display(sum_(k=1)^n product_(j!=k) (X-alpha_j))$ we know
  $ f'(alpha_i)=a product_(j!=i)(alpha_i-alpha_j). $

  We get $ "Res"(f,f')=a^(2n-1) display(product_(i=1)^n product_(j!=i) (alpha_i-alpha_j))=(-1)^(n(n-1)/2) a^(2n-1) display(product_(i<j) (alpha_i-alpha_j)^2), $ where each pair of $(i,j), i<j$ accounts for $-(alpha_i-alpha_j)^2.$
 
 *Remark* $quad$ $f=a_0 X^n + dots + a_n, a=a_0.$ Now $ "Res"(f,f')=mat(
  a,,,;
  ,,,,;
  n a,,*,;
  ,,,,;
  delim: "|"
 ) = a dot "poly"(a_0,dots,a_n), $
 so the definition is reasonable when the leading coefficient is not $1.$