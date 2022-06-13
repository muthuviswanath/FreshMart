Ì
jE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Areas\Identity\IdentityHostingStartup.cs
[

 
assembly

 	
:

	 

HostingStartup

 
(

 
typeof

  
(

  !
	FreshMart

! *
.

* +
Areas

+ 0
.

0 1
Identity

1 9
.

9 :"
IdentityHostingStartup

: P
)

P Q
)

Q R
]

R S
	namespace 	
	FreshMart
 
. 
Areas 
. 
Identity "
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
} 
) 
; 
} 	
} 
} ƒ#
wE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
	FreshMart
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
[ 
AllowAnonymous 
] 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
EmailAddress"" 
]"" 
public## 
string## 
Email## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
OnPostAsync&&) 4
(&&4 5
)&&5 6
{'' 	
if(( 
((( 

ModelState(( 
.(( 
IsValid(( "
)((" #
{)) 
var** 
user** 
=** 
await**  
_userManager**! -
.**- .
FindByEmailAsync**. >
(**> ?
Input**? D
.**D E
Email**E J
)**J K
;**K L
if++ 
(++ 
user++ 
==++ 
null++  
||++! #
!++$ %
(++% &
await++& +
_userManager++, 8
.++8 9!
IsEmailConfirmedAsync++9 N
(++N O
user++O S
)++S T
)++T U
)++U V
{,, 
return.. 
RedirectToPage.. )
(..) *
$str..* H
)..H I
;..I J
}// 
var33 
code33 
=33 
await33  
_userManager33! -
.33- .+
GeneratePasswordResetTokenAsync33. M
(33M N
user33N R
)33R S
;33S T
code44 
=44 
WebEncoders44 "
.44" #
Base64UrlEncode44# 2
(442 3
Encoding443 ;
.44; <
UTF844< @
.44@ A
GetBytes44A I
(44I J
code44J N
)44N O
)44O P
;44P Q
var55 
callbackUrl55 
=55  !
Url55" %
.55% &
Page55& *
(55* +
$str66 ,
,66, -
pageHandler77 
:77  
null77! %
,77% &
values88 
:88 
new88 
{88  !
area88" &
=88' (
$str88) 3
,883 4
code885 9
}88: ;
,88; <
protocol99 
:99 
Request99 %
.99% &
Scheme99& ,
)99, -
;99- .
await;; 
_emailSender;; "
.;;" #
SendEmailAsync;;# 1
(;;1 2
Input<< 
.<< 
Email<< 
,<<  
$str== $
,==$ %
$">> 
$str>> =
{>>= >
HtmlEncoder>>> I
.>>I J
Default>>J Q
.>>Q R
Encode>>R X
(>>X Y
callbackUrl>>Y d
)>>d e
}>>e f
$str>>f z
">>z {
)>>{ |
;>>| }
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& D
)@@D E
;@@E F
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ñ=
nE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
	FreshMart
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
)1 2
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[!! 	
BindProperty!!	 
]!! 
public"" 

InputModel"" 
Input"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
IList$$ 
<$$  
AuthenticationScheme$$ )
>$$) *
ExternalLogins$$+ 9
{$$: ;
get$$< ?
;$$? @
set$$A D
;$$D E
}$$F G
public&& 
string&& 
	ReturnUrl&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
[(( 	
TempData((	 
](( 
public)) 
string)) 
ErrorMessage)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public++ 
class++ 

InputModel++ 
{,, 	
[-- 
Required-- 
]-- 
[.. 
EmailAddress.. 
].. 
public// 
string// 
Email// 
{//  !
get//" %
;//% &
set//' *
;//* +
}//, -
[11 
Required11 
]11 
[22 
DataType22 
(22 
DataType22 
.22 
Password22 '
)22' (
]22( )
public33 
string33 
Password33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
[55 
Display55 
(55 
Name55 
=55 
$str55 *
)55* +
]55+ ,
public66 
bool66 

RememberMe66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
}77 	
public99 
async99 
Task99 

OnGetAsync99 $
(99$ %
string99% +
	returnUrl99, 5
=996 7
null998 <
)99< =
{:: 	
if;; 
(;; 
!;; 
string;; 
.;; 
IsNullOrEmpty;; %
(;;% &
ErrorMessage;;& 2
);;2 3
);;3 4
{<< 

ModelState== 
.== 
AddModelError== (
(==( )
string==) /
.==/ 0
Empty==0 5
,==5 6
ErrorMessage==7 C
)==C D
;==D E
}>> 
	returnUrl@@ 
??=@@ 
Url@@ 
.@@ 
Content@@ %
(@@% &
$str@@& *
)@@* +
;@@+ ,
awaitCC 
HttpContextCC 
.CC 
SignOutAsyncCC *
(CC* +
IdentityConstantsCC+ <
.CC< =
ExternalSchemeCC= K
)CCK L
;CCL M
ExternalLoginsEE 
=EE 
(EE 
awaitEE #
_signInManagerEE$ 2
.EE2 31
%GetExternalAuthenticationSchemesAsyncEE3 X
(EEX Y
)EEY Z
)EEZ [
.EE[ \
ToListEE\ b
(EEb c
)EEc d
;EEd e
	ReturnUrlGG 
=GG 
	returnUrlGG !
;GG! "
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
OnPostAsyncJJ) 4
(JJ4 5
stringJJ5 ;
	returnUrlJJ< E
=JJF G
nullJJH L
)JJL M
{KK 	
	returnUrlLL 
??=LL 
UrlLL 
.LL 
ContentLL %
(LL% &
$strLL& *
)LL* +
;LL+ ,
ExternalLoginsNN 
=NN 
(NN 
awaitNN #
_signInManagerNN$ 2
.NN2 31
%GetExternalAuthenticationSchemesAsyncNN3 X
(NNX Y
)NNY Z
)NNZ [
.NN[ \
ToListNN\ b
(NNb c
)NNc d
;NNd e
ifPP 
(PP 

ModelStatePP 
.PP 
IsValidPP "
)PP" #
{QQ 
varTT 
resultTT 
=TT 
awaitTT "
_signInManagerTT# 1
.TT1 2
PasswordSignInAsyncTT2 E
(TTE F
InputTTF K
.TTK L
EmailTTL Q
,TTQ R
InputTTS X
.TTX Y
PasswordTTY a
,TTa b
InputTTc h
.TTh i

RememberMeTTi s
,TTs t
lockoutOnFailure	TTu Ö
:
TTÖ Ü
false
TTá å
)
TTå ç
;
TTç é
ifUU 
(UU 
resultUU 
.UU 
	SucceededUU $
)UU$ %
{VV 
_loggerWW 
.WW 
LogInformationWW *
(WW* +
$strWW+ <
)WW< =
;WW= >
returnXX 
LocalRedirectXX (
(XX( )
	returnUrlXX) 2
)XX2 3
;XX3 4
}YY 
ifZZ 
(ZZ 
resultZZ 
.ZZ 
RequiresTwoFactorZZ ,
)ZZ, -
{[[ 
return\\ 
RedirectToPage\\ )
(\\) *
$str\\* :
,\\: ;
new\\< ?
{\\@ A
	ReturnUrl\\B K
=\\L M
	returnUrl\\N W
,\\W X

RememberMe\\Y c
=\\d e
Input\\f k
.\\k l

RememberMe\\l v
}\\w x
)\\x y
;\\y z
}]] 
if^^ 
(^^ 
result^^ 
.^^ 
IsLockedOut^^ &
)^^& '
{__ 
_logger`` 
.`` 

LogWarning`` &
(``& '
$str``' A
)``A B
;``B C
returnaa 
RedirectToPageaa )
(aa) *
$straa* 5
)aa5 6
;aa6 7
}bb 
elsecc 
{dd 

ModelStateee 
.ee 
AddModelErroree ,
(ee, -
stringee- 3
.ee3 4
Emptyee4 9
,ee9 :
$stree; S
)eeS T
;eeT U
returnff 
Pageff 
(ff  
)ff  !
;ff! "
}gg 
}hh 
returnkk 
Pagekk 
(kk 
)kk 
;kk 
}ll 	
}mm 
}nn ¥
oE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
	FreshMart
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger   
.   
LogInformation   "
(  " #
$str  # 5
)  5 6
;  6 7
if!! 
(!! 
	returnUrl!! 
!=!! 
null!! !
)!!! "
{"" 
return## 
LocalRedirect## $
(##$ %
	returnUrl##% .
)##. /
;##/ 0
}$$ 
else%% 
{&& 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ¢M
qE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
	FreshMart
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender 
emailSender $
)$ %
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_signInManager"" 
="" 
signInManager"" *
;""* +
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
ExternalLogins,,+ 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
[22 
Display22 
(22 
Name22 
=22 
$str22 #
)22# $
]22$ %
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
[55 
Required55 
]55 
[66 
StringLength66 
(66 
$num66 
,66 
ErrorMessage66 +
=66, -
$str66. l
,66l m
MinimumLength66n {
=66| }
$num66~ 
)	66 Ä
]
66Ä Å
[77 
DataType77 
(77 
DataType77 
.77 
Password77 '
)77' (
]77( )
[88 
Display88 
(88 
Name88 
=88 
$str88 &
)88& '
]88' (
public99 
string99 
Password99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
DataType;; 
(;; 
DataType;; 
.;; 
Password;; '
);;' (
];;( )
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< .
)<<. /
]<</ 0
[== 
Compare== 
(== 
$str== 
,==  
ErrorMessage==! -
===. /
$str==0 f
)==f g
]==g h
public>> 
string>> 
ConfirmPassword>> )
{>>* +
get>>, /
;>>/ 0
set>>1 4
;>>4 5
}>>6 7
}?? 	
publicAA 
asyncAA 
TaskAA 

