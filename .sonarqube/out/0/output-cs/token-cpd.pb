�
KC:\Projects\SecurityDemo-8.3\SecurityDemo-8.3\Controllers\HomeController.cs
	namespace 	
SecurityDemo83
 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public		 

Index		 "
(		" #
string		# )
page		* .
)		. /
{

 	
Article 
data 
; 
using 
( 
var 
rd 
= 

() *
$str* \
+] ^
page_ c
+d e
$strf v
)v w
)w x
{
if 
( 
rd 
. 
Read 
( 
) 
) 
{ 
data 
= 
new 
Article &
(& '
rd' )
.) *
	GetString* 3
(3 4
$num4 5
)5 6
,6 7
rd8 :
.: ;
	GetString; D
(D E
$numE F
)F G
)G H
;H I
} 
else 
{ 
data 
= 
new 
Article &
(& '
$str' .
,. /
$str0 7
+8 9
page: >
+? @
$strA N
)N O
;O P
} 
} 
return 
View 
( 
data 
) 
; 
} 	
private 


(+ ,
string, 2
command3 :
): ;
{ 	
var 
conn 
= 
new 

(( )
System) /
./ 0

.= > 
ConfigurationManager> R
.R S
ConnectionStringsS d
[d e
$stre n
]n o
.o p
ConnectionString	p �
)
� �
;
� �
using 
( 
var 
cmd 
= 
new  

SqlCommand! +
(+ ,
command, 3
,3 4
conn5 9
)9 :
): ;
{ 
conn 
. 
Open 
( 
) 
; 
return   
cmd   
.   

(  ( )
System  ) /
.  / 0
Data  0 4
.  4 5
CommandBehavior  5 D
.  D E
CloseConnection  E T
)  T U
;  U V
}!! 
}"" 	
}## 
}$$ �
>C:\Projects\SecurityDemo-8.3\SecurityDemo-8.3\Model\Article.cs
	namespace 	
SecurityDemo83
 
. 
Models 
{ 
public 

class 
Article 
{ 
public 
string 
Title 
, 
Text !
;! "
public 
Article 
( 
string 
title #
,# $
string% +
text, 0
)0 1
{		 	
Title

 
=

 
title

 
;

 
Text 
= 
text 
; 
} 	
}
} �
8C:\Projects\SecurityDemo-8.3\SecurityDemo-8.3\Program.cs
	namespace 	
SecurityDemo83
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	 
CreateWebHostBuilder

  
(

  !
args

! %
)

% &
.

& '
Build

' ,
(

, -
)

- .
.

. /
Run

/ 2
(

2 3
)

3 4
;

4 5
} 	
public
static
IWebHostBuilder
CreateWebHostBuilder
(
string
[
]
args
)
=>
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} �
8C:\Projects\SecurityDemo-8.3\SecurityDemo-8.3\Startup.cs
	namespace 	
SecurityDemo83
 
{		 
public

 

class

 
Startup

 
{ 
public 
Startup 
( 
IConfiguration %

)3 4
{

= 

;) *
} 	
public 
IConfiguration 

{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
	Configure 
< 
CookiePolicyOptions 2
>2 3
(3 4
options4 ;
=>< >
{ 
options 
. 
CheckConsentNeeded *
=+ ,
context- 4
=>5 7
true8 <
;< =
options 
. !
MinimumSameSitePolicy -
=. /
SameSiteMode0 <
.< =
None= A
;A B
} 
)
; 
services 
. 
AddMvc 
( 
) 
. #
SetCompatibilityVersion 5
(5 6 
CompatibilityVersion6 J
.J K
Version_2_1K V
)V W
;W X
} 	
public"" 
void"" 
	Configure"" 
("" 
IApplicationBuilder"" 1
app""2 5
,""5 6
IHostingEnvironment""7 J
env""K N
)""N O
{## 	
if$$ 
($$ 
env$$ 
.$$ 

($$! "
)$$" #
)$$# $
{%% 
app&& 
.&& %
UseDeveloperExceptionPage&& -
(&&- .
)&&. /
;&&/ 0
}'' 
else(( 
{)) 
app** 
.** 
UseExceptionHandler** '
(**' (
$str**( 5
)**5 6
;**6 7
app++ 
.++ 
UseHsts++ 
(++ 
)++ 
;++ 
},, 
app.. 
... 
UseHttpsRedirection.. #
(..# $
)..$ %
;..% &
app// 
.// 
UseStaticFiles// 
(// 
)//  
;//  !
app00 
.00 
UseCookiePolicy00 
(00  
)00  !
;00! "
app11 
.11 
UseMvc11 
(11 
routes11 
=>11  
{22 
routes33 
.33 
MapRoute33 
(33  
name44 
:44 
$str44 #
,44# $
template55 
:55 
$str55 F
)55F G
;55G H
}66 
)66
;66 
}77 	
}88 
}99 