OnGetAsyncAA $
(AA$ %
stringAA% +
	returnUrlAA, 5
=AA6 7
nullAA8 <
)AA< =
{BB 	
	ReturnUrlCC 
=CC 
	returnUrlCC !
;CC! "
ExternalLoginsDD 
=DD 
(DD 
awaitDD #
_signInManagerDD$ 2
.DD2 31
%GetExternalAuthenticationSchemesAsyncDD3 X
(DDX Y
)DDY Z
)DDZ [
.DD[ \
ToListDD\ b
(DDb c
)DDc d
;DDd e
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
stringGG5 ;
	returnUrlGG< E
=GGF G
nullGGH L
)GGL M
{HH 	
	returnUrlII 
??=II 
UrlII 
.II 
ContentII %
(II% &
$strII& *
)II* +
;II+ ,
ExternalLoginsJJ 
=JJ 
(JJ 
awaitJJ #
_signInManagerJJ$ 2
.JJ2 31
%GetExternalAuthenticationSchemesAsyncJJ3 X
(JJX Y
)JJY Z
)JJZ [
.JJ[ \
ToListJJ\ b
(JJb c
)JJc d
;JJd e
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
userMM 
=MM 
newMM 
IdentityUserMM +
{MM, -
UserNameMM. 6
=MM7 8
InputMM9 >
.MM> ?
EmailMM? D
,MMD E
EmailMMF K
=MML M
InputMMN S
.MMS T
EmailMMT Y
}MMZ [
;MM[ \
varNN 
resultNN 
=NN 
awaitNN "
_userManagerNN# /
.NN/ 0
CreateAsyncNN0 ;
(NN; <
userNN< @
,NN@ A
InputNNB G
.NNG H
PasswordNNH P
)NNP Q
;NNQ R
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
_loggerQQ 
.QQ 
LogInformationQQ *
(QQ* +
$strQQ+ V
)QQV W
;QQW X
varSS 
codeSS 
=SS 
awaitSS $
_userManagerSS% 1
.SS1 2/
#GenerateEmailConfirmationTokenAsyncSS2 U
(SSU V
userSSV Z
)SSZ [
;SS[ \
codeTT 
=TT 
WebEncodersTT &
.TT& '
Base64UrlEncodeTT' 6
(TT6 7
EncodingTT7 ?
.TT? @
UTF8TT@ D
.TTD E
GetBytesTTE M
(TTM N
codeTTN R
)TTR S
)TTS T
;TTT U
varUU 
callbackUrlUU #
=UU$ %
UrlUU& )
.UU) *
PageUU* .
(UU. /
$strVV /
,VV/ 0
pageHandlerWW #
:WW# $
nullWW% )
,WW) *
valuesXX 
:XX 
newXX  #
{XX$ %
areaXX& *
=XX+ ,
$strXX- 7
,XX7 8
userIdXX9 ?
=XX@ A
userXXB F
.XXF G
IdXXG I
,XXI J
codeXXK O
=XXP Q
codeXXR V
,XXV W
	returnUrlXXX a
=XXb c
	returnUrlXXd m
}XXn o
,XXo p
protocolYY  
:YY  !
RequestYY" )
.YY) *
SchemeYY* 0
)YY0 1
;YY1 2
await[[ 
_emailSender[[ &
.[[& '
SendEmailAsync[[' 5
([[5 6
Input[[6 ;
.[[; <
Email[[< A
,[[A B
$str[[C W
,[[W X
$"\\ 
$str\\ B
{\\B C
HtmlEncoder\\C N
.\\N O
Default\\O V
.\\V W
Encode\\W ]
(\\] ^
callbackUrl\\^ i
)\\i j
}\\j k
$str\\k 
"	\\ Ä
)
\\Ä Å
;
\\Å Ç
if^^ 
(^^ 
_userManager^^ $
.^^$ %
Options^^% ,
.^^, -
SignIn^^- 3
.^^3 4#
RequireConfirmedAccount^^4 K
)^^K L
{__ 
return`` 
RedirectToPage`` -
(``- .
$str``. D
,``D E
new``F I
{``J K
email``L Q
=``R S
Input``T Y
.``Y Z
Email``Z _
,``_ `
	returnUrl``a j
=``k l
	returnUrl``m v
}``w x
)``x y
;``y z
}aa 
elsebb 
{cc 
awaitdd 
_signInManagerdd ,
.dd, -
SignInAsyncdd- 8
(dd8 9
userdd9 =
,dd= >
isPersistentdd? K
:ddK L
falseddM R
)ddR S
;ddS T
returnee 
LocalRedirectee ,
(ee, -
	returnUrlee- 6
)ee6 7
;ee7 8
}ff 
}gg 
foreachhh 
(hh 
varhh 
errorhh "
inhh# %
resulthh& ,
.hh, -
Errorshh- 3
)hh3 4
{ii 

ModelStatejj 
.jj 
AddModelErrorjj ,
(jj, -
stringjj- 3
.jj3 4
Emptyjj4 9
,jj9 :
errorjj; @
.jj@ A
DescriptionjjA L
)jjL M
;jjM N
}kk 
}ll 
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 	
}qq 
}rr ˘	
\E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Components\CategoryMenu.cs
	namespace 	
	FreshMart
 
. 

Components 
{ 
public 

class 
CategoryMenu 
: 
ViewComponent ,
{ 
private		 
readonly		 
ICategoryRepository		 ,
_categoryRepository		- @
;		@ A
public

 
CategoryMenu

 
(

 
ICategoryRepository

 /
categoryRepository

0 B
)

B C
{

D E
_categoryRepository 
=  !
categoryRepository" 4
;4 5
} 	
public  
IViewComponentResult #
Invoke$ *
(* +
)+ ,
{- .
var 

categories 
= 
_categoryRepository 0
.0 1
GetAllCategories1 A
.A B
OrderByB I
(I J
cJ K
=>L N
cO P
.P Q
CategoryNameQ ]
)] ^
;^ _
return 
View 
( 

categories "
)" #
;# $
} 	
} 
} •
cE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Components\ShoppingCartSummary.cs
	namespace 	
	FreshMart
 
. 

Components 
{ 
public 

class 
ShoppingCartSummary $
:$ %
ViewComponent& 3
{		 
private

 
readonly

 
ShoppingCart

 %
_shoppingCart

& 3
;

3 4
public 
ShoppingCartSummary "
(" #
ShoppingCart# /
shoppingCart0 <
)< =
{ 	
_shoppingCart 
= 
shoppingCart (
;( )
} 	
public  
IViewComponentResult #
Invoke$ *
(* +
)+ ,
{- .
_shoppingCart 
. 
ShoppingCartItems +
=, -
_shoppingCart. ;
.; < 
GetShoppingCartItems< P
(P Q
)Q R
;R S
var !
shoppingCartViewModel %
=& '
new( +!
ShoppingCartViewModel, A
{ 
ShoppingCart 
= 
_shoppingCart ,
,, -
ShoppingCartTotal !
=" #
_shoppingCart$ 1
.1 2 
GetShoppingCartTotal2 F
(F G
)G H
} 
; 
return 
View 
( !
shoppingCartViewModel -
)- .
;. /
} 	
} 
} Æ
bE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Controllers\ContactController.cs
	namespace 	
	FreshMart
 
. 
Controllers 
{ 
public 

class 
ContactController "
:# $

Controller% /
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return		 
View		 
(		 
)		 
;		 
}

 	
} 
} —	
_E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Controllers\HomeController.cs
	namespace 	
	FreshMart
 
. 
Controllers 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
IProductRepository		 +
_productRepository		, >
;		> ?
public 
HomeController 
( 
IProductRepository 0
productRepository1 B
)B C
{ 	
_productRepository 
=  
productRepository! 2
;2 3
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
homeViewModel 
= 
new  #
HomeViewModel$ 1
{ 
ProductOnSale 
= 
_productRepository  2
.2 3
GetProductsOnSale3 D
} 
; 
return 
View 
( 
homeViewModel %
)% &
;& '
} 	
} 
} ≠
`E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Controllers\OrderController.cs
	namespace 	
	FreshMart
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
OrderController  
:! "

Controller# -
{		 
private

 
readonly

 
IOrderRepository

 )
_orderRepository

* :
;

: ;
private 
readonly 
ShoppingCart %
_shoppingCart& 3
;3 4
public 
OrderController 
( 
IOrderRepository /
orderRepository0 ?
,? @
ShoppingCartA M
shoppingCartN Z
)Z [
{ 	
_orderRepository 
= 
orderRepository .
;. /
_shoppingCart 
= 
shoppingCart (
;( )
} 	
public 
IActionResult 
Checkout %
(% &
)& '
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
Checkout %
(% &
Order& +
order, 1
)1 2
{3 4
_shoppingCart 
. 
ShoppingCartItems +
=, -
_shoppingCart. ;
.; < 
GetShoppingCartItems< P
(P Q
)Q R
;R S
if 
( 
_shoppingCart 
. 
ShoppingCartItems /
./ 0
Count0 5
==6 8
$num9 :
): ;
{< =

ModelState 
. 
AddModelError (
(( )
$str) +
,+ ,
$str- A
)A B
;B C
} 
if 
( 

ModelState 
. 
IsValid "
)" #
{$ %
_orderRepository  
.  !
CreateOrder! ,
(, -
order- 2
)2 3
;3 4
_shoppingCart   
.   
	ClearCart   '
(  ' (
)  ( )
;  ) *
return!! 
RedirectToAction!! '
(!!' (
$str!!( :
)!!: ;
;!!; <
}"" 
return## 
View## 
(## 
order## 
)## 
;## 
}$$ 	
public&& 
IActionResult&& 
CheckoutComplete&& -
(&&- .
)&&. /
{&&0 1
ViewBag'' 
.'' #
CheckoutCompleteMessage'' +
='', -
$str''. q
;''q r
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
}** 
}++ Ú
cE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Controllers\ProductsController.cs
	namespace 	
	FreshMart
 
. 
Controllers 
{		 
public

 

class

 
ProductsController

 #
:

$ %

Controller

& 0
{ 
private 
readonly 
IProductRepository +
_productRepository, >
;> ?
private 
readonly 
ICategoryRepository ,
_categoryRepository- @
;@ A
public 
ProductsController !
(! "
IProductRepository" 4
productRepository5 F
,F G
ICategoryRepositoryH [
categoryRepository\ n
)n o
{ 	
_productRepository 
=  
productRepository! 2
;2 3
_categoryRepository 
=  !
categoryRepository" 4
;4 5
} 	
public 

ViewResult 
List 
( 
string %
category& .
). /
{0 1
IEnumerable 
< 
Products  
>  !
products" *
;* +
string 
currentCategory "
;" #
if 
( 
string 
. 
IsNullOrEmpty $
($ %
category% -
)- .
). /
{0 1
products 
= 
_productRepository -
.- .
GetAllProducts. <
.< =
OrderBy= D
(D E
pE F
=>G I
pJ K
.K L
	ProductIdL U
)U V
;V W
currentCategory 
=  !
$str" 0
;0 1
} 
else   
{!! 
products"" 
="" 
_productRepository"" -
.""- .
GetAllProducts"". <
.""< =
Where""= B
(""B C
p""C D
=>""E G
p""H I
.""I J
Category""J R
.""R S
CategoryName""S _
==""` b
category""c k
)""k l
;""l m
currentCategory## 
=##  !
_categoryRepository##" 5
.##5 6
GetAllCategories##6 F
.##F G
FirstOrDefault##G U
(##U V
c##V W
=>##X Z
c$$ 
.$$ 
CategoryName$$ 
==$$ !
category$$" *
)$$* +
?$$+ ,
.$$, -
CategoryName$$- 9
;$$9 :
}%% 
return&& 
View&& 
(&& 
new&&  
ProductListViewModel&& 0
{'' 
productslst(( 
=(( 
products(( &
,((& '
CurrentCategory)) 
=))  !
currentCategory))" 1
}** 
)** 
;** 
}++ 	
public-- 
IActionResult-- 
Details-- $
(--$ %
int--% (
id--) +
)--+ ,
{--- .
var.. 
prods.. 
=.. 
_productRepository.. *
...* +
GetProductById..+ 9
(..9 :
id..: <
)..< =
;..= >
if// 
(// 
prods// 
==// 
null// 
)// 
{//  
return00 
NotFound00 
(00  
)00  !
;00! "
}11 
return22 
View22 
(22 
prods22 
)22 
;22 
}33 	
}44 
}55 ñ 
gE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Controllers\ShoppingCartController.cs
	namespace 	
	FreshMart
 
. 
Controllers 
{ 
public 

class "
ShoppingCartController '
:( )

Controller* 4
{		 
private

 
readonly

 
IProductRepository

 +
_productRepository

, >
;

> ?
private 
readonly 
ShoppingCart %
_shoppingCart& 3
;3 4
public "
ShoppingCartController %
(% &
IProductRepository& 8
productRepository9 J
,J K
ShoppingCartL X
shoppingCartY e
)e f
{ 	
_productRepository 
=  
productRepository! 2
;2 3
_shoppingCart 
= 
shoppingCart (
;( )
} 	
public 

ViewResult 
Index 
(  
)  !
{ 	
_shoppingCart 
. 
ShoppingCartItems +
=, -
_shoppingCart. ;
.; < 
GetShoppingCartItems< P
(P Q
)Q R
;R S
var !
shoppingCartViewModel %
=& '
new( +!
ShoppingCartViewModel, A
{ 
ShoppingCart 
= 
_shoppingCart ,
,, -
ShoppingCartTotal !
=" #
_shoppingCart$ 1
.1 2 
GetShoppingCartTotal2 F
(F G
)G H
} 
; 
return 
View 
( !
shoppingCartViewModel -
)- .
;. /
} 	
public "
RedirectToActionResult %
AddToShoppingCart& 7
(7 8
int8 ;
	productId< E
)E F
{G H
var!! 
selectedProduct!! 
=!!  !
_productRepository!!" 4
.!!4 5
GetAllProducts!!5 C
.!!C D
FirstOrDefault!!D R
(!!R S
c"" 
=>"" 
c"" 
."" 
	ProductId""  
==""! #
	productId""$ -
)""- .
;"". /
if## 
(## 
selectedProduct## 
!=##  "
null### '
)##' (
{##) *
_shoppingCart$$ 
.$$ 
	AddToCart$$ '
($$' (
selectedProduct$$( 7
,$$7 8
$num$$9 :
)$$: ;
;$$; <
}%% 
return&& 
RedirectToAction&& #
(&&# $
$str&&$ +
)&&+ ,
;&&, -
}'' 	
public)) "
RedirectToActionResult)) %"
RemoveFromShoppingCart))& <
())< =
int))= @
	productId))A J
)))J K
{** 	
var,, 
selectedProduct,, 
=,,  !
_productRepository,," 4
.,,4 5
GetAllProducts,,5 C
.,,C D
FirstOrDefault,,D R
(,,R S
c-- 
=>-- 
c-- 
.-- 
	ProductId--  
==--! #
	productId--$ -
)--- .
;--. /
if.. 
(.. 
selectedProduct.. 
!=..  "
null..# '
)..' (
{// 
_shoppingCart00 
.00 
RemoveFromCart00 ,
(00, -
selectedProduct00- <
)00< =
;00= >
}11 
return22 
RedirectToAction22 #
(22# $
$str22$ +
)22+ ,
;22, -
}33 	
public55 "
RedirectToActionResult55 %
	ClearCart55& /
(55/ 0
)550 1
{552 3
_shoppingCart66 
.66 
	ClearCart66 #
(66# $
)66$ %
;66% &
return77 
RedirectToAction77 #
(77# $
$str77$ +
)77+ ,
;77, -
}88 	
}99 
}:: 7
fE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220608104004_Initial.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
Initial  
:! "
	Migration# ,
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 "
,

" #
columns 
: 
table 
=> !
new" %
{ 

CategoryId 
=  
table! &
.& '
Column' -
<- .
int. 1
>1 2
(2 3
type3 7
:7 8
$str9 >
,> ?
nullable@ H
:H I
falseJ O
)O P
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
CategoryName  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
nullableO W
:W X
trueY ]
)] ^
,^ _
CategoryDescription '
=( )
table* /
./ 0
Column0 6
<6 7
string7 =
>= >
(> ?
type? C
:C D
$strE T
,T U
nullableV ^
:^ _
true` d
)d e
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 4
,4 5
x6 7
=>8 :
x; <
.< =

CategoryId= G
)G H
;H I
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
	ProductId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
ProductName 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Description 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
price 
= 
table !
.! "
Column" (
<( )
decimal) 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
ImageUrl   
=   
table   $
.  $ %
Column  % +
<  + ,
string  , 2
>  2 3
(  3 4
type  4 8
:  8 9
$str  : I
,  I J
nullable  K S
:  S T
true  U Y
)  Y Z
,  Z [
ImageThumbnailUrl!! %
=!!& '
table!!( -
.!!- .
Column!!. 4
<!!4 5
string!!5 ;
>!!; <
(!!< =
type!!= A
:!!A B
$str!!C R
,!!R S
nullable!!T \
:!!\ ]
true!!^ b
)!!b c
,!!c d
IsOnSale"" 
="" 
table"" $
.""$ %
Column""% +
<""+ ,
bool"", 0
>""0 1
(""1 2
type""2 6
:""6 7
$str""8 =
,""= >
nullable""? G
:""G H
false""I N
)""N O
,""O P
	IsInStock## 
=## 
table##  %
.##% &
Column##& ,
<##, -
bool##- 1
>##1 2
(##2 3
type##3 7
:##7 8
$str##9 >
,##> ?
nullable##@ H
:##H I
false##J O
)##O P
,##P Q

CategoryId$$ 
=$$  
table$$! &
.$$& '
Column$$' -
<$$- .
int$$. 1
>$$1 2
($$2 3
type$$3 7
:$$7 8
$str$$9 >
,$$> ?
nullable$$@ H
:$$H I
false$$J O
)$$O P
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% 1
,((1 2
x((3 4
=>((5 7
x((8 9
.((9 :
	ProductId((: C
)((C D
;((D E
table)) 
.)) 

ForeignKey)) $
())$ %
name** 
:** 
$str** @
,**@ A
column++ 
:++ 
x++  !
=>++" $
x++% &
.++& '

CategoryId++' 1
,++1 2
principalTable,, &
:,,& '
$str,,( 4
,,,4 5
principalColumn-- '
:--' (
$str--) 5
,--5 6
onDelete..  
:..  !
ReferentialAction.." 3
...3 4
Cascade..4 ;
)..; <
;..< =
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateIndex11 (
(11( )
name22 
:22 
$str22 -
,22- .
table33 
:33 
$str33  
,33  !
column44 
:44 
$str44 $
)44$ %
;44% &
}55 	
	protected77 
override77 
void77 
Down77  $
(77$ %
MigrationBuilder77% 5
migrationBuilder776 F
)77F G
{88 	
migrationBuilder99 
.99 
	DropTable99 &
(99& '
name:: 
::: 
$str:: 
)::  
;::  !
migrationBuilder<< 
.<< 
	DropTable<< &
(<<& '
name== 
:== 
$str== "
)==" #
;==# $
}>> 	
}?? 
}@@ ¶:
jE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220608105920_SeedingData.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
SeedingData $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 

InsertData		 '
(		' (
table

 
:

 
$str

 #
,

# $
columns 
: 
new 
[ 
] 
{  
$str! -
,- .
$str/ D
,D E
$strF T
}U V
,V W
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
$num 
, 
$str 3
,3 4
$str5 B
}C D
,D E
{ 
$num 
, 
$str *
,* +
$str, =
}> ?
,? @
{ 
$num 
, 
$str '
,' (
$str) 7
}8 9
,9 :
{ 
$num 
, 
$str $
,$ %
$str& 1
}2 3
,3 4
{ 
$num 
, 
$str '
,' (
$str) 3
}4 5
} 
) 
; 
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str  
,  !
columns 
: 
new 
[ 
] 
{  
$str! ,
,, -
$str. :
,: ;
$str< I
,I J
$strK ^
,^ _
$str` j
,j k
$strl w
,w x
$str	y É
,
É Ñ
$str
Ö í
,
í ì
$str
î õ
}
ú ù
,
ù û
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
$num 
, 
$num 
, 
$str 5
,5 6
$str7 W
,W X
$strY y
,y z
true{ 
,	 Ä
true
Å Ö
,
Ö Ü
$str
á é
,
é è
$num
ê ó
}
ò ô
,
ô ö
{ 
$num 
, 
$num 
, 
$str 3
,3 4
$str5 U
,U V
$strW w
,w x
truey }
,} ~
true	 É
,
É Ñ
$str
Ö î
,
î ï
$num
ñ ù
}
û ü
,
ü †
{ 
$num 
, 
$num 
, 
$str :
,: ;
$str< ]
,] ^
$str	_ Ä
,
Ä Å
true
Ç Ü
,
Ü á
true
à å
,
å ç
$str
é ù
,
ù û
$num
ü ¶
}
ß ®
,
® ©
{ 
$num 
, 
$num 
, 
$str 4
,4 5
$str6 W
,W X
$strY z
,z {
true	| Ä
,
Ä Å
true
Ç Ü
,
Ü á
$str
à î
,
î ï
$num
ñ ù
}
û ü
,
ü †
{ 
$num 
, 
$num 
, 
$str 7
,7 8
$str9 Y
,Y Z
$str[ {
,{ |
true	} Å
,
Å Ç
true
É á
,
á à
$str
â ò
,
ò ô
$num
ö °
}
¢ £
} 
) 
; 
}   	
	protected"" 
override"" 
void"" 
Down""  $
(""$ %
MigrationBuilder""% 5
migrationBuilder""6 F
)""F G
{## 	
migrationBuilder$$ 
.$$ 

DeleteData$$ '
($$' (
table%% 
:%% 
$str%% #
,%%# $
	keyColumn&& 
:&& 
$str&& '
,&&' (
keyValue'' 
:'' 
$num'' 
)'' 
;'' 
migrationBuilder)) 
.)) 

DeleteData)) '
())' (
table** 
:** 
$str**  
,**  !
	keyColumn++ 
:++ 
$str++ &
,++& '
keyValue,, 
:,, 
$num,, 
),, 
;,, 
migrationBuilder.. 
... 

DeleteData.. '
(..' (
table// 
:// 
$str//  
,//  !
	keyColumn00 
:00 
$str00 &
,00& '
keyValue11 
:11 
$num11 
)11 
;11 
migrationBuilder33 
.33 

DeleteData33 '
(33' (
table44 
:44 
$str44  
,44  !
	keyColumn55 
:55 
$str55 &
,55& '
keyValue66 
:66 
$num66 
)66 
;66 
migrationBuilder88 
.88 

DeleteData88 '
(88' (
table99 
:99 
$str99  
,99  !
	keyColumn:: 
::: 
$str:: &
,::& '
keyValue;; 
:;; 
$num;; 
);; 
;;; 
migrationBuilder== 
.== 

DeleteData== '
(==' (
table>> 
:>> 
$str>>  
,>>  !
	keyColumn?? 
:?? 
$str?? &
,??& '
keyValue@@ 
:@@ 
$num@@ 
)@@ 
;@@ 
migrationBuilderBB 
.BB 

DeleteDataBB '
(BB' (
tableCC 
:CC 
$strCC #
,CC# $
	keyColumnDD 
:DD 
$strDD '
,DD' (
keyValueEE 
:EE 
$numEE 
)EE 
;EE 
migrationBuilderGG 
.GG 

DeleteDataGG '
(GG' (
tableHH 
:HH 
$strHH #
,HH# $
	keyColumnII 
:II 
$strII '
,II' (
keyValueJJ 
:JJ 
$numJJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 

DeleteDataLL '
(LL' (
tableMM 
:MM 
$strMM #
,MM# $
	keyColumnNN 
:NN 
$strNN '
,NN' (
keyValueOO 
:OO 
$numOO 
)OO 
;OO 
migrationBuilderQQ 
.QQ 

DeleteDataQQ '
(QQ' (
tableRR 
:RR 
$strRR #
,RR# $
	keyColumnSS 
:SS 
$strSS '
,SS' (
keyValueTT 
:TT 
$numTT 
)TT 
;TT 
}UU 	
}VV 
}WW Ê
pE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220608110210_SeedingDataImages.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
SeedingDataImages *
:+ ,
	Migration- 6
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 

UpdateData		 '
(		' (
table

 
:

 
$str

  
,

  !
	keyColumn 
: 
$str &
,& '
keyValue 
: 
$num 
, 
columns 
: 
new 
[ 
] 
{  
$str! 4
,4 5
$str6 @
}A B
,B C
values 
: 
new 
object "
[" #
]# $
{% &
$str' F
,F G
$strH g
}h i
)i j
;j k
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

UpdateData '
(' (
table 
: 
$str  
,  !
	keyColumn 
: 
$str &
,& '
keyValue 
: 
$num 
, 
columns 
: 
new 
[ 
] 
{  
$str! 4
,4 5
$str6 @
}A B
,B C
values 
: 
new 
object "
[" #
]# $
{% &
$str' G
,G H
$strI i
}j k
)k l
;l m
} 	
} 
} È
rE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220609101823_AddShoppingCartItem.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
AddShoppingCartItem ,
:- .
	Migration/ 8
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 )
,

) *
columns 
: 
table 
=> !
new" %
{ 
ShoppingCartItemId &
=' (
table) .
.. /
Column/ 5
<5 6
int6 9
>9 :
(: ;
type; ?
:? @
$strA F
,F G
nullableH P
:P Q
falseR W
)W X
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
ShoppingCartId "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
nullableQ Y
:Y Z
true[ _
)_ `
,` a
ProductsProductId %
=& '
table( -
.- .
Column. 4
<4 5
int5 8
>8 9
(9 :
type: >
:> ?
$str@ E
,E F
nullableG O
:O P
trueQ U
)U V
,V W
Amount 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% ;
,; <
x= >
=>? A
xB C
.C D
ShoppingCartItemIdD V
)V W
;W X
table 
. 

ForeignKey $
($ %
name 
: 
$str N
,N O
column 
: 
x  !
=>" $
x% &
.& '
ProductsProductId' 8
,8 9
principalTable &
:& '
$str( 1
,1 2
principalColumn '
:' (
$str) 4
,4 5
onDelete  
:  !
ReferentialAction" 3
.3 4
Restrict4 <
)< =
;= >
} 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str >
,> ?
table   
:   
$str   *
,  * +
column!! 
:!! 
$str!! +
)!!+ ,
;!!, -
}"" 	
	protected$$ 
override$$ 
void$$ 
Down$$  $
($$$ %
MigrationBuilder$$% 5
migrationBuilder$$6 F
)$$F G
{%% 	
migrationBuilder&& 
.&& 
	DropTable&& &
(&&& '
name'' 
:'' 
$str'' )
)'') *
;''* +
}(( 	
})) 
}** ‰F
kE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220610112652_AddingOrders.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
AddingOrders %
:& '
	Migration( 1
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
OrderId 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
type0 4
:4 5
$str6 ;
,; <
nullable= E
:E F
falseG L
)L M
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
	FirstName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k
LastName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: H
,H I
	maxLengthJ S
:S T
$numU W
,W X
nullableY a
:a b
falsec h
)h i
,i j
Address 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 H
,H I
nullableJ R
:R S
falseT Y
)Y Z
,Z [
City 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
State 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
PinCode 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 H
,H I
nullableJ R
:R S
falseT Y
)Y Z
,Z [
PhoneNumber 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
OrderPlaced 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]

OrderTotal 
=  
table! &
.& '
Column' -
<- .
decimal. 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 0
,0 1
x2 3
=>4 6
x7 8
.8 9
OrderId9 @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name   
:   
$str   $
,  $ %
columns!! 
:!! 
table!! 
=>!! !
new!!" %
{"" 
OrderDetailId## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
int##1 4
>##4 5
(##5 6
type##6 :
:##: ;
$str##< A
,##A B
nullable##C K
:##K L
false##M R
)##R S
.$$ 

Annotation$$ #
($$# $
$str$$$ 8
,$$8 9
$str$$: @
)$$@ A
,$$A B
OrderId%% 
=%% 
table%% #
.%%# $
Column%%$ *
<%%* +
int%%+ .
>%%. /
(%%/ 0
type%%0 4
:%%4 5
$str%%6 ;
,%%; <
nullable%%= E
:%%E F
false%%G L
)%%L M
,%%M N
	ProductId&& 
=&& 
table&&  %
.&&% &
Column&&& ,
<&&, -
int&&- 0
>&&0 1
(&&1 2
type&&2 6
:&&6 7
$str&&8 =
,&&= >
nullable&&? G
:&&G H
false&&I N
)&&N O
,&&O P
Amount'' 
='' 
table'' "
.''" #
Column''# )
<'') *
int''* -
>''- .
(''. /
type''/ 3
:''3 4
$str''5 :
,'': ;
nullable''< D
:''D E
false''F K
)''K L
,''L M
Price(( 
=(( 
table(( !
.((! "
Column((" (
<((( )
decimal(() 0
>((0 1
(((1 2
type((2 6
:((6 7
$str((8 G
,((G H
nullable((I Q
:((Q R
false((S X
)((X Y
})) 
,)) 
constraints** 
:** 
table** "
=>**# %
{++ 
table,, 
.,, 

PrimaryKey,, $
(,,$ %
$str,,% 6
,,,6 7
x,,8 9
=>,,: <
x,,= >
.,,> ?
OrderDetailId,,? L
),,L M
;,,M N
table-- 
.-- 

ForeignKey-- $
(--$ %
name.. 
:.. 
$str.. >
,..> ?
column// 
:// 
x//  !
=>//" $
x//% &
.//& '
OrderId//' .
,//. /
principalTable00 &
:00& '
$str00( 0
,000 1
principalColumn11 '
:11' (
$str11) 2
,112 3
onDelete22  
:22  !
ReferentialAction22" 3
.223 4
Cascade224 ;
)22; <
;22< =
table33 
.33 

ForeignKey33 $
(33$ %
name44 
:44 
$str44 A
,44A B
column55 
:55 
x55  !
=>55" $
x55% &
.55& '
	ProductId55' 0
,550 1
principalTable66 &
:66& '
$str66( 1
,661 2
principalColumn77 '
:77' (
$str77) 4
,774 5
onDelete88  
:88  !
ReferentialAction88" 3
.883 4
Cascade884 ;
)88; <
;88< =
}99 
)99 
;99 
migrationBuilder;; 
.;; 
CreateIndex;; (
(;;( )
name<< 
:<< 
$str<< /
,<</ 0
table== 
:== 
$str== %
,==% &
column>> 
:>> 
$str>> !
)>>! "
;>>" #
migrationBuilder@@ 
.@@ 
CreateIndex@@ (
(@@( )
nameAA 
:AA 
$strAA 1
,AA1 2
tableBB 
:BB 
$strBB %
,BB% &
columnCC 
:CC 
$strCC #
)CC# $
;CC$ %
}DD 	
	protectedFF 
overrideFF 
voidFF 
DownFF  $
(FF$ %
MigrationBuilderFF% 5
migrationBuilderFF6 F
)FFF G
{GG 	
migrationBuilderHH 
.HH 
	DropTableHH &
(HH& '
nameII 
:II 
$strII $
)II$ %
;II% &
migrationBuilderKK 
.KK 
	DropTableKK &
(KK& '
nameLL 
:LL 
$strLL 
)LL 
;LL  
}MM 	
}NN 
}OO ø≈
jE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Migrations\20220610120650_AddIdentity.cs
	namespace 	
	FreshMart
 
. 

Migrations 
{ 
public 

partial 
class 
AddIdentity $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
truee i
)i j
,j k
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
	maxLengthU ^
:^ _
$num` c
,c d
nullablee m
:m n
trueo s
)s t
,t u
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
	maxLengthH Q
:Q R
$numS V
,V W
nullableX `
:` a
trueb f
)f g
,g h
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
type  ; ?
:  ? @
$str  A P
,  P Q
	maxLength  R [
:  [ \
$num  ] `
,  ` a
nullable  b j
:  j k
true  l p
)  p q
,  q r
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
type!!8 <
:!!< =
$str!!> C
,!!C D
nullable!!E M
:!!M N
false!!O T
)!!T U
,!!U V
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
type""8 <
:""< =
$str""> M
,""M N
nullable""O W
:""W X
true""Y ]
)""] ^
,""^ _
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
type##9 =
:##= >
$str##? N
,##N O
nullable##P X
:##X Y
true##Z ^
)##^ _
,##_ `
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
type$$< @
:$$@ A
$str$$B Q
,$$Q R
nullable$$S [
:$$[ \
true$$] a
)$$a b
,$$b c
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
type%%7 ;
:%%; <
$str%%= L
,%%L M
nullable%%N V
:%%V W
true%%X \
)%%\ ]
,%%] ^ 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
type&&> B
:&&B C
$str&&D I
,&&I J
nullable&&K S
:&&S T
false&&U Z
)&&Z [
,&&[ \
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
type'': >
:''> ?
$str''@ E
,''E F
nullable''G O
:''O P
false''Q V
)''V W
,''W X

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
type((> B
:((B C
$str((D T
,((T U
nullable((V ^
:((^ _
true((` d
)((d e
,((e f
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
type))8 <
:))< =
$str))> C
,))C D
nullable))E M
:))M N
false))O T
)))T U
,))U V
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 (
,22( )
columns33 
:33 
table33 
=>33 !
new33" %
{44 
Id55 
=55 
table55 
.55 
Column55 %
<55% &
int55& )
>55) *
(55* +
type55+ /
:55/ 0
$str551 6
,556 7
nullable558 @
:55@ A
false55B G
)55G H
.66 

Annotation66 #
(66# $
$str66$ 8
,668 9
$str66: @
)66@ A
,66A B
RoleId77 
=77 
table77 "
.77" #
Column77# )
<77) *
string77* 0
>770 1
(771 2
type772 6
:776 7
$str778 G
,77G H
nullable77I Q
:77Q R
false77S X
)77X Y
,77Y Z
	ClaimType88 
=88 
table88  %
.88% &
Column88& ,
<88, -
string88- 3
>883 4
(884 5
type885 9
:889 :
$str88; J
,88J K
nullable88L T
:88T U
true88V Z
)88Z [
,88[ \

ClaimValue99 
=99  
table99! &
.99& '
Column99' -
<99- .
string99. 4
>994 5
(995 6
type996 :
:99: ;
$str99< K
,99K L
nullable99M U
:99U V
true99W [
)99[ \
}:: 
,:: 
constraints;; 
:;; 
table;; "
=>;;# %
{<< 
table== 
.== 

PrimaryKey== $
(==$ %
$str==% :
,==: ;
x==< =
=>==> @
x==A B
.==B C
Id==C E
)==E F
;==F G
table>> 
.>> 

ForeignKey>> $
(>>$ %
name?? 
:?? 
$str?? F
,??F G
column@@ 
:@@ 
x@@  !
=>@@" $
x@@% &
.@@& '
RoleId@@' -
,@@- .
principalTableAA &
:AA& '
$strAA( 5
,AA5 6
principalColumnBB '
:BB' (
$strBB) -
,BB- .
onDeleteCC  
:CC  !
ReferentialActionCC" 3
.CC3 4
CascadeCC4 ;
)CC; <
;CC< =
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 
CreateTableFF (
(FF( )
nameGG 
:GG 
$strGG (
,GG( )
columnsHH 
:HH 
tableHH 
=>HH !
newHH" %
{II 
IdJJ 
=JJ 
tableJJ 
.JJ 
ColumnJJ %
<JJ% &
intJJ& )
>JJ) *
(JJ* +
typeJJ+ /
:JJ/ 0
$strJJ1 6
,JJ6 7
nullableJJ8 @
:JJ@ A
falseJJB G
)JJG H
.KK 

AnnotationKK #
(KK# $
$strKK$ 8
,KK8 9
$strKK: @
)KK@ A
,KKA B
UserIdLL 
=LL 
tableLL "
.LL" #
ColumnLL# )
<LL) *
stringLL* 0
>LL0 1
(LL1 2
typeLL2 6
:LL6 7
$strLL8 G
,LLG H
nullableLLI Q
:LLQ R
falseLLS X
)LLX Y
,LLY Z
	ClaimTypeMM 
=MM 
tableMM  %
.MM% &
ColumnMM& ,
<MM, -
stringMM- 3
>MM3 4
(MM4 5
typeMM5 9
:MM9 :
$strMM; J
,MMJ K
nullableMML T
:MMT U
trueMMV Z
)MMZ [
,MM[ \

ClaimValueNN 
=NN  
tableNN! &
.NN& '
ColumnNN' -
<NN- .
stringNN. 4
>NN4 5
(NN5 6
typeNN6 :
:NN: ;
$strNN< K
,NNK L
nullableNNM U
:NNU V
trueNNW [
)NN[ \
}OO 
,OO 
constraintsPP 
:PP 
tablePP "
=>PP# %
{QQ 
tableRR 
.RR 

PrimaryKeyRR $
(RR$ %
$strRR% :
,RR: ;
xRR< =
=>RR> @
xRRA B
.RRB C
IdRRC E
)RRE F
;RRF G
tableSS 
.SS 

ForeignKeySS $
(SS$ %
nameTT 
:TT 
$strTT F
,TTF G
columnUU 
:UU 
xUU  !
=>UU" $
xUU% &
.UU& '
UserIdUU' -
,UU- .
principalTableVV &
:VV& '
$strVV( 5
,VV5 6
principalColumnWW '
:WW' (
$strWW) -
,WW- .
onDeleteXX  
:XX  !
ReferentialActionXX" 3
.XX3 4
CascadeXX4 ;
)XX; <
;XX< =
}YY 
)YY 
;YY 
migrationBuilder[[ 
.[[ 
CreateTable[[ (
([[( )
name\\ 
:\\ 
$str\\ (
,\\( )
columns]] 
:]] 
table]] 
=>]] !
new]]" %
{^^ 
LoginProvider__ !
=__" #
table__$ )
.__) *
Column__* 0
<__0 1
string__1 7
>__7 8
(__8 9
type__9 =
:__= >
$str__? N
,__N O
nullable__P X
:__X Y
false__Z _
)___ `
,__` a
ProviderKey`` 
=``  !
table``" '
.``' (
Column``( .
<``. /
string``/ 5
>``5 6
(``6 7
type``7 ;
:``; <
$str``= L
,``L M
nullable``N V
:``V W
false``X ]
)``] ^
,``^ _
ProviderDisplayNameaa '
=aa( )
tableaa* /
.aa/ 0
Columnaa0 6
<aa6 7
stringaa7 =
>aa= >
(aa> ?
typeaa? C
:aaC D
$straaE T
,aaT U
nullableaaV ^
:aa^ _
trueaa` d
)aad e
,aae f
UserIdbb 
=bb 
tablebb "
.bb" #
Columnbb# )
<bb) *
stringbb* 0
>bb0 1
(bb1 2
typebb2 6
:bb6 7
$strbb8 G
,bbG H
nullablebbI Q
:bbQ R
falsebbS X
)bbX Y
}cc 
,cc 
constraintsdd 
:dd 
tabledd "
=>dd# %
{ee 
tableff 
.ff 

PrimaryKeyff $
(ff$ %
$strff% :
,ff: ;
xff< =
=>ff> @
newffA D
{ffE F
xffG H
.ffH I
LoginProviderffI V
,ffV W
xffX Y
.ffY Z
ProviderKeyffZ e
}fff g
)ffg h
;ffh i
tablegg 
.gg 

ForeignKeygg $
(gg$ %
namehh 
:hh 
$strhh F
,hhF G
columnii 
:ii 
xii  !
=>ii" $
xii% &
.ii& '
UserIdii' -
,ii- .
principalTablejj &
:jj& '
$strjj( 5
,jj5 6
principalColumnkk '
:kk' (
$strkk) -
,kk- .
onDeletell  
:ll  !
ReferentialActionll" 3
.ll3 4
Cascadell4 ;
)ll; <
;ll< =
}mm 
)mm 
;mm 
migrationBuilderoo 
.oo 
CreateTableoo (
(oo( )
namepp 
:pp 
$strpp '
,pp' (
columnsqq 
:qq 
tableqq 
=>qq !
newqq" %
{rr 
UserIdss 
=ss 
tabless "
.ss" #
Columnss# )
<ss) *
stringss* 0
>ss0 1
(ss1 2
typess2 6
:ss6 7
$strss8 G
,ssG H
nullablessI Q
:ssQ R
falsessS X
)ssX Y
,ssY Z
RoleIdtt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
stringtt* 0
>tt0 1
(tt1 2
typett2 6
:tt6 7
$strtt8 G
,ttG H
nullablettI Q
:ttQ R
falsettS X
)ttX Y
}uu 
,uu 
constraintsvv 
:vv 
tablevv "
=>vv# %
{ww 
tablexx 
.xx 

PrimaryKeyxx $
(xx$ %
$strxx% 9
,xx9 :
xxx; <
=>xx= ?
newxx@ C
{xxD E
xxxF G
.xxG H
UserIdxxH N
,xxN O
xxxP Q
.xxQ R
RoleIdxxR X
}xxY Z
)xxZ [
;xx[ \
tableyy 
.yy 

ForeignKeyyy $
(yy$ %
namezz 
:zz 
$strzz E
,zzE F
column{{ 
:{{ 
x{{  !
=>{{" $
x{{% &
.{{& '
RoleId{{' -
,{{- .
principalTable|| &
:||& '
$str||( 5
,||5 6
principalColumn}} '
:}}' (
$str}}) -
,}}- .
onDelete~~  
:~~  !
ReferentialAction~~" 3
.~~3 4
Cascade~~4 ;
)~~; <
;~~< =
table 
. 

ForeignKey $
($ %
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ E
,
ÄÄE F
column
ÅÅ 
:
ÅÅ 
x
ÅÅ  !
=>
ÅÅ" $
x
ÅÅ% &
.
ÅÅ& '
UserId
ÅÅ' -
,
ÅÅ- .
principalTable
ÇÇ &
:
ÇÇ& '
$str
ÇÇ( 5
,
ÇÇ5 6
principalColumn
ÉÉ '
:
ÉÉ' (
$str
ÉÉ) -
,
ÉÉ- .
onDelete
ÑÑ  
:
ÑÑ  !
ReferentialAction
ÑÑ" 3
.
ÑÑ3 4
Cascade
ÑÑ4 ;
)
ÑÑ; <
;
ÑÑ< =
}
ÖÖ 
)
ÖÖ 
;
ÖÖ 
migrationBuilder
áá 
.
áá 
CreateTable
áá (
(
áá( )
name
àà 
:
àà 
$str
àà (
,
àà( )
columns
ââ 
:
ââ 
table
ââ 
=>
ââ !
new
ââ" %
{
ää 
UserId
ãã 
=
ãã 
table
ãã "
.
ãã" #
Column
ãã# )
<
ãã) *
string
ãã* 0
>
ãã0 1
(
ãã1 2
type
ãã2 6
:
ãã6 7
$str
ãã8 G
,
ããG H
nullable
ããI Q
:
ããQ R
false
ããS X
)
ããX Y
,
ããY Z
LoginProvider
åå !
=
åå" #
table
åå$ )
.
åå) *
Column
åå* 0
<
åå0 1
string
åå1 7
>
åå7 8
(
åå8 9
type
åå9 =
:
åå= >
$str
åå? N
,
ååN O
nullable
ååP X
:
ååX Y
false
ååZ _
)
åå_ `
,
åå` a
Name
çç 
=
çç 
table
çç  
.
çç  !
Column
çç! '
<
çç' (
string
çç( .
>
çç. /
(
çç/ 0
type
çç0 4
:
çç4 5
$str
çç6 E
,
ççE F
nullable
ççG O
:
ççO P
false
ççQ V
)
ççV W
,
ççW X
Value
éé 
=
éé 
table
éé !
.
éé! "
Column
éé" (
<
éé( )
string
éé) /
>
éé/ 0
(
éé0 1
type
éé1 5
:
éé5 6
$str
éé7 F
,
ééF G
nullable
ééH P
:
ééP Q
true
ééR V
)
ééV W
}
èè 
,
èè 
constraints
êê 
:
êê 
table
êê "
=>
êê# %
{
ëë 
table
íí 
.
íí 

PrimaryKey
íí $
(
íí$ %
$str
íí% :
,
íí: ;
x
íí< =
=>
íí> @
new
ííA D
{
ííE F
x
ííG H
.
ííH I
UserId
ííI O
,
ííO P
x
ííQ R
.
ííR S
LoginProvider
ííS `
,
íí` a
x
ííb c
.
ííc d
Name
ííd h
}
ííi j
)
ííj k
;
íík l
table
ìì 
.
ìì 

ForeignKey
ìì $
(
ìì$ %
name
îî 
:
îî 
$str
îî F
,
îîF G
column
ïï 
:
ïï 
x
ïï  !
=>
ïï" $
x
ïï% &
.
ïï& '
UserId
ïï' -
,
ïï- .
principalTable
ññ &
:
ññ& '
$str
ññ( 5
,
ññ5 6
principalColumn
óó '
:
óó' (
$str
óó) -
,
óó- .
onDelete
òò  
:
òò  !
ReferentialAction
òò" 3
.
òò3 4
Cascade
òò4 ;
)
òò; <
;
òò< =
}
ôô 
)
ôô 
;
ôô 
migrationBuilder
õõ 
.
õõ 
CreateIndex
õõ (
(
õõ( )
name
úú 
:
úú 
$str
úú 2
,
úú2 3
table
ùù 
:
ùù 
$str
ùù )
,
ùù) *
column
ûû 
:
ûû 
$str
ûû  
)
ûû  !
;
ûû! "
migrationBuilder
†† 
.
†† 
CreateIndex
†† (
(
††( )
name
°° 
:
°° 
$str
°° %
,
°°% &
table
¢¢ 
:
¢¢ 
$str
¢¢ $
,
¢¢$ %
column
££ 
:
££ 
$str
££ (
,
££( )
unique
§§ 
:
§§ 
true
§§ 
,
§§ 
filter
•• 
:
•• 
$str
•• 6
)
••6 7
;
••7 8
migrationBuilder
ßß 
.
ßß 
CreateIndex
ßß (
(
ßß( )
name
®® 
:
®® 
$str
®® 2
,
®®2 3
table
©© 
:
©© 
$str
©© )
,
©©) *
column
™™ 
:
™™ 
$str
™™  
)
™™  !
;
™™! "
migrationBuilder
¨¨ 
.
¨¨ 
CreateIndex
¨¨ (
(
¨¨( )
name
≠≠ 
:
≠≠ 
$str
≠≠ 2
,
≠≠2 3
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ )
,
ÆÆ) *
column
ØØ 
:
ØØ 
$str
ØØ  
)
ØØ  !
;
ØØ! "
migrationBuilder
±± 
.
±± 
CreateIndex
±± (
(
±±( )
name
≤≤ 
:
≤≤ 
$str
≤≤ 1
,
≤≤1 2
table
≥≥ 
:
≥≥ 
$str
≥≥ (
,
≥≥( )
column
¥¥ 
:
¥¥ 
$str
¥¥  
)
¥¥  !
;
¥¥! "
migrationBuilder
∂∂ 
.
∂∂ 
CreateIndex
∂∂ (
(
∂∂( )
name
∑∑ 
:
∑∑ 
$str
∑∑ "
,
∑∑" #
table
∏∏ 
:
∏∏ 
$str
∏∏ $
,
∏∏$ %
column
ππ 
:
ππ 
$str
ππ )
)
ππ) *
;
ππ* +
migrationBuilder
ªª 
.
ªª 
CreateIndex
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº %
,
ºº% &
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ $
,
ΩΩ$ %
column
ææ 
:
ææ 
$str
ææ ,
,
ææ, -
unique
øø 
:
øø 
true
øø 
,
øø 
filter
¿¿ 
:
¿¿ 
$str
¿¿ :
)
¿¿: ;
;
¿¿; <
}
¡¡ 	
	protected
√√ 
override
√√ 
void
√√ 
Down
√√  $
(
√√$ %
MigrationBuilder
√√% 5
migrationBuilder
√√6 F
)
√√F G
{
ƒƒ 	
migrationBuilder
≈≈ 
.
≈≈ 
	DropTable
≈≈ &
(
≈≈& '
name
∆∆ 
:
∆∆ 
$str
∆∆ (
)
∆∆( )
;
∆∆) *
migrationBuilder
»» 
.
»» 
	DropTable
»» &
(
»»& '
name
…… 
:
…… 
$str
…… (
)
……( )
;
……) *
migrationBuilder
ÀÀ 
.
ÀÀ 
	DropTable
ÀÀ &
(
ÀÀ& '
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ (
)
ÃÃ( )
;
ÃÃ) *
migrationBuilder
ŒŒ 
.
ŒŒ 
	DropTable
ŒŒ &
(
ŒŒ& '
name
œœ 
:
œœ 
$str
œœ '
)
œœ' (
;
œœ( )
migrationBuilder
—— 
.
—— 
	DropTable
—— &
(
——& '
name
““ 
:
““ 
$str
““ (
)
““( )
;
““) *
migrationBuilder
‘‘ 
.
‘‘ 
	DropTable
‘‘ &
(
‘‘& '
name
’’ 
:
’’ 
$str
’’ #
)
’’# $
;
’’$ %
migrationBuilder
◊◊ 
.
◊◊ 
	DropTable
◊◊ &
(
◊◊& '
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ #
)
ÿÿ# $
;
ÿÿ$ %
}
ŸŸ 	
}
⁄⁄ 
}€€ äH
XE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\AppDbContext.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
AppDbContext 
: 
IdentityDbContext /
</ 0
IdentityUser0 <
>< =
{		 
public

 
AppDbContext

 
(

 
DbContextOptions

 ,
<

, -
AppDbContext

- 9
>

9 :
options

; B
)

B C
:

D E
base

F J
(

J K
options

K R
)

R S
{

T U
}

V W
public 
DbSet 
< 
Products 
> 
Prodcts &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Category 
> 

Categories )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
ShoppingCartItem %
>% &
ShoppingCartItems' 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
DbSet 
< 
Order 
> 
Orders "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
OrderDetail  
>  !
OrderDetails" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{K L
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
Category  (
>( )
() *
)* +
.+ ,
HasData, 3
(3 4
new4 7
Category8 @
{ 

CategoryId 
= 
$num 
, 
CategoryName 
= 
$str ,
,, -
CategoryDescription #
=$ %
$str& @
} 
) 
; 
modelBuilder 
. 
Entity 
<  
Category  (
>( )
() *
)* +
.+ ,
HasData, 3
(3 4
new4 7
Category8 @
{ 

CategoryId 
= 
$num 
, 
CategoryName 
= 
$str 0
,0 1
CategoryDescription #
=$ %
$str& 7
} 
) 
; 
modelBuilder   
.   
Entity   
<    
Category    (
>  ( )
(  ) *
)  * +
.  + ,
HasData  , 3
(  3 4
new  4 7
Category  8 @
{!! 

CategoryId"" 
="" 
$num"" 
,"" 
CategoryName## 
=## 
$str## -
,##- .
CategoryDescription$$ #
=$$$ %
$str$$& 4
}%% 
)%% 
;%% 
modelBuilder&& 
.&& 
Entity&& 
<&&  
Category&&  (
>&&( )
(&&) *
)&&* +
.&&+ ,
HasData&&, 3
(&&3 4
new&&4 7
Category&&8 @
{'' 

CategoryId(( 
=(( 
$num(( 
,(( 
CategoryName)) 
=)) 
$str)) *
,))* +
CategoryDescription** #
=**$ %
$str**& 1
}++ 
)++ 
;++ 
modelBuilder,, 
.,, 
Entity,, 
<,,  
Category,,  (
>,,( )
(,,) *
),,* +
.,,+ ,
HasData,,, 3
(,,3 4
new,,4 7
Category,,8 @
{-- 

CategoryId.. 
=.. 
$num.. 
,.. 
CategoryName// 
=// 
$str// )
,//) *
CategoryDescription00 #
=00$ %
$str00& 4
}11 
)11 
;11 
modelBuilder55 
.55 
Entity55 
<55  
Products55  (
>55( )
(55) *
)55* +
.55+ ,
HasData55, 3
(553 4
new554 7
Products558 @
{66 
	ProductId77 
=77 
$num77 
,77 
ProductName88 
=88 
$str88 %
,88% &
price99 
=99 
$num99 
,99  
Description:: 
=:: 
$str:: 7
,::7 8

CategoryId;; 
=;; 
$num;; 
,;; 
ImageThumbnailUrl<< !
=<<! "
$str<<" B
,<<B C
ImageUrl== 
=== 
$str== ;
,==; <
	IsInStock>> 
=>> 
true>>  
,>>  !
IsOnSale?? 
=?? 
true?? 
}@@ 
)@@ 
;@@ 
modelBuilderBB 
.BB 
EntityBB 
<BB  
ProductsBB  (
>BB( )
(BB) *
)BB* +
.BB+ ,
HasDataBB, 3
(BB3 4
newBB4 7
ProductsBB8 @
{CC 
	ProductIdDD 
=DD 
$numDD 
,DD 
ProductNameEE 
=EE 
$strEE -
,EE- .
priceFF 
=FF 
$numFF 
,FF  
DescriptionGG 
=GG 
$strGG <
,GG< =

CategoryIdHH 
=HH 
$numHH 
,HH 
ImageThumbnailUrlII !
=II" #
$strII$ E
,IIE F
ImageUrlJJ 
=JJ 
$strJJ <
,JJ< =
	IsInStockKK 
=KK 
trueKK  
,KK  !
IsOnSaleLL 
=LL 
trueLL 
}MM 
)MM 
;MM 
modelBuilderOO 
.OO 
EntityOO 
<OO  
ProductsOO  (
>OO( )
(OO) *
)OO* +
.OO+ ,
HasDataOO, 3
(OO3 4
newOO4 7
ProductsOO8 @
{PP 
	ProductIdQQ 
=QQ 
$numQQ 
,QQ 
ProductNameRR 
=RR 
$strRR *
,RR* +
priceSS 
=SS 
$numSS 
,SS  
DescriptionTT 
=TT 
$strTT 6
,TT6 7

CategoryIdUU 
=UU 
$numUU 
,UU 
ImageThumbnailUrlVV !
=VV" #
$strVV$ E
,VVE F
ImageUrlWW 
=WW 
$strWW <
,WW< =
	IsInStockXX 
=XX 
trueXX  
,XX  !
IsOnSaleYY 
=YY 
trueYY 
}ZZ 
)ZZ 
;ZZ 
modelBuilder\\ 
.\\ 
Entity\\ 
<\\  
Products\\  (
>\\( )
(\\) *
)\\* +
.\\+ ,
HasData\\, 3
(\\3 4
new\\4 7
Products\\8 @
{]] 
	ProductId^^ 
=^^ 
$num^^ 
,^^ 
ProductName__ 
=__ 
$str__ -
,__- .
price`` 
=`` 
$num`` 
,``  
Descriptionaa 
=aa 
$straa 9
,aa9 :

CategoryIdbb 
=bb 
$numbb 
,bb 
ImageThumbnailUrlcc !
=cc" #
$strcc$ D
,ccD E
ImageUrldd 
=dd 
$strdd ;
,dd; <
	IsInStockee 
=ee 
trueee  
,ee  !
IsOnSaleff 
=ff 
trueff 
}gg 
)gg 
;gg 
modelBuilderii 
.ii 
Entityii 
<ii  
Productsii  (
>ii( )
(ii) *
)ii* +
.ii+ ,
HasDataii, 3
(ii3 4
newii4 7
Productsii8 @
{jj 
	ProductIdkk 
=kk 
$numkk 
,kk 
ProductNamell 
=ll 
$strll -
,ll- .
pricemm 
=mm 
$nummm 
,mm  
Descriptionnn 
=nn 
$strnn 5
,nn5 6

CategoryIdoo 
=oo 
$numoo 
,oo 
ImageThumbnailUrlpp !
=pp" #
$strpp$ C
,ppC D
ImageUrlqq 
=qq 
$strqq :
,qq: ;
	IsInStockrr 
=rr 
truerr  
,rr  !
IsOnSaless 
=ss 
truess 
}tt 
)tt 
;tt 
}xx 	
}yy 
}zz ¸
TE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\Category.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
Category 
{ 
[ 	
Key	 
] 
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
CategoryName		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
string

 
CategoryDescription

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
List 
< 
Products 
> 
ProductList )
{* +
get+ .
;. /
set0 3
;3 4
}4 5
} 
} §
^E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\CategoryRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
CategoryRepository #
:# $
ICategoryRepository% 8
{ 
private 
readonly 
AppDbContext %
_appDbContext& 3
;3 4
public 
CategoryRepository !
(! "
AppDbContext" .
appDbContext/ ;
); <
{		 	
_appDbContext

 
=

 
appDbContext

 (
;

( )
} 	
public 
IEnumerable 
< 
Category #
># $
GetAllCategories% 5
=>6 8
_appDbContext9 F
.F G

CategoriesG Q
;Q R
} 
} ›
_E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\ICategoryRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

	interface 
ICategoryRepository (
{ 
IEnumerable 
< 
Category 
> 
GetAllCategories .
{/ 0
get1 4
;4 5
}6 7
} 
} ¨
\E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\IOrderRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

	interface 
IOrderRepository %
{ 
void 
CreateOrder 
( 
Order 
order $
)$ %
;% &
} 
} ä
^E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\IProductRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

	interface 
IProductRepository '
{ 
IEnumerable 
< 
Products 
> 
GetAllProducts ,
{- .
get/ 2
;2 3
}4 5
IEnumerable 
< 
Products 
> 
GetProductsOnSale /
{0 1
get2 5
;5 6
}7 8
Products		 
GetProductById		 
(		  
int		  #
	productId		$ -
)		- .
;		. /
}

 
} â
QE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\Order.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
Order 
{		 
[

 	
	BindNever

	 
]

 
[ 	
Key	 
] 
public 
int 
OrderId 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str  7
)7 8
]8 9
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
	FirstName 
{  !
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
LastName 
{  
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
]6 7
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 2
)2 3
]3 4
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! B
)B C
]C D
public 
string 
PinCode 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
( 
ErrorMessage 
=  
$str! L
)L M
]M N
[ 	
DataType	 
( 
DataType 
. 
PhoneNumber &
)& '
]' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public   
List   
<   
OrderDetail   
>    
OrderDetails  ! -
{  . /
get  0 3
;  3 4
set  5 8
;  8 9
}  : ;
[!! 	
	BindNever!!	 
]!! 
public"" 
DateTime"" 
OrderPlaced"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
[## 	
	BindNever##	 
]## 
public$$ 
decimal$$ 

OrderTotal$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
}%% 
}&& £
WE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\OrderDetail.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
OrderDetail 
{ 
public 
int 
OrderDetailId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
int		 
OrderId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
[

 	

ForeignKey

	 
(

 
$str

 
)

 
]

 
public 
Order 
Order 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}( )
[ 	

ForeignKey	 
( 
$str 
)  
]  !
public 
Products 
Products  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ã
[E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\OrderRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
OrderRepository  
:  !
IOrderRepository! 1
{ 
private 
readonly 
AppDbContext %
_appDbcontext& 3
;3 4
private 
readonly 
ShoppingCart %
_shoppingCart& 3
;3 4
public		 
OrderRepository		 
(		 
AppDbContext		 +
appDbcontext		, 8
,		8 9
ShoppingCart		: F
shoppingCart		G S
)		S T
{

 	
_appDbcontext 
= 
appDbcontext (
;( )
_shoppingCart 
= 
shoppingCart (
;( )
} 	
public 
void 
CreateOrder 
(  
Order  %
order& +
)+ ,
{- .
order 
. 
OrderPlaced 
= 
DateTime  (
.( )
Now) ,
;, -
order 
. 

OrderTotal 
= 
_shoppingCart ,
., - 
GetShoppingCartTotal- A
(A B
)B C
;C D
_appDbcontext 
. 
Orders  
.  !
Add! $
($ %
order% *
)* +
;+ ,
_appDbcontext 
. 
SaveChanges %
(% &
)& '
;' (
var 
shoppingCartItems !
=" #
_shoppingCart$ 1
.1 2 
GetShoppingCartItems2 F
(F G
)G H
;H I
foreach 
( 
var 
shoppinCartItem (
in) +
shoppingCartItems, =
)= >
{? @
var 
orderDetail 
=  !
new" %
OrderDetail& 1
{ 
Amount 
= 
shoppinCartItem ,
., -
Amount- 3
,3 4
Price 
= 
shoppinCartItem +
.+ ,
Products, 4
.4 5
price5 :
,: ;
	ProductId 
= 
shoppinCartItem  /
./ 0
Products0 8
.8 9
	ProductId9 B
,B C
OrderId 
= 
order #
.# $
OrderId$ +
} 
; 
_appDbcontext   
.   
OrderDetails   *
.  * +
Add  + .
(  . /
orderDetail  / :
)  : ;
;  ; <
}!! 
_appDbcontext"" 
."" 
SaveChanges"" %
(""% &
)""& '
;""' (
}## 	
}$$ 
}%% ®
]E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\ProductRepository.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
ProductRepository "
:" #
IProductRepository$ 6
{		 
private 
readonly 
AppDbContext %
_appDbContext& 3
;3 4
public 
ProductRepository  
(  !
AppDbContext! -
appDbContext. :
): ;
{ 	
_appDbContext 
= 
appDbContext (
;( )
} 	
public 
IEnumerable 
< 
Products #
># $
GetAllProducts% 3
{ 	
get 
{ 
return 
_appDbContext $
.$ %
Prodcts% ,
., -
Include- 4
(4 5
c5 6
=>7 9
c: ;
.; <
Category< D
)D E
;E F
} 
} 	
public 
IEnumerable 
< 
Products #
># $
GetProductsOnSale% 6
{ 	
get 
{ 
return 
_appDbContext $
.$ %
Prodcts% ,
., -
Include- 4
(4 5
c5 6
=>7 9
c: ;
.; <
Category< D
)D E
.E F
WhereF K
(K L
pL M
=>N P
pQ R
.R S
IsOnSaleS [
)[ \
;\ ]
} 
}   	
public"" 
Products"" 
GetProductById"" &
(""& '
int""' *
	ProductId""+ 4
)""4 5
{""6 7
return## 
_appDbContext##  
.##  !
Prodcts##! (
.##( )
FirstOrDefault##) 7
(##7 8
p##8 9
=>##: <
p##= >
.##> ?
	ProductId##? H
==##I K
	ProductId##L U
)##U V
;##V W
}$$ 	
}%% 
}&& –
TE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\Products.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
Products 
{ 
[ 	
Key	 
] 
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
ProductName		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
decimal 
price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ImageThumbnailUrl '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
IsOnSale 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
	IsInStock 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ⁄?
XE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\ShoppingCart.cs
	namespace 	
	FreshMart
 
. 
Models 
{		 
public

 

class

 
ShoppingCart

 
{ 
private 
readonly 
AppDbContext %
_appDbContext& 3
;3 4
public 
string 
ShoppingCartId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
List 
< 
ShoppingCartItem $
>$ %
ShoppingCartItems& 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
ShoppingCart 
( 
AppDbContext (
appDbContext) 5
)5 6
{7 8
_appDbContext 
= 
appDbContext (
;( )
} 	
public 
static 
ShoppingCart "
GetCart# *
(* +
IServiceProvider+ ;
services< D
)D E
{F G
ISession 
session 
= 
services '
.' (
GetRequiredService( :
<: ; 
IHttpContextAccessor; O
>O P
(P Q
)Q R
?R S
.S T
HttpContextT _
._ `
Session` g
;g h
var 
context 
= 
services "
." #

GetService# -
<- .
AppDbContext. :
>: ;
(; <
)< =
;= >
string 
cartId 
= 
session #
.# $
	GetString$ -
(- .
$str. 6
)6 7
??8 :
Guid; ?
.? @
NewGuid@ G
(G H
)H I
.I J
ToStringJ R
(R S
)S T
;T U
session 
. 
	SetString 
( 
$str &
,& '
cartId( .
). /
;/ 0
return 
new 
ShoppingCart #
(# $
context$ +
)+ ,
{- .
ShoppingCartId/ =
=> ?
cartId@ F
}G H
;H I
} 	
public 
void 
	AddToCart 
( 
Products &
products' /
,/ 0
int1 4
amount5 ;
); <
{= >
var 
shoppingCartItem  
=! "
_appDbContext# 0
.0 1
ShoppingCartItems1 B
.B C
SingleOrDefaultC R
(R S
s   
=>   
s   
.   
Products   
.    
	ProductId    )
==  * ,
products  - 5
.  5 6
	ProductId  6 ?
&&  @ B
s  C D
.  D E
ShoppingCartId  E S
==  T V
ShoppingCartId  W e
)  e f
;  f g
if!! 
(!! 
shoppingCartItem!!  
==!!! #
null!!$ (
)!!( )
{"" 
shoppingCartItem##  
=##! "
new### &
ShoppingCartItem##' 7
{$$ 
ShoppingCartId%% "
=%%# $
ShoppingCartId%%% 3
,%%3 4
Products&& 
=&& 
products&& '
,&&' (
Amount'' 
='' 
amount'' #
}(( 
;(( 
_appDbContext** 
.** 
ShoppingCartItems** /
.**/ 0
Add**0 3
(**3 4
shoppingCartItem**4 D
)**D E
;**E F
}++ 
else-- 
{-- 
shoppingCartItem..  
...  !
Amount..! '
++..' )
;..) *
}// 
_appDbContext11 
.11 
SaveChanges11 %
(11% &
)11& '
;11' (
}22 	
public44 
int44 
RemoveFromCart44 !
(44! "
Products44" *
products44+ 3
)443 4
{445 6
var55 
shoppingCartItem55  
=55! "
_appDbContext55# 0
.550 1
ShoppingCartItems551 B
.55B C
SingleOrDefault55C R
(55R S
s66 
=>66 
s66 
.66 
Products66 #
.66# $
	ProductId66$ -
==66. 0
products661 9
.669 :
	ProductId66: C
&&66D F
s66G H
.66H I
ShoppingCartId66I W
==66X Z
ShoppingCartId66[ i
)66i j
;66j k
var77 
localAmount77 
=77 
$num77 
;77  
if88 
(88 
shoppingCartItem88  
!=88! #
null88$ (
)88( )
{88* +
shoppingCartItem99  
.99  !
Amount99! '
--99' )
;99) *
localAmount:: 
=:: 
shoppingCartItem:: .
.::. /
Amount::/ 5
;::5 6
};; 
else<< 
{== 
_appDbContext>> 
.>> 
ShoppingCartItems>> /
.>>/ 0
Remove>>0 6
(>>6 7
shoppingCartItem>>7 G
)>>G H
;>>H I
}?? 
_appDbContext@@ 
.@@ 
SaveChanges@@ %
(@@% &
)@@& '
;@@' (
returnAA 
localAmountAA 
;AA 
}BB 	
publicDD 
ListDD 
<DD 
ShoppingCartItemDD $
>DD$ % 
GetShoppingCartItemsDD& :
(DD: ;
)DD; <
{DD= >
returnEE 
ShoppingCartItemsEE $
??EE% '
(EE( )
ShoppingCartItemsEE) :
=EE; <
_appDbContextEE= J
.EEJ K
ShoppingCartItemsEEK \
.EE\ ]
WhereEE] b
(EEb c
cFF 
=>FF 
cFF 
.FF 
ShoppingCartIdFF %
==FF& (
ShoppingCartIdFF) 7
)FF7 8
.GG 
IncludeGG 
(GG 
sGG 
=>GG 
sGG 
.GG  
ProductsGG  (
)GG( )
.HH 
ToListHH 
(HH 
)HH 
)HH 
;HH 
}II 	
publicKK 
voidKK 
	ClearCartKK 
(KK 
)KK 
{KK  !
varLL 
	cartItemsLL 
=LL 
_appDbContextLL )
.LL) *
ShoppingCartItemsLL* ;
.LL; <
WhereLL< A
(LLA B
cMM 
=>MM 
cMM 
.MM 
ShoppingCartIdMM %
==MM& (
ShoppingCartIdMM) 7
)MM7 8
;MM8 9
_appDbContextOO 
.OO 
ShoppingCartItemsOO +
.OO+ ,
RemoveRangeOO, 7
(OO7 8
	cartItemsOO8 A
)OOA B
;OOB C
_appDbContextPP 
.PP 
SaveChangesPP %
(PP% &
)PP& '
;PP' (
}QQ 	
publicSS 
decimalSS  
GetShoppingCartTotalSS +
(SS+ ,
)SS, -
{SS. /
varTT 
totalTT 
=TT 
_appDbContextTT %
.TT% &
ShoppingCartItemsTT& 7
.TT7 8
WhereTT8 =
(TT= >
cUU 
=>UU 
cUU 
.UU 
ShoppingCartIdUU %
==UU& (
ShoppingCartIdUU) 7
)UU7 8
.VV 
SelectVV 
(VV 
cVV 
=>VV 
cVV 
.VV 
ProductsVV '
.VV' (
priceVV( -
*VV. /
cVV0 1
.VV1 2
AmountVV2 8
)VV8 9
.VV9 :
SumVV: =
(VV= >
)VV> ?
;VV? @
returnWW 
totalWW 
;WW 
}XX 	
}YY 
}ZZ ”
\E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Models\ShoppingCartItem.cs
	namespace 	
	FreshMart
 
. 
Models 
{ 
public 

class 
ShoppingCartItem !
{ 
[ 	
Key	 
] 
public		 
int		 
ShoppingCartItemId		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
ShoppingCartId

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
Products 
Products  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
} 
} £

LE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Program.cs
	namespace

 	
	FreshMart


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ê$
LE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\Startup.cs
	namespace 	
	FreshMart
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
services   
.   
	AddScoped   
<   
ICategoryRepository   2
,  2 3
CategoryRepository  4 F
>  F G
(  G H
)  H I
;  I J
services!! 
.!! 
	AddScoped!! 
<!! 
IProductRepository!! 1
,!!1 2
ProductRepository!!3 D
>!!D E
(!!E F
)!!F G
;!!G H
services"" 
."" 
	AddScoped"" 
<"" 
ShoppingCart"" +
>""+ ,
("", -
sc""- /
=>""0 2
ShoppingCart""3 ?
.""? @
GetCart""@ G
(""G H
sc""H J
)""J K
)""K L
;""L M
services## 
.## 
	AddScoped## 
<## 
IOrderRepository## /
,##/ 0
OrderRepository##1 @
>##@ A
(##A B
)##B C
;##C D
services$$ 
.$$ 
AddDbContext$$ !
<$$! "
AppDbContext$$" .
>$$. /
($$/ 0
options$$0 7
=>$$8 :
{%% 
options&& 
.&& 
UseSqlServer&& $
(&&$ %
Configuration&&% 2
.&&2 3
GetConnectionString&&3 F
(&&F G
$str&&G Z
)&&Z [
)&&[ \
;&&\ ]
}'' 
)'' 
;'' 
services(( 
.(( 
AddDefaultIdentity(( '
<((' (
IdentityUser((( 4
>((4 5
(((5 6
)((6 7
.((7 8$
AddEntityFrameworkStores((8 P
<((P Q
AppDbContext((Q ]
>((] ^
(((^ _
)((_ `
;((` a
services)) 
.)) "
AddHttpContextAccessor)) +
())+ ,
))), -
;))- .
services** 
.** 

AddSession** 
(**  
)**  !
;**! "
services++ 
.++ 
AddRazorPages++ "
(++" #
)++# $
;++$ %
},, 	
public// 
void// 
	Configure// 
(// 
IApplicationBuilder// 1
app//2 5
,//5 6
IWebHostEnvironment//7 J
env//K N
)//N O
{00 	
if11 
(11 
env11 
.11 
IsDevelopment11 !
(11! "
)11" #
)11# $
{22 
app33 
.33 %
UseDeveloperExceptionPage33 -
(33- .
)33. /
;33/ 0
}44 
app66 
.66 
UseHttpsRedirection66 #
(66# $
)66$ %
;66% &
app88 
.88 
UseStaticFiles88 
(88 
)88  
;88  !
app:: 
.:: 

UseSession:: 
(:: 
):: 
;:: 
app<< 
.<< 

UseRouting<< 
(<< 
)<< 
;<< 
app== 
.== 
UseAuthentication== !
(==! "
)==" #
;==# $
app>> 
.>> 
UseAuthorization>>  
(>>  !
)>>! "
;>>" #
app?? 
.?? 
UseEndpoints?? 
(?? 
	endpoints?? &
=>??' )
{@@ 
	endpointsAA 
.AA 
MapControllerRouteAA ,
(AA, -
nameBB 
:BB 
$strBB "
,BB" #
patternCC 
:CC 
$strCC E
)CCE F
;CCF G
	endpointsDD 
.DD 
MapRazorPagesDD '
(DD' (
)DD( )
;DD) *
}EE 
)EE 
;EE 
}HH 	
}II 
}JJ ò
^E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\TagHelpers\EmailTagHelper.cs
	namespace 	
	FreshMart
 
. 

TagHelpers 
{ 
public 

class 
EmailTagHelper 
:  !
	TagHelper" +
{ 
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
LinkText		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
override 
void 
Process $
($ %
TagHelperContext% 5
context6 =
,= >
TagHelperOutput? N
outputO U
)U V
{ 	
base 
. 
Process 
( 
context  
,  !
output" (
)( )
;) *
output 
. 
TagName 
= 
$str  
;  !
output 
. 

Attributes 
. 
SetAttribute *
(* +
$str+ 1
,1 2
$str3 <
+= >
Address? F
)F G
;G H
output 
. 
Content 
. 

SetContent %
(% &
LinkText& .
). /
;/ 0
} 	
} 
} Ü
]E:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\ViewModels\HomeViewModel.cs
	namespace 	
	FreshMart
 
. 

ViewModels 
{ 
public 

class 
HomeViewModel 
{ 
public 
IEnumerable 
< 
Products #
># $
ProductOnSale% 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
}		 µ
dE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\ViewModels\ProductListViewModel.cs
	namespace 	
	FreshMart
 
. 

ViewModels 
{ 
public 

class  
ProductListViewModel %
{ 
public 
IEnumerable 
< 
Products #
># $
productslst% 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
string 
CurrentCategory %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
}

 
} à
eE:\GreatLearning\EntityFramework\WEBAPI\DBFirstApproach\FreshMart\ViewModels\ShoppingCartViewModel.cs
	namespace 	
	FreshMart
 
. 

ViewModels 
{ 
public 

class !
ShoppingCartViewModel &
{ 
public 
ShoppingCart 
ShoppingCart (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
decimal 
ShoppingCartTotal (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
}		 