<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>MainPage</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-1000px.css">
<link rel="stylesheet" href="css/style-desktop.css">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<script>
/*Jssor*/
(function(f,h,b,i,c,e,j){/*! Jssor */
new(function(){});var d={v:function(a){return a},u:function(a){return-b.cos(a*b.PI)/2+.5},nb:function(a){return-a*(a-2)},n:function(a){return a*a*a},m:function(a){return a==0?0:b.pow(2,10*(a-1))}},n={dd:function(a){return a&3},ed:function(a){return a&12}},o={Ce:37,ve:39},a=new function(){var g=this,nb=1,cb=2,hb=3,gb=4,lb=5,x=0,m=0,s=0,Y=0,D=0,qb=navigator.appName,k=navigator.userAgent,p=h.documentElement,B;function w(i){if(!x)if(qb=="Microsoft Internet Explorer"&&!!f.attachEvent&&!!f.ActiveXObject){var d=k.indexOf("MSIE");x=nb;s=n(k.substring(d+5,k.indexOf(";",d)));/*@cc_on Y=@_jscript_version@*/;m=h.documentMode||s}else if(qb=="Netscape"&&!!f.addEventListener){var c=k.indexOf("Firefox"),a=k.indexOf("Safari"),g=k.indexOf("Chrome"),b=k.indexOf("AppleWebKit");if(c>=0){x=cb;m=n(k.substring(c+8))}else if(a>=0){var j=k.substring(0,a).lastIndexOf("/");x=g>=0?gb:hb;m=n(k.substring(j+1,a))}if(b>=0)D=n(k.substring(b+12))}else{var e=/(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(k);if(e){x=lb;m=n(e[2])}}return i==x}function r(){return w(nb)}function M(){return r()&&(m<6||h.compatMode=="BackCompat")}function fb(){return w(hb)}function eb(){return w(gb)}function kb(){return w(lb)}function Z(){return fb()&&D>534&&D<535}function A(){return r()&&m<9}function t(a){if(!B){l(["transform","WebkitTransform","msTransform","MozTransform","OTransform"],function(b){if(a.style[b]!=j){B=b;return c}});B=B||"transform"}return B}function pb(a){return Object.prototype.toString.call(a)}var I;function l(a,d){if(pb(a)=="[object Array]"){for(var b=0;b<a.length;b++)if(d(a[b],b,a))return c}else for(var e in a)if(d(a[e],e,a))return c}function wb(){if(!I){I={};l(["Boolean","Number","String","Function","Array","Date","RegExp","Object"],function(a){I["[object "+a+"]"]=a.toLowerCase()})}return I}function z(a){return a==i?String(a):wb()[pb(a)]||"object"}function y(a,b){return{x:a,y:b}}function rb(b,a){setTimeout(b,a||0)}function G(b,d,c){var a=!b||b=="inherit"?"":b;l(d,function(c){var b=c.exec(a);if(b){var d=a.substr(0,b.index),e=a.substr(b.lastIndex+1,a.length-(b.lastIndex+1));a=d+e}});a=c+(a.indexOf(" ")!=0?" ":"")+a;return a}function bb(b,a){if(m<9)b.style.filter=a}function tb(b,a,c){if(Y<9){var e=b.style.filter,h=new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g),f=a?"progid:DXImageTransform.Microsoft.Matrix(M11="+a[0][0]+", M12="+a[0][1]+", M21="+a[1][0]+", M22="+a[1][1]+", SizingMethod='auto expand')":"",d=G(e,[h],f);bb(b,d);g.Qc(b,c.y);g.Rc(b,c.x)}}g.Hb=r;g.ae=fb;g.Ac=eb;g.pd=kb;g.fb=A;g.N=function(){return m};g.ce=function(){return s||m};g.wc=function(){w();return D};g.M=rb;function T(a){a.constructor===T.caller&&a.sd&&a.sd.apply(a,T.caller.arguments)}g.sd=T;g.vb=function(a){if(g.be(a))a=h.getElementById(a);return a};function u(a){return a||f.event}g.Vd=function(a){a=u(a);return a.target||a.srcElement||h};g.rd=function(a){a=u(a);var b=h.body;return{x:a.pageX||a.clientX+(p.scrollLeft||b.scrollLeft||0)-(p.clientLeft||b.clientLeft||0)||0,y:a.pageY||a.clientY+(p.scrollTop||b.scrollTop||0)-(p.clientTop||b.clientTop||0)||0}};g.Xd=function(){var a=h.body;return{x:a.clientWidth||p.clientWidth,y:a.clientHeight||p.clientHeight}};function E(c,d,a){if(a!=j)c.style[d]=a;else{var b=c.currentStyle||c.style;a=b[d];if(a==""&&f.getComputedStyle){b=c.ownerDocument.defaultView.getComputedStyle(c,i);b&&(a=b.getPropertyValue(d)||b[d])}return a}}function V(b,c,a,d){if(a!=j){d&&(a+="px");E(b,c,a)}else return n(E(b,c))}function o(d,a){var b=a&2,c=a?V:E;return function(e,a){return c(e,d,a,b)}}function ub(b){if(r()&&s<9){var a=/opacity=([^)]*)/.exec(b.style.filter||"");return a?n(a[1])/100:1}else return n(b.style.opacity||"1")}function vb(c,a,f){if(r()&&s<9){var h=c.style.filter||"",i=new RegExp(/[\s]*alpha\([^\)]*\)/g),e=b.round(100*a),d="";if(e<100||f)d="alpha(opacity="+e+") ";var g=G(h,[i],d);bb(c,g)}else c.style.opacity=a==1?"":b.round(a*100)/100}function X(e,a){var d=a.b||0,c=a.L==j?1:a.L;if(A()){var l=g.Wd(d/180*b.PI,c,c);tb(e,!d&&c==1?i:l,g.je(l,a.Z,a.X))}else{var h=t(e);if(h){var k="rotate("+d%360+"deg) scale("+c+")";if(eb()&&D>535&&"ontouchstart"in f)k+=" perspective(2000px)";e.style[h]=k}}}g.ie=function(b,a){if(Z())rb(g.cb(i,X,b,a));else X(b,a)};g.le=function(b,c){var a=t(b);if(a)b.style[a+"Origin"]=c};g.ke=function(a,c){if(r()&&s<9||s<10&&M())a.style.zoom=c==1?"":c;else{var b=t(a);if(b){var f="scale("+c+")",e=a.style[b],g=new RegExp(/[\s]*scale\(.*?\)/g),d=G(e,[g],f);a.style[b]=d}}};g.he=function(a){if(!a.style[t(a)]||a.style[t(a)]=="none")a.style[t(a)]="perspective(2000px)"};g.ee=function(a){a.style[t(a)]="none"};var jb=0,db=0;g.de=function(b,a){return A()?function(){var h=c,d=M()?b.document.body:b.document.documentElement;if(d){var g=d.offsetWidth-jb,f=d.offsetHeight-db;if(g||f){jb+=g;db+=f}else h=e}h&&a()}:a};g.Ub=function(b,a){return function(c){c=u(c);var e=c.type,d=c.relatedTarget||(e=="mouseout"?c.toElement:c.fromElement);(!d||d!==a&&!g.ge(a,d))&&b(c)}};g.j=function(a,c,d,b){a=g.vb(a);if(a.addEventListener){c=="mousewheel"&&a.addEventListener("DOMMouseScroll",d,b);a.addEventListener(c,d,b)}else if(a.attachEvent){a.attachEvent("on"+c,d);b&&a.setCapture&&a.setCapture()}};g.Pb=function(a,c,d,b){a=g.vb(a);if(a.removeEventListener){c=="mousewheel"&&a.removeEventListener("DOMMouseScroll",d,b);a.removeEventListener(c,d,b)}else if(a.detachEvent){a.detachEvent("on"+c,d);b&&a.releaseCapture&&a.releaseCapture()}};g.Ue=function(b,a){g.j(A()?h:f,"mouseup",b,a)};g.db=function(a){a=u(a);a.preventDefault&&a.preventDefault();a.cancel=c;a.returnValue=e};g.cb=function(d,c){var a=[].slice.call(arguments,2),b=function(){var b=a.concat([].slice.call(arguments,0));return c.apply(d,b)};return b};g.ab=function(c){for(var b=[],a=c.firstChild;a;a=a.nextSibling)a.nodeType==1&&b.push(a);return b};function ob(a,c,e,b){b=b||"u";for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){if(Q(a,b)==c)return a;if(!e){var d=ob(a,c,e,b);if(d)return d}}}g.z=ob;function O(a,d,f,b){b=b||"u";var c=[];for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){Q(a,b)==d&&c.push(a);if(!f){var e=O(a,d,f,b);if(e.length)c=c.concat(e)}}return c}function ib(a,c,d){for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){if(a.tagName==c)return a;if(!d){var b=ib(a,c,d);if(b)return b}}}g.jf=ib;function ab(a,c,e){var b=[];for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){(!c||a.tagName==c)&&b.push(a);if(!e){var d=ab(a,c,e);if(d.length)b=b.concat(d)}}return b}g.df=ab;g.gf=function(b,a){return b.getElementsByTagName(a)};function U(c){for(var b=1;b<arguments.length;b++){var a=arguments[b];if(a)for(var d in a)c[d]=a[d]}return c}g.t=U;g.Hc=function(a){return z(a)=="function"};g.be=function(a){return z(a)=="string"};g.Jc=function(a){return!isNaN(n(a))&&isFinite(a)};g.g=l;function N(a){return h.createElement(a)}g.gb=function(){return N("DIV",h)};g.zc=function(){};function R(b,c,a){if(a==j)return b.getAttribute(c);b.setAttribute(c,a)}function Q(a,b){return R(a,b)||R(a,"data-"+b)}g.U=Q;function q(b,a){if(a==j)return b.className;b.className=a}g.Fc=q;g.K=function(a){g.T(a,"none")};g.B=function(a,b){g.T(a,b?"none":"")};g.Ic=function(b,a){b.removeAttribute(a)};g.Re=function(){return r()&&m<10};g.Ne=function(d,c){if(c)d.style.clip="rect("+b.round(c.e)+"px "+b.round(c.p)+"px "+b.round(c.q)+"px "+b.round(c.d)+"px)";else{var g=d.style.cssText,f=[new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i),new RegExp(/[\s]*cliptop: .*?[;]?/i),new RegExp(/[\s]*clipright: .*?[;]?/i),new RegExp(/[\s]*clipbottom: .*?[;]?/i),new RegExp(/[\s]*clipleft: .*?[;]?/i)],e=G(g,f,"");a.Ob(d,e)}};g.Q=function(){return+new Date};g.H=function(b,a){b.appendChild(a)};g.Qb=function(b,a,c){(c||a.parentNode).insertBefore(b,a)};g.Sb=function(a,b){(b||a.parentNode).removeChild(a)};g.Me=function(a,b){l(a,function(a){g.Sb(a,b)})};g.kd=function(a){g.Me(g.ab(a),a)};var n=parseFloat;g.Se=n;g.ge=function(b,a){var c=h.body;while(a&&b!==a&&c!==a)try{a=a.parentNode}catch(d){return e}return b===a};function S(d,c,b){var a=d.cloneNode(!c);!b&&g.Ic(a,"id");return a}g.O=S;function L(a){if(a){var b=a.sf;if(b&1)a.x=a.Te||1;if(b&2)a.x=-a.Te||-1;if(b&4)a.y=a.Qe||1;if(b&8)a.y=-a.Qe||-1;if(a.b==c)a.b=1;L(a.Nb)}}g.Ec=function(a){if(a){for(var b=0;b<a.length;b++)L(a[b]);for(var c in a)L(a[c])}};g.wb=function(e,f){var a=new Image;function b(e,c){g.Pb(a,"load",b);g.Pb(a,"abort",d);g.Pb(a,"error",d);f&&f(a,c)}function d(a){b(a,c)}if(kb()&&m<11.6||!e)b(!e);else{g.j(a,"load",b);g.j(a,"abort",d);g.j(a,"error",d);a.src=e}};g.Ge=function(d,a,e){var c=d.length+1;function b(b){c--;if(a&&b&&b.src==a.src)a=b;!c&&e&&e(a)}l(d,function(a){g.wb(a.src,b)});b()};g.Ve=function(b,g,i,h){if(h)b=S(b);var c=O(b,g);if(!c.length)c=a.gf(b,g);for(var f=c.length-1;f>-1;f--){var d=c[f],e=S(i);q(e,q(d));a.Ob(e,d.style.cssText);a.Qb(e,d);a.Sb(d)}return b};var C;function yb(b){var i=this,m,k,f,d;function h(){var a=m;if(d)a+="ds";else if(k)a+="dn";else if(f==2)a+="pv";else if(f)a+="av";q(b,a)}function n(a){if(d)g.db(a);else{C.push(i);k=c;h()}}i.Td=function(){k=e;h()};i.wd=function(a){if(a!=j){f=a;h()}else return f};i.Dc=function(a){if(a!=j){d=!a;h()}else return!d};b=g.vb(b);if(!C){g.Ue(function(){var a=C;C=[];l(a,function(a){a.Td()})});C=[]}m=q(b);a.j(b,"mousedown",n)}g.cc=function(a){return new yb(a)};g.qb=E;g.kb=o("overflow");g.C=o("top",2);g.D=o("left",2);g.r=o("width",2);g.s=o("height",2);g.Rc=o("marginLeft",2);g.Qc=o("marginTop",2);g.F=o("position");g.T=o("display");g.R=o("zIndex",1);g.ub=function(b,a,c){if(a!=j)vb(b,a,c);else return ub(b)};g.Ob=function(a,b){if(b!=j)a.style.cssText=b;else return a.style.cssText};var P={c:g.ub,e:g.C,d:g.D,eb:g.r,hb:g.s,rb:g.F,rf:g.T,Y:g.R},v;function H(){if(!v)v=U({pf:g.Qc,qf:g.Rc,f:g.Ne,Wb:g.ie},P);return v}function mb(){H();v.Wb=v.Wb;return v}g.Jd=H;g.J=function(c,b){var a=H();l(b,function(d,b){a[b]&&a[b](c,d)})};g.Id=function(b,a){mb();g.J(b,a)};var F=new function(){var a=this;function b(d,g){for(var j=d[0].length,i=d.length,h=g[0].length,f=[],c=0;c<i;c++)for(var k=f[c]=[],b=0;b<h;b++){for(var e=0,a=0;a<j;a++)e+=d[c][a]*g[a][b];k[b]=e}return f}a.Kb=function(d,c){var a=b(d,[[c.x],[c.y]]);return y(a[0][0],a[1][0])}};g.Wd=function(d,a,c){var e=b.cos(d),f=b.sin(d);return[[e*a,-f*c],[f*a,e*c]]};g.je=function(d,c,a){var e=F.Kb(d,y(-c/2,-a/2)),f=F.Kb(d,y(c/2,-a/2)),g=F.Kb(d,y(c/2,a/2)),h=F.Kb(d,y(-c/2,a/2));return y(b.min(e.x,f.x,g.x,h.x)+c/2,b.min(e.y,f.y,g.y,h.y)+a/2)};g.hd=function(l,g,t,r,u,w,j){var c=g;if(l){c={};for(var f in g){var x=w[f]||1,s=u[f]||[0,1],e=(t-s[0])/s[1];e=b.min(b.max(e,0),1);e=e*x;var p=b.floor(e);if(e!=p)e-=p;var v=r[f]||r.Xb||d.u,q=v(e),h,y=l[f];g[f];var m=g[f];if(a.Jc(m))h=y+m*q;else{h=a.t({yb:{}},l[f]);a.g(m.yb,function(c,b){var a=c*q;h.yb[b]=a;h[b]+=a})}c[f]=h}if(g.a||g.b)c.Wb={b:c.b||0,L:c.a,Z:j.Z,X:j.X}}if(g.f&&j.pb){var k=c.f.yb,o=(k.e||0)+(k.q||0),n=(k.d||0)+(k.p||0);c.d=(c.d||0)+n;c.e=(c.e||0)+o;c.f.d-=n;c.f.p-=n;c.f.e-=o;c.f.q-=o}if(c.f&&a.Re()&&!c.f.e&&!c.f.d&&c.f.p==j.Z&&c.f.q==j.X)c.f=i;return c}};function l(){var b=this,d=[];function i(a,b){d.push({Zb:a,dc:b})}function h(b,c){a.g(d,function(a,e){a.Zb==b&&a.dc===c&&d.splice(e,1)})}b.mb=b.addEventListener=i;b.removeEventListener=h;b.k=function(b){var c=[].slice.call(arguments,1);a.g(d,function(a){a.Zb==b&&a.dc.apply(f,c)})}}function k(n,z,j,R,P,K){n=n||0;var g=this,r,o,p,x,A=0,I,J,H,C,E=0,l=0,u=0,D,m=n,k,h,q,y=[],B;function M(a){k+=a;h+=a;m+=a;l+=a;u+=a;E=a}function Q(a,b){var c=a-k+n*b;M(c);return h}function w(f,n){var d=f;if(q&&(d>=h||d<=k))d=((d-k)%q+q)%q+k;if(!D||x||n||l!=d){var e=b.min(d,h);e=b.max(e,k);if(!D||x||n||e!=u){if(K){var i=(e-m)/(z||1);if(j.uc)i=1-i;var o=a.hd(P,K,i,I,H,J,j);a.g(o,function(b,a){B[a]&&B[a](R,b)})}g.vc(u-m,e-m)}u=e;a.g(y,function(b,c){var a=f<l?y[y.length-c-1]:b;a.S(f-E,n)});var r=l,p=f;l=d;D=c;g.Db(r,p)}}function F(a,c,d){c&&a.nd(h,1);!d&&(h=b.max(h,a.tb()+E));y.push(a)}var s=f.requestAnimationFrame||f.webkitRequestAnimationFrame||f.mozRequestAnimationFrame||f.msRequestAnimationFrame;if(a.ae()&&a.N()<7)s=i;s=s||function(b){a.M(b,j.V)};function L(){if(r){var d=a.Q(),e=b.min(d-A,j.fd),c=l+e*p;A=d;if(c*p>=o*p)c=o;w(c);if(!x&&c*p>=o*p)N(C);else s(L)}}function v(d,e,f){if(!r){r=c;x=f;C=e;d=b.max(d,k);d=b.min(d,h);o=d;p=o<l?-1:1;g.Uc();A=a.Q();s(L)}}function N(a){if(r){x=r=C=e;g.Lc();a&&a()}}g.Nc=function(a,b,c){v(a?l+a:h,b,c)};g.od=v;g.ib=N;g.Rd=function(a){v(a)};g.P=function(){return l};g.bd=function(){return o};g.zb=function(){return u};g.S=w;g.ad=function(){w(k,c)};g.pb=function(a){w(l+a)};g.cd=function(){return r};g.Od=function(a){q=a};g.nd=Q;g.yc=M;g.ec=function(a){F(a,0)};g.nc=function(a){F(a,1)};g.tb=function(){return h};g.Db=g.Uc=g.Lc=g.vc=a.zc;g.lc=a.Q();j=a.t({V:16,fd:50},j);q=j.Vc;B=a.t({},a.Jd(),j.tc);k=m=n;h=n+z;J=j.o||{};H=j.W||{};I=a.t({Xb:a.Hc(j.i)&&j.i||d.u},j.i)}var p=new function(){var h=this;function g(b,a,c){c.push(a);b[a]=b[a]||[];b[a].push(c)}h.xd=function(d){for(var e=[],a,c=0;c<d.jb;c++)for(a=0;a<d.A;a++)g(e,b.ceil(1e5*b.random())%13,[c,a]);return e}},s=function(o,t,r,u,w){var g=this,v,h,f,z=0,y=u.ff,s,j=8;function m(h,g){var f={V:g,l:1,M:0,A:1,jb:1,c:0,a:0,f:0,pb:e,E:e,uc:e,Ad:p.xd,I:{lb:0,jd:0},i:d.u,o:{},Eb:[],W:{}};a.t(f,h);if(a.Hc(f.i))f.i={Xb:f.i};f.ud=b.ceil(f.l/f.V);f.yd=function(b,a){b/=f.A;a/=f.jb;var e=b+"x"+a;if(!f.Eb[e]){f.Eb[e]={eb:b,hb:a};for(var c=0;c<f.A;c++)for(var d=0;d<f.jb;d++)f.Eb[e][d+","+c]={e:d*a,p:c*b+b,q:d*a+a,d:c*b}}return f.Eb[e]};if(f.Nb){f.Nb=m(f.Nb,g);f.E=c}return f}function q(C,i,d,x,o,l){var A=this,u,v={},j={},m=[],g,f,s,q=d.I.lb||0,r=d.I.jd||0,h=d.yd(o,l),p=D(d),E=p.length-1,t=d.l+d.M*E,y=x+t,k=d.E,z;y+=50;function D(a){var b=a.Ad(a);return a.uc?b.reverse():b}A.Oc=y;A.Cb=function(c){c-=x;var e=c<t;if(e||z){z=e;if(!k)c=t-c;var f=b.ceil(c/d.V);a.g(j,function(c,e){var d=b.max(f,c.zd);d=b.min(d,c.length-1);if(c.Wc!=d){if(!c.Wc&&!k)a.B(m[e]);else d==c.vd&&k&&a.K(m[e]);c.Wc=d;a.Id(m[e],c[d])}})}};function w(b){a.ee(b);var c=a.ab(b);a.g(c,function(a){w(a)})}i=a.O(i);w(i);if(a.fb()){var F=!i["no-image"],B=a.df(i);a.g(B,function(b){(F||b["jssor-slider"])&&a.ub(b,a.ub(b),c)})}a.g(p,function(i,m){a.g(i,function(H){var L=H[0],K=H[1],w=L+","+K,p=e,t=e,y=e;if(q&&K%2){if(n.dd(q))p=!p;if(n.ed(q))t=!t;if(q&16)y=!y}if(r&&L%2){if(n.dd(r))p=!p;if(n.ed(r))t=!t;if(r&16)y=!y}d.e=d.e||d.f&4;d.q=d.q||d.f&8;d.d=d.d||d.f&1;d.p=d.p||d.f&2;var D=t?d.q:d.e,A=t?d.e:d.q,C=p?d.p:d.d,B=p?d.d:d.p;d.f=D||A||C||B;s={};f={e:0,d:0,c:1,eb:o,hb:l};g=a.t({},f);u=a.t({},h[w]);if(d.c)f.c=2-d.c;if(d.Y){f.Y=d.Y;g.Y=0}var J=d.A*d.jb>1||d.f;if(d.a||d.b){var I=c;if(a.Hb()&&a.ce()<9)if(d.A*d.jb>1)I=e;else J=e;if(I){f.a=d.a?d.a-1:1;g.a=1;if(a.fb()||a.pd())f.a=b.min(f.a,2);var O=d.b;f.b=O*360*(y?-1:1);g.b=0}}if(J){if(d.f){var x=d.of||1,i=u.yb={};if(D&&A){i.e=h.hb/2*x;i.q=-i.e}else if(D)i.q=-h.hb*x;else if(A)i.e=h.hb*x;if(C&&B){i.d=h.eb/2*x;i.p=-i.d}else if(C)i.p=-h.eb*x;else if(B)i.d=h.eb*x}s.f=u;g.f=h[w]}var M=p?1:-1,N=t?1:-1;if(d.x)f.d+=o*d.x*M;if(d.y)f.e+=l*d.y*N;a.g(f,function(b,c){if(a.Jc(b))if(b!=g[c])s[c]=b-g[c]});v[w]=k?g:f;var E=d.ud,z=b.round(m*d.M/d.V);j[w]=new Array(z);j[w].zd=z;j[w].vd=z+E-1;for(var G=0;G<=E;G++){var F=a.hd(g,s,G/E,d.i,d.W,d.o,{pb:d.pb,Z:o,X:l});F.Y=F.Y||1;j[w].push(F)}})});p.reverse();a.g(p,function(b){a.g(b,function(c){var f=c[0],e=c[1],d=f+","+e,b=i;if(e||f)b=a.O(i);a.J(b,v[d]);a.kb(b,"hidden");a.F(b,"absolute");C.Nd(b);m[d]=b;a.B(b,!k)})})}function x(){var a=this,b=0;k.call(a,0,v);a.Db=function(c,a){if(a-b>j){b=a;f&&f.Cb(a);h&&h.Cb(a)}};a.mc=s}g.Ld=function(){var a=0,c=u.qc,d=c.length;if(y)a=z++%d;else a=b.floor(b.random()*d);c[a]&&(c[a].bb=a);return c[a]};g.Md=function(w,x,i,k,a){s=a;a=m(a,j);var e=k.Pc,d=i.Pc;e["no-image"]=!k.Lb;d["no-image"]=!i.Lb;var l=e,n=d,u=a,c=a.Nb||m({},j);if(!a.E){l=d;n=e}var p=c.yc||0;h=new q(o,n,c,b.max(p-c.V,0),t,r);f=new q(o,l,u,b.max(c.V-p,0),t,r);h.Cb(0);f.Cb(0);v=b.max(h.Oc,f.Oc);g.bb=w};g.xb=function(){o.xb();h=i;f=i};g.Ed=function(){var a=i;if(f)a=new x;return a};if(a.fb()||a.pd()||w&&a.wc()<537)j=16;l.call(g);k.call(g,-1e7,1e7)},g=function(q,kc){var n=this;function Hc(){var a=this;k.call(a,-1e8,2e8);a.Fd=function(){var c=a.zb(),d=b.floor(c),f=u(d),e=c-b.floor(c);return{bb:f,Cd:d,rb:e}};a.Db=function(d,a){var e=b.floor(a);if(e!=a&&a>d)e++;Yb(e,c);n.k(g.Dd,u(a),u(d),a,d)}}function Gc(){var b=this;k.call(b,0,0,{Vc:t});a.g(C,function(a){E&1&&a.Od(t);b.nc(a);a.yc(mb/fc)})}function Fc(){var a=this,b=Xb.Ab;k.call(a,-1,2,{i:d.v,tc:{rb:dc},Vc:t},b,{rb:1},{rb:-2});a.Ib=b}function tc(m,l){var a=this,d,f,h,j,b;k.call(a,-1e8,2e8,{fd:100});a.Uc=function(){S=c;Y=i;n.k(g.Sd,u(y.P()),y.P())};a.Lc=function(){S=e;j=e;var a=y.Fd();n.k(g.Hd,u(y.P()),y.P());!a.rb&&Jc(a.Cd,s)};a.Db=function(g,e){var a;if(j)a=b;else{a=f;if(h){var c=e/h;a=p.Kd(c)*(f-d)+d}}y.S(a)};a.Gb=function(b,e,c,g){d=b;f=e;h=c;y.S(b);a.S(0);a.od(c,g)};a.Qd=function(d){j=c;b=d;a.Nc(d,i,c)};a.Pd=function(a){b=a};y=new Hc;y.ec(m);y.ec(l)}function uc(){var c=this,b=cc();a.R(b,0);a.qb(b,"pointerEvents","none");c.Ab=b;c.Nd=function(c){a.H(b,c);a.B(b)};c.xb=function(){a.K(b);a.kd(b)}}function Dc(o,h){var d=this,r,x,I,y,j,B=[],G,q,S,H,P,F,f,w,m;k.call(d,-v,v+1,{});function E(a){x&&x.Fb();r&&r.Fb();R(o,a);F=c;r=new K.G(o,K,1);x=new K.G(o,K);x.ad();r.ad()}function Z(){r.lc<K.lc&&E()}function J(o,r,m){if(!H){H=c;if(j&&m){var f=m.width,b=m.height,l=f,k=b;if(f&&b&&p.Bb){if(p.Bb&3&&(!(p.Bb&4)||f>N||b>M)){var i=e,q=N/M*b/f;if(p.Bb&1)i=q>1;else if(p.Bb&2)i=q<1;l=i?f*M/b:N;k=i?M:b*N/f}a.r(j,l);a.s(j,k);a.C(j,(M-k)/2);a.D(j,(N-l)/2)}a.F(j,"absolute");n.k(g.Pe,h)}}a.K(r);o&&o(d)}function W(b,c,e,f){if(f==Y&&s==h&&T)if(!Ic){var a=u(b);A.Md(a,h,c,d,e);c.He();fb.nd(a,1);fb.S(a);z.Gb(b,b,0)}}function ab(b){if(b==Y&&s==h){if(!f){var a=i;if(A)if(A.bb==h)a=A.Ed();else A.xb();Z();f=new Bc(o,h,a,d.Oe(),d.Le());f.Bc(m)}!f.cd()&&f.fc()}}function Q(e,c,g){if(e==h){if(e!=c)C[c]&&C[c].Ee();else!g&&f&&f.Fe();m&&m.Dc();var j=Y=a.Q();d.wb(a.cb(i,ab,j))}else{var l=b.abs(h-e),k=v+p.Ke-1;(!P||l<=k)&&d.wb()}}function bb(){if(s==h&&f){f.ib();m&&m.Ie();m&&m.Je();f.Gc()}}function cb(){s==h&&f&&f.ib()}function O(b){if(V)a.db(b);else n.k(g.hf,h,b)}function L(){m=w.pInstance;f&&f.Bc(m)}d.wb=function(d,b){b=b||y;if(B.length&&!H){a.B(b);if(!S){S=c;n.k(g.cf,h);a.g(B,function(b){if(!b.src){b.src=a.U(b,"src2");a.T(b,b["display-origin"])}})}a.Ge(B,j,a.cb(i,J,d,b))}else J(d,b)};d.se=function(){if(A){var b=A.Ld(t);if(b){var e=Y=a.Q(),c=h+bc,d=C[u(c)];return d.wb(a.cb(i,W,c,d,b,e),y)}}gb(s+p.ef*bc)};d.Vb=function(){Q(h,h,c)};d.Ee=function(){m&&m.Ie();m&&m.Je();d.Kc();f&&f.Xe();f=i;E()};d.He=function(){a.K(o)};d.Kc=function(){a.B(o)};d.bf=function(){m&&m.Dc()};function R(b,f,d){if(b["jssor-slider"])return;d=d||0;if(!F){if(b.tagName=="IMG"){B.push(b);if(!b.src){P=c;b["display-origin"]=a.T(b);a.K(b)}}a.fb()&&a.R(b,(a.R(b)||0)+1);if(p.Cc&&a.wc())(!X||a.wc()<534||!kb&&!a.Ac())&&a.he(b)}var g=a.ab(b);a.g(g,function(g){var i=a.U(g,"u");if(i=="player"&&!w){w=g;if(w.pInstance)L();else a.j(w,"dataavailable",L)}if(i=="caption"){if(!a.Hb()&&!f){var h=a.O(g,e,c);a.Qb(h,g,b);a.Sb(g,b);g=h;f=c}}else if(!F&&!d&&!j){if(g.tagName=="A"){if(a.U(g,"u")=="image")j=a.jf(g,"IMG");else j=a.z(g,"image",c);if(j){G=g;a.J(G,U);q=a.O(G,c);a.j(q,"click",O);a.T(q,"block");a.J(q,U);a.ub(q,0);a.qb(q,"backgroundColor","#000")}}else if(g.tagName=="IMG"&&a.U(g,"u")=="image")j=g;if(j){j.border=0;a.J(j,U)}}R(g,f,d+1)})}d.vc=function(c,b){var a=v-b;dc(I,a)};d.Oe=function(){return r};d.Le=function(){return x};d.bb=h;l.call(d);var D=a.z(o,"thumb",c);if(D){d.Ye=a.O(D);a.Ic(D,"id");a.K(D)}a.B(o);y=a.O(jb);a.R(y,1e3);a.j(o,"click",O);E(c);d.Lb=j;d.ld=q;d.Pc=o;d.Ib=I=o;a.H(I,y);n.mb(203,Q);n.mb(28,cb);n.mb(24,bb)}function Bc(F,i,q,v,u){var b=this,l=0,x=0,m,h,d,f,j,r,w,t,o=C[i];k.call(b,0,0);function y(){a.kd(P);ic&&j&&o.ld&&a.H(P,o.ld);a.B(P,!j&&o.Lb)}function z(){if(r){r=e;n.k(g.Ze,i,d,l,h,d,f);b.S(h)}b.fc()}function D(a){t=a;b.ib();b.fc()}b.fc=function(){var a=b.zb();if(!B&&!S&&!t&&s==i){if(!a){if(m&&!j){j=c;b.Gc(c);n.k(g.We,i,l,x,m,f)}y()}var e,p=g.id;if(a!=f)if(a==d)e=f;else if(a==h)e=d;else if(!a)e=h;else if(a>d){r=c;e=d;p=g.af}else e=b.bd();n.k(p,i,a,l,h,d,f);var k=T&&(!L||H);if(a==f)(d!=f&&!(L&12)||k)&&o.se();else(k||a!=d)&&b.od(e,z)}};b.Fe=function(){d==f&&d==b.zb()&&b.S(h)};b.Xe=function(){A&&A.bb==i&&A.xb();var a=b.zb();a<f&&n.k(g.id,i,-a-1,l,h,d,f)};b.Gc=function(b){q&&a.kb(ob,b&&q.mc.nf?"":"hidden")};b.vc=function(b,a){if(j&&a>=m){j=e;y();o.Kc();A.xb();n.k(g.fe,i,l,x,m,f)}n.k(g.Ud,i,a,l,h,d,f)};b.Bc=function(a){if(a&&!w){w=a;a.mb($JssorPlayer$.Bd,D)}};q&&b.nc(q);m=b.tb();b.tb();b.nc(v);h=v.tb();d=h+(a.Se(a.U(F,"idle"))||p.td);u.yc(d);b.ec(u);f=b.tb()}function dc(e,g){var f=w>0?w:nb,c=Fb*g*(f&1),d=Gb*g*(f>>1&1);if(a.Ac()&&a.N()<38){c=c.toFixed(3);d=d.toFixed(3)}else{c=b.round(c);d=b.round(d)}if(a.Hb()&&a.N()>=10&&a.N()<11)e.style.msTransform="translate("+c+"px, "+d+"px)";else if(a.Ac()&&a.N()>=30&&a.N()<34){e.style.WebkitTransition="transform 0s";e.style.WebkitTransform="translate3d("+c+"px, "+d+"px, 0px) perspective(2000px)"}else{a.D(e,c);a.C(e,d)}}function zc(c){var b=a.Vd(c).tagName;!O&&b!="INPUT"&&b!="TEXTAREA"&&b!="SELECT"&&xc()&&yc(c)}function Tb(){vb=S;Pb=z.bd();F=y.P()}function lc(){Tb();if(B||!H&&L&12){z.ib();n.k(g.Yd)}}function jc(e){e&&Tb();if(!B&&(H||!(L&12))&&!z.cd()){var c=y.P(),a=b.ceil(F);if(e&&b.abs(G)>=p.qd){a=b.ceil(c);a+=lb}if(!(E&1))a=b.min(t-v,b.max(a,0));var d=b.abs(a-c);d=1-b.pow(1-d,5);if(!V&&vb)z.Rd(Pb);else if(c==a){yb.bf();yb.Vb()}else z.Gb(c,a,d*Zb)}}function yc(b){B=c;Eb=e;Y=i;a.j(h,tb,gc);a.Q();V=0;lc();if(!vb)w=0;if(hb){var f=b.touches[0];zb=f.clientX;Ab=f.clientY}else{var d=a.rd(b);zb=d.x;Ab=d.y;a.db(b)}G=0;ib=0;lb=0;n.k(g.Zd,u(F),F,b)}function gc(e){if(B&&(!a.fb()||e.button)){var f;if(hb){var l=e.touches;if(l&&l.length>0)f={x:l[0].clientX,y:l[0].clientY}}else f=a.rd(e);if(f){var j=f.x-zb,k=f.y-Ab;if(b.floor(F)!=F)w=w||nb&O;if((j||k)&&!w){if(O==3)if(b.abs(k)>b.abs(j))w=2;else w=1;else w=O;if(X&&w==1&&b.abs(k)-b.abs(j)>3)Eb=c}if(w){var d=k,i=Gb;if(w==1){d=j;i=Fb}if(!(E&1)){if(d>0){var g=i*s,h=d-g;if(h>0)d=g+b.sqrt(h)*5}if(d<0){var g=i*(t-v-s),h=-d-g;if(h>0)d=-g-b.sqrt(h)*5}}if(G-ib<-2)lb=0;else if(G-ib>2)lb=-1;ib=G;G=d;xb=F-G/i/(eb||1);if(G&&w&&!Eb){a.db(e);if(!S)z.Qd(xb);else z.Pd(xb)}else a.fb()&&a.db(e)}}}else Jb(e)}function Jb(d){vc();if(B){B=e;a.Q();a.Pb(h,tb,gc);V=G;V&&a.db(d);z.ib();var b=y.P();n.k(g.xe,u(b),b,u(F),F,d);jc(c)}}function sc(a){C[s];s=u(a);yb=C[s];Yb(a);return s}function Jc(a,b){w=0;sc(a);n.k(g.ye,u(a),b)}function Yb(b,c){Cb=b;a.g(R,function(a){a.xc(u(b),b,c)})}function xc(){var b=g.Sc||0,a=Q;if(X)a&1&&(a&=1);g.Sc|=a;return O=a&~b}function vc(){if(O){g.Sc&=~Q;O=0}}function cc(){var b=a.gb();a.J(b,U);a.F(b,"absolute");return b}function u(a){return(a%t+t)%t}function pc(a,c){if(c)if(!E){a=b.min(b.max(a+Cb,0),t-v);c=e}else if(E&2){a=u(a+Cb);c=e}gb(a,p.Tb,c)}function Db(){a.g(R,function(a){a.hc(a.Rb.Tc<=H)})}function nc(){if(!H){H=1;Db();if(!B){L&12&&jc();L&3&&C[s].Vb()}}}function mc(){if(H){H=0;Db();B||!(L&12)||lc()}}function oc(){U={eb:N,hb:M,e:0,d:0};a.g(Z,function(b){a.J(b,U);a.F(b,"absolute");a.kb(b,"hidden");a.K(b)});a.J(jb,U)}function rb(b,a){gb(b,a,c)}function gb(g,f,k){if(Vb&&(!B||p.Mc)){S=c;B=e;z.ib();if(f==j)f=Zb;var d=Kb.zb(),a=g;if(k){a=d+g;if(g>0)a=b.ceil(a);else a=b.floor(a)}if(E&2)a=u(a);if(!(E&1))a=b.max(0,b.min(a,t-v));var i=(a-d)%t;a=d+i;var h=d==a?0:f*b.abs(i);h=b.min(h,f*v*1.5);z.Gb(d,a,h||1)}}n.we=gb;n.Nc=function(){if(!T){T=c;C[s]&&C[s].Vb()}};n.Ae=function(){return V};function db(){return a.r(x||q)}function pb(){return a.s(x||q)}n.Z=db;n.X=pb;function Mb(c,d){if(c==j)return a.r(q);if(!x){var b=a.gb(h);a.Fc(b,a.Fc(q));a.Ob(b,a.Ob(q));a.T(b,"block");a.F(b,"relative");a.C(b,0);a.D(b,0);a.kb(b,"visible");x=a.gb(h);a.F(x,"absolute");a.C(x,0);a.D(x,0);a.r(x,a.r(q));a.s(x,a.s(q));a.le(x,"0 0");a.H(x,b);var k=a.ab(q);a.H(q,x);a.qb(q,"backgroundImage","");var i={navigator:bb&&bb.L==e,arrowleft:J&&J.L==e,arrowright:J&&J.L==e,thumbnavigator:I&&I.L==e,thumbwrapper:I&&I.L==e};a.g(k,function(c){a.H(i[a.U(c,"u")]?q:b,c)})}eb=c/(d?a.s:a.r)(x);a.ke(x,eb);var g=d?eb*db():c,f=d?c:eb*pb();a.r(q,g);a.s(q,f);a.g(R,function(a){a.gc(g,f)})}n.Be=Mb;n.Xc=function(a){var d=b.ceil(u(mb/fc)),c=u(a-s+d);if(c>v){if(a-s>t/2)a-=t;else if(a-s<=-t/2)a+=t}else a=s+c-d;return a};l.call(n);n.Ab=q=a.vb(q);var p=a.t({Bb:0,Ke:1,pc:0,oc:e,Mb:1,Cc:c,Mc:c,ef:1,td:3e3,kc:1,Tb:500,Kd:d.nb,qd:20,Zc:0,Jb:1,Yc:0,oe:1,jc:1,ic:1},kc),nb=p.jc&3,bc=(p.jc&4)/-4||1,cb=p.ze,K=a.t({G:r},p.kf);a.Ec(K.De);var bb=p.lf,J=p.pe,I=p.me,W=!p.oe,x,D=a.z(q,"slides",W),jb=a.z(q,"loading",W)||a.gb(h),Ob=a.z(q,"navigator",W),hc=a.z(q,"arrowleft",W),ec=a.z(q,"arrowright",W),Nb=a.z(q,"thumbnavigator",W),rc=a.r(D),qc=a.s(D),U,Z=[],Ac=a.ab(D);a.g(Ac,function(b){b.tagName=="DIV"&&!a.U(b,"u")&&Z.push(b)});var s=-1,Cb,yb,t=Z.length,N=p.ne||rc,M=p.qe||qc,ac=p.Zc,Fb=N+ac,Gb=M+ac,fc=nb&1?Fb:Gb,v=b.min(p.Jb,t),ob,w,O,Eb,hb,X,R=[],Ub,Wb,Sb,ic,Ic,T,L=p.kc,Zb=p.Tb,wb,kb,mb,Vb=v<t,E=Vb?p.Mb:0,Q,V,H=1,S,B,Y,zb=0,Ab=0,G,ib,lb,Kb,y,fb,z,Xb=new uc,eb;T=p.oc;n.Rb=kc;oc();q["jssor-slider"]=c;a.R(D,a.R(D)||0);a.F(D,"absolute");ob=a.O(D,c);a.Qb(ob,D);if(cb){ic=cb.te;wb=cb.G;a.Ec(cb.qc);kb=v==1&&t>1&&wb&&(!a.Hb()||a.N()>=8)}mb=kb||v>=t||!(E&1)?0:p.Yc;Q=(v>1||mb?nb:-1)&p.ic;var Bb=D,C=[],A,P,Ib="mousedown",tb="mousemove",Lb="mouseup",sb,F,vb,Pb,xb,ab;if(f.navigator.pointerEnabled||(ab=f.navigator.msPointerEnabled)){X=c;Ib=ab?"MSPointerDown":"pointerdown";tb=ab?"MSPointerMove":"pointermove";Lb=ab?"MSPointerUp":"pointerup";sb=ab?"MSPointerCancel":"pointercancel";if(Q){var Hb="auto";if(Q==2)Hb="pan-x";else if(Q)Hb="pan-y";a.qb(Bb,ab?"msTouchAction":"touchAction",Hb)}}else if("ontouchstart"in f||"createTouch"in h){hb=c;X=c;Ib="touchstart";tb="touchmove";Lb="touchend";sb="touchcancel"}fb=new Fc;if(kb)A=new wb(Xb,N,M,cb,hb);a.H(ob,fb.Ib);a.kb(D,"hidden");P=cc();a.qb(P,"backgroundColor","#000");a.ub(P,0);a.Qb(P,Bb.firstChild,Bb);for(var ub=0;ub<Z.length;ub++){var Cc=Z[ub],Ec=new Dc(Cc,ub);C.push(Ec)}a.K(jb);Kb=new Gc;z=new tc(Kb,fb);if(Q){a.j(D,Ib,zc);a.j(h,Lb,Jb);sb&&a.j(h,sb,Jb)}L&=X?10:5;if(Ob&&bb){Ub=new bb.G(Ob,bb,db(),pb());R.push(Ub)}if(J&&hc&&ec){J.Mb=E;Wb=new J.G(hc,ec,J,db(),pb());R.push(Wb)}if(Nb&&I){I.pc=p.pc;Sb=new I.G(Nb,I);R.push(Sb)}a.g(R,function(a){a.sc(t,C,jb);a.mb(m.rc,pc)});Mb(db());a.j(q,"mouseout",a.Ub(nc,q));a.j(q,"mouseover",a.Ub(mc,q));Db();p.ue&&a.j(h,"keydown",function(a){if(a.keyCode==o.Ce)rb(-1);else a.keyCode==o.ve&&rb(1)});var qb=p.pc;if(!(E&1))qb=b.max(0,b.min(qb,t-v));z.Gb(qb,qb,0)};g.hf=21;g.Zd=22;g.xe=23;g.Sd=24;g.Hd=25;g.cf=26;g.Pe=27;g.Yd=28;g.Dd=202;g.ye=203;g.We=206;g.fe=207;g.Ud=208;g.id=209;g.af=210;g.Ze=211;var m={rc:1};var t=function(d,g,j,o){var b=this;l.call(b);var v,u,f,h,k,r=a.r(d),p=a.s(d);function n(a){b.k(m.rc,a,c)}function s(b){a.B(d,b||!j.Mb&&f==0);a.B(g,b||!j.Mb&&f==u-1);v=b}b.xc=function(b,a,c){if(c)f=a;else{f=b;s(v)}};b.hc=s;var t;b.gc=function(f,b){if(!t||h.L==e){if(h.ob&1){a.D(d,(o-r)/2);a.D(g,(o-r)/2)}if(h.ob&2){a.C(d,(b-p)/2);a.C(g,(b-p)/2)}t=c}};var q;b.sc=function(b){u=b;f=0;if(!q){a.j(d,"click",a.cb(i,n,-k));a.j(g,"click",a.cb(i,n,k));a.cc(d);a.cc(g);q=c}};b.Rb=h=a.t({md:1},j);k=h.md},q=function(j,A){var i=this,x,o,d,u=[],y,w,f,p,q,t,s,n,r,h,k;l.call(i);j=a.vb(j);function z(n,e){var g=this,b,l,j;function p(){l.wd(o==e)}function h(){if(!r.Ae()){var a=f-e%f,b=r.Xc((e+a)/f-1),c=b*f+f-a;i.k(m.rc,c)}}g.bb=e;g.gd=p;j=n.Ye||n.Lb||a.gb();g.Ib=b=a.Ve(k,"thumbnailtemplate",j,c);l=a.cc(b);d.bc&1&&a.j(b,"click",h);d.bc&2&&a.j(b,"mouseover",a.Ub(h,b))}i.xc=function(c,d,e){var a=o;o=c;a!=-1&&u[a].gd();u[c].gd();!e&&r.we(r.Xc(b.floor(d/f)))};i.hc=function(b){a.B(j,b)};i.gc=a.zc;var v;i.sc=function(F,D){if(!v){x=F;b.ceil(x/f);o=-1;n=b.min(n,D.length);var i=d.sb&1,m=t+(t+p)*(f-1)*(1-i),l=s+(s+q)*(f-1)*i,C=m+(m+p)*(n-1)*i,A=l+(l+q)*(n-1)*(1-i);a.F(h,"absolute");a.kb(h,"hidden");d.ob&1&&a.D(h,(y-C)/2);d.ob&2&&a.C(h,(w-A)/2);a.r(h,C);a.s(h,A);var k=[];a.g(D,function(l,e){var g=new z(l,e),d=g.Ib,c=b.floor(e/f),j=e%f;a.D(d,(t+p)*j*(1-i));a.C(d,(s+q)*j*i);if(!k[c]){k[c]=a.gb();a.H(h,k[c])}a.H(k[c],d);u.push(g)});var E=a.t({Cc:e,oc:e,Mc:e,ne:m,qe:l,Zc:p*i+q*(1-i),qd:12,Tb:200,kc:1,jc:d.sb,ic:d.mf?0:d.sb},d);r=new g(j,E);v=c}};i.Rb=d=a.t({Yb:3,ac:3,Jb:1,sb:1,ob:3,bc:1},A);y=a.r(j);w=a.s(j);h=a.z(j,"slides",c);k=a.z(h,"prototype");t=a.r(k);s=a.s(k);a.Sb(k,h);f=d.re||1;p=d.Yb;q=d.ac;n=d.Jb};function r(){k.call(this,0,0);this.Fb=a.zc}var u=[{l:1200,a:1,i:{a:d.n,c:d.nb},c:2},{l:1e3,a:11,E:c,i:{a:d.m,c:d.v},c:2},{l:1200,a:1,b:1,W:{a:[.2,.8],b:[.2,.8]},i:{a:d.u,c:d.v,b:d.u},c:2,o:{b:.5}},{l:1e3,a:11,b:1,E:c,i:{a:d.m,c:d.v,b:d.m},c:2,o:{b:.8}},{l:1200,x:.5,A:2,a:1,I:{lb:15},i:{d:d.n,a:d.n,c:d.v},c:2},{l:1200,x:4,A:2,a:11,E:c,I:{lb:15},i:{d:d.m,a:d.m,c:d.v},c:2},{l:1200,x:.6,a:1,b:1,W:{d:[.2,.8],a:[.2,.8],b:[.2,.8]},i:{d:d.u,a:d.u,c:d.v,b:d.u},c:2,o:{b:.5}},{l:1e3,x:-4,a:11,b:1,E:c,i:{d:d.m,a:d.m,c:d.v,b:d.m},c:2,o:{b:.8}},{l:1200,x:-.6,a:1,b:1,W:{d:[.2,.8],a:[.2,.8],b:[.2,.8]},i:{d:d.u,a:d.u,c:d.v,b:d.u},c:2,o:{b:.5}},{l:1e3,x:4,a:11,b:1,E:c,i:{d:d.m,a:d.m,c:d.v,b:d.m},c:2,o:{b:.8}},{l:1200,x:.5,y:.3,A:2,a:1,b:1,I:{lb:15},i:{d:d.n,e:d.n,a:d.n,c:d.nb,b:d.n},c:2,o:{b:.7}},{l:1e3,x:.5,y:.3,A:2,a:1,b:1,E:c,I:{lb:15},i:{d:d.m,e:d.m,a:d.m,c:d.v,b:d.m},c:2,o:{b:.7}},{l:1200,x:-4,y:2,jb:2,a:11,b:1,I:{jd:28},i:{d:d.n,e:d.n,a:d.n,c:d.nb,b:d.n},c:2,o:{b:.7}},{l:1200,x:1,y:2,A:2,a:11,b:1,I:{lb:19},i:{d:d.n,e:d.n,a:d.n,c:d.nb,b:d.n},c:2,o:{b:.8}}];jssor_slider1_starter=function(h){var e=new g(h,{oc:c,td:1500,kc:1,ic:1,ue:c,Tb:600,ze:{G:s,qc:u,ff:1,te:c},pe:{G:t,Tc:1,ob:2,md:1},me:{G:q,Tc:2,re:2,Yb:14,ac:12,Jb:6,Yc:156,sb:2}});function d(){var c=a.Xd().x;if(c)e.Be(b.max(b.min(c,960),300));else a.M(d,30)}d();a.j(f,"load",d);a.j(f,"resize",a.de(f,d));a.j(f,"orientationchange",d)}})(window,document,Math,null,true,false)
</script> 

<script>
	$(function() {
		$("#tabs").tabs();
	});

	$(function() {
		var tooltips = $("[title]").tooltip({
			position : {
				my : "left top",
				at : "right+5 top-5"
			}
		});
	});

	$(document).ready(function() {
		$('div#accordion').accordion({
			event : "click hoverintent",collapsible : true,});
		
		var deleteOwner = <%=request.getParameter("deleteOwner")%>;
		if(deleteOwner == true){
    		alert("회원 탈퇴 완료");
    	}
    	else if(deleteOwner == false){
    		alert("회원 탈퇴에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
    	}
		
	});

	$(function() {
		//scrollpane parts
		var scrollPane = $(".scroll-pane"), scrollContent = $(".scroll-content");
		//build slider
		var scrollbar = $(".scroll-bar").slider({slide : function(event, ui) {
			if (scrollContent.width() > scrollPane.width()) {
				scrollContent.css(
				"margin-left",	Math.round(ui.value/ 100* (scrollPane.width() - scrollContent.width()))	+ "px");
			} else 
			{
				scrollContent.css("margin-left", 0);
			}
		}
	});

	//append icon to handle
	var handleHelper = scrollbar.find(".ui-slider-handle").mousedown(
			function() {
				scrollbar.width(handleHelper.width());	}).mouseup(
						function() {
							scrollbar.width("100%");}).append("<span class='ui-icon ui-icon-grip-dotted-vertical'></span>")	
							.wrap("<div class='ui-handle-helper-parent'></div>").parent();

	//change overflow to hidden now that slider handles the scrolling
	scrollPane.css("overflow", "hidden");

	//size scrollbar and handle proportionally to scroll distance
	function sizeScrollbar() {
		var remainder = scrollContent.width() - scrollPane.width();
		var proportion = remainder / scrollContent.width();
		var handleSize = scrollPane.width()- (proportion * scrollPane.width());
		scrollbar.find(".ui-slider-handle").css({
			width : handleSize,	"margin-left" : -handleSize / 2
		});
		handleHelper.width("").width(scrollbar.width() - handleSize);
	}

	//reset slider value based on scroll content position
	function resetValue() {
		var remainder = scrollPane.width() - scrollContent.width();
		var leftVal = scrollContent.css("margin-left") === "auto" ? 0: parseInt(scrollContent.css("margin-left"));
		var percentage = Math.round(leftVal / remainder * 100);
		scrollbar.slider("value", percentage);
	}

	//if the slider is 100% and window gets larger, reveal content
	function reflowContent() {
		var showing = scrollContent.width()+ parseInt(scrollContent.css("margin-left"), 10);
		var gap = scrollPane.width() - showing;
		if (gap > 0) {
			scrollContent.css("margin-left", parseInt(scrollContent.css("margin-left"), 10));
		}
	}
	//change handle position on window resize
	$(window).resize(function() {
		resetValue();
		sizeScrollbar();
		reflowContent();
	});
	//init scrollbar size
	setTimeout(sizeScrollbar, 10);//safari wants a timeout
});

function Open_modal(commentCode, title, content, storeName) {
	document.querySelector("#modal_title" + commentCode).innerHTML = storeName+ "(" + title + ")";
	document.querySelector("#here" + commentCode).innerHTML = content;
}
</script>
<script>
(function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-45690170-1', 'jssor.com');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
</script>

<!-- <style>
/*Jssor*/
*{
margin:0;
padding:0;
outline:0
}

html,body{
height:100%;
background:#fff
}

body,a{
font:normal 16px Helvetica,Verdana,Geneva,sans-serif;
color:#3f3f3f
}

.headercontainer{
display:block;
margin:0 auto;
margin:0 auto;
background:#fff;
z-index:1000;
position:relative;
width:100%;
top:0;
left:0;
border-bottom:1px solid #51c1f1
}

.headercontainer:after{
content:'';
display:block;
clear:both}

.headerspace{
height:1px}

.footer{
margin:0 auto;
height:60px;
padding:0 0;
background:#bbbfbf;
font-size:12px;
width:100%;border-top:1px solid #51c1f1}

@media only screen and (max-width:480px){
.copyright{display:none}}
@media only screen and (min-width:769px){

.headercontainer{position:fixed}

.headerspace{height:41px}}

body{-webkit-animation:bugfix infinite 1s;-webkit-font-smoothing:antialiased}

@-webkit-keyframes bugfix{from{padding:0;}to{padding:0;}}

.header{position:relative;top:0;left:0;margin:0 auto}

#toggle,.toggle{display:none}.menu>li{list-style:none;float:left}.clearfix:before,.clearfix:after{display:table;content:""}.clearfix:after{clear:both}@media only screen and (max-width:768px){.menu{display:none;opacity:0;width:100%;position:absolute;right:0}.menu>li{display:block;width:100%;margin:0}.menu>li>a{display:block;width:100%;text-decoration:none;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.toggle{display:block;position:relative;cursor:pointer;-webkit-touch-callout:none;-webkit-user-select:none;user-select:none;margin-top:5px}#toggle:checked~.menu{display:block;opacity:1}}.header{min-height:40px;max-width:940px;height:100%;padding:0 20px;background:#f0f0f0}.header>.logo{float:left;padding:0 0 0 5px;font-style:italic;font-size:28px;line-height:40px}.nav{display:block;float:right;text-align:right}.nav,.menu,.menu>li,.menu>li>a{height:100%}.menu>li>a{display:block;padding:12px 20px;text-decoration:none;font-weight:normal;font-size:16px;line-height:1;color:#3f3f3f;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;-webkit-transition:all .25s linear;-moz-transition:all .25s linear;-o-transition:all .25s linear;transition:all .25s linear}.menu>li>a:hover,.menu>li>a:focus{background:#f2f2f2;box-shadow:inset 0 5px #51c1f1;color:#51c1f1;background-color:#fff}.menu>li>a.current{color:#51c1f1}.toggle{z-index:2}@media only screen and (max-width:820px){.menu{background:#f0f0f0;border-top:1px solid #51c1f1}.menu,.menu>li,.menu>li>a{height:auto}.menu>li>a{padding:15px 15px;text-align:center;background-color:#f9f9f9;border-bottom:1px solid #51c1f1}.menu>li>a:hover,.menu>li>a:focus{background:#f2f2f2;box-shadow:inset 5px 0 #51c1f1;padding:15px 15px 15px 25px}.toggle:after{content:'';display:block;width:36px;height:30px;margin:0 0;padding:0 0;background:#222;-webkit-border-radius:2px;border-radius:2px;text-align:center;font-size:13px;color:#fff;-webkit-transition:all .5s linear;-moz-transition:all .5s linear;-o-transition:all .5s linear;transition:all .5s linear;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.toggle:hover:after{background:#45abd6}#toggle:checked+.toggle:after{content:''}.toggle .icon-bar{display:block;position:absolute;top:0;left:7px;width:22px;height:2px;background-color:#fff}}.share-icon{display:inline-block;float:left;margin:4px;width:32px;height:32px;cursor:pointer;vertical-align:middle;background-image:url(../img/share/share-icons.png)}.share-facebook{background-position:0 0}.share-facebook:hover{background-position:0 -40px}.share-twitter{background-position:-40px 0}.share-twitter:hover{background-position:-40px -40px}.share-pinterest{background-position:-80px 0}.share-pinterest:hover{background-position:-80px -40px}.share-linkedin{background-position:-240px 0}.share-linkedin:hover{background-position:-240px -40px}.share-googleplus{background-position:-120px 0}.share-googleplus:hover{background-position:-120px -40px}.share-stumbleupon{background-position:-360px 0}.share-stumbleupon:hover{background-position:-360px -40px}.share-email{background-position:-320px 0}.share-email:hover{background-position:-320px -40px}.ad_title_share{position:relative;top:5px;width:160px;height:80px;margin-left:22px}.share-icons-sidebar{position:fixed;display:block;top:110px;left:0;width:40px;height:240px}@media only screen and (max-width:1080px){.ad_title_share{display:none}.share-icons-sidebar{display:none}}.ad_top,.ad_bill{position:relative;margin:0 auto;top:0;left:0;padding:0;width:320px;height:50px;overflow:hidden}.ad_title_banner{width:320px;height:50px;position:relative;top:0;padding:0;overflow:hidden;margin:0 auto}.ad_space{height:0}.ad_title{position:relative;margin:0 auto;padding:0;width:100%;max-width:980px;height:50px;background-color:#f0f0f0}.ad_title_caption{display:none}.ad_rect{position:absolute;padding:10px;top:-10px;left:-10px;width:300px;height:250px}.ad_rect:hover{}.ad_hint{position:absolute;left:-10px;top:-10px;width:22px;height:15px;color:#fff;background-color:#edb802;font-size:13px;text-align:center;border-radius:2px;z-index:1}@media only screen and (min-width:727px){.ad_top,.ad_title_banner{width:728px;max-width:100%;height:90px}.ad_bill{width:970px;max-width:100%;height:250px}.ad_space{height:20px}.ad_title{height:90px}}@media only screen and (min-width:980px){.ad_title_banner{position:absolute;right:20px}.ad_title_caption{display:block}}.sidebar_1{position:relative;display:block;float:left;top:0;margin:15px 10px 10px -10px;padding:0;width:320px;overflow:hidden}@media only screen and (max-width:979px){.sidebar_1{width:640px;margin:10px auto;float:none}}@media only screen and (max-width:639px){.sidebar_1{width:320px;float:none}}a:link{color:#fff;text-decoration:none}a:visited{color:#ff8400;text-decoration:none}a:hover{color:#fff;text-decoration:underline}a:active{color:#fff;text-decoration:underline}a:visited.nav{color:#ff8400}a:link.nav{color:#fff}a:hover.nav,a:active.nav{color:#fff}a:link.featurenav,a:visited.featurenav{color:#fff}a:hover.featurenav,a:active.featurenav{color:#0080ff}.backGreen{background-image:url(../img/site/back-green.png)}.backBlackGreen{background-image:url(../img/site/back-blackgreen.png)}.backBlack{background-image:url(../img/site/back-black.png)}.backWhite{background-image:url(../img/site/back-white.png)}.backBlue{background-image:url(../img/site/back-blue.png)}.thumb{position:relative;top:0;left:0;float:left;display:inline;margin:10px;width:300px;height:250px;-webkit-box-shadow:1px 1px 5px 0 rgba(109,109,109,.3);-moz-box-shadow:1px 1px 5px 0 rgba(109,109,109,.3);box-shadow:1px 1px 5px 0 rgba(109,109,109,.3)}.thumbb,a.thumbb{position:absolute;left:-1px;top:-1px;width:302px;height:252px;color:#000;background-color:#ccc}a.thumbb:visited{color:#ff8400}.thumbb:hover,a.thumbb:hover{color:#fff;background-color:#ff8400}.thumbi{position:absolute;left:1px;top:36px;width:300px;height:215px;line-height:211px;text-align:center;background-color:#f6f6f6;background-position:center center;background-repeat:no-repeat}.thumbi img{vertical-align:middle;border:none}.thumbc{position:absolute;left:1px;top:1px;width:300px;height:35px;background-color:#eaeaea}a.thumbb:hover .thumbc{background-color:#ff8400}.thumbc{font-size:18px;line-height:35px;text-align:center}.thumb_wrapper{position:relative;margin:10px auto;padding:0;width:100%;max-width:960px;overflow:hidden}.reserve_sidebar_space{float:none}@media only screen and (min-width:960px){.reserve_sidebar_space{max-width:640px;float:left;margin:10px}}@media only screen and (max-width:959px){.thumb_wrapper{max-width:640px}}@media only screen and (max-width:639px){.thumb_wrapper{max-width:320px}}A.effectButton,A.effectButton:active,A.effectButton:visited,A.navDev,A.navDev:active,A.navDev:visited{display:block;font-size:13px;line-height:26px;text-align:center;background-color:#dadada;color:#eb5100;text-decoration:none;padding:3px 10px 3px 10px;display:inline;white-space:nowrap}A.effectButton:hover,A.navDev:hover{color:#eaeaea;background-color:#eb5100}A.navDev,A.navDev:active,A.navDev:visited,A.navDev:hover{left:0;width:255px;line-height:26px;padding:0 5px 0 5px;display:inline-block;text-align:left}.captionOrange,.captionBlue,.captionBlack,.captionSymbol{display:block;color:#fff;font-size:20px;line-height:30px;text-align:center;border-radius:4px}.captionOrange{background:#eb5100;background-color:rgba(235,81,0,.6)}.captionBlue{background:#746fbd;background-color:rgba(21,21,120,.6)}.captionBlack{background:#000;background-color:rgba(0,0,0,.4)}.captionSymbol{border-radius:100px!important;font-weight:400!important;font-size:26px!important;background:#000;background-color:rgba(0,0,0,.4)}.captionTextBlack{display:block;color:#000;font-size:20px;line-height:30px}.captionTextWhite{display:block;color:#fff;font-size:20px;line-height:30px}a.captionOrange,a.captionOrange:active,a.captionOrange:visited,a.captionTextWhite,a.captionTextWhite:active,a.captionTextWhite:visited{color:#fff;text-decoration:none}a.captionOrange:hover{color:#eb5100;text-decoration:underline;background-color:#eee;background-color:rgba(238,238,238,.7)}a.captionTextBlack,a.captionTextBlack:active,a.captionTextBlack:visited{color:#000;text-decoration:none}a.captionTextWhite:hover{color:#eb5100;text-decoration:underline}a.captionTextBlack:hover{color:#eb5100;text-decoration:underline}.bricon{background:url(../img/browser-icons.png)}@media only screen and (max-width:980px){.qr_code{display:none}}.feature{position:relative;float:left;display:table;margin:20px;width:280px;height:180px;background-image:url(../img/site/back-blue.png)}.featurec{position:relative;width:100%;text-align:center;font-size:18px;line-height:30px;color:#fff;background-image:url(../img/site/back-black.png)}.featuret{position:relative;height:100%;margin:10px;color:#fff;font-size:13px;line-height:26px}.description{position:relative;margin:0 auto;margin:5px;top:0;left:0;width:690px}.descriptiont{position:relative;width:670px;color:#000;font-size:13px;line-height:20px;overflow:auto;padding:5px}.optiontable{position:relative;color:#000;font-size:13px;background-color:#f0f0f0;table-layout:fixed;word-wrap:break-word}.optiontable td,.optiontable tr{height:24px;line-height:21px;vertical-align:top;border-bottom:1px dashed #888}.optiontable td{padding-left:2px}body{-webkit-font-smoothing:antialiased}.jssora05l,.jssora05r,.jssora05ldn,.jssora05rdn{position:absolute;cursor:pointer;display:block;background:url(../img/a17.png) no-repeat;overflow:hidden}.jssora05l{background-position:-10px -40px}.jssora05r{background-position:-70px -40px}.jssora05l:hover{background-position:-130px -40px}.jssora05r:hover{background-position:-190px -40px}.jssora05ldn{background-position:-250px -40px}.jssora05rdn{background-position:-310px -40px}.jssort02 .w{position:absolute;top:0;left:0;width:100%;height:100%}.jssort02 .c{position:absolute;top:0;left:0;width:95px;height:62px;border:#000 2px solid}.jssort02 .p:hover .c,.jssort02 .pav:hover .c,.jssort02 .pav .c{background:url(../img/t01.png) center center;border-width:0;top:2px;left:2px;width:95px;height:62px}.jssort02 .p:hover .c,.jssort02 .pav:hover .c{top:0;left:0;width:97px;height:64px;border:#fff 1px solid}
</style> -->
<style type="text/css">

body, input, textarea, select {
line-height: 1.75em;
font-size: 12pt;
background-color: #323232;
}
table	{
	border-color: red;
	border-bottom-style: 3px solid;
}
form {
	width: 10cm;
}

label {
	display: inline-block;
	width: 5em;
}

fieldset .help {
	margin-top: 2em;
	display: inline-block;
}

.gwd-page-container {
	position: relative;
	width: 100%;
	height: 100%;
}

.gwd-page-content {
	-webkit-transform: perspective(1400px)
		matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	-webkit-transform-style: preserve-3d;
	position: absolute;
	background-color: transparent;
}


.gwd-page-wrapper {
	position: absolute;
	-webkit-transform: translateZ(0px);
	background-color: rgb(255, 255, 255);
}

.gwd-page-size {
	width: 1080px;
	height: 800px;
}

.gwd-div-ohx1 {
	background-image: none;
	background-color: rgb(255, 255, 255);
}

.gwd-div-ahnf {
	position: absolute;
	width: 695px;
	height: 93px;
	border-image-source: none;
	left: 199px;
	top: 80px;
	background-image: none;
	background-color: rgb(255, 195, 185);
}

.gwd-div-ego1 {
	position: absolute;
	width: 516px;
	height: 352px;
	left: 199px;
	top: 206px;
	border-image-source: none;
	background-image: none;
	background-color: rgb(255, 214, 93);
}

.gwd-div-cie2 {
	position: absolute;
	width: 162px;
	height: 352px;
	left: 733px;
	top: 206px;
	border-image-source: none;
	background-image: none;
	background-color: rgb(218, 255, 162);
}

.gwd-btutton-csd1 {
	position: absolute;
	width: 147px;
	height: 48px;
	left: 739.5px;
	top: 389px;
	background-image: none;
	background-color: rgb(255, 139, 181);
}

.gwd-btutton-kskc {
	position: absolute;
	width: 147px;
	height: 47px;
	left: 741px;
	top: 478px;
	background-image: none;
	background-color: rgb(255, 116, 150);
}

.ui-tooltip {
	width: 200px;
}

#accordion-resizer {
	padding: 0px;
	width: 100%;
}

#header {
	background-image: url(images/main.jpg);
}

.scroll-pane {
	overflow: auto;
	width: 100%;
	float: left;
}

.scroll-content {
	width: 6000px;
	float: left;
	background-color: none;
	border-color: none;
}

.scroll-content-item {
	width: 300px;
	height: 300px;
	float: left;
	margin: 0;
	font-size: 2em;
	text-align: center;
	background: gray;
}
/* 스크롤위치위아래 */
.scroll-bar-wrap {
	background: #323232;
	clear: left;
	padding: 0 0 0 0;
	margin: 0 -1px -1px -1px;
}

.scroll-bar-wrap .ui-slider {
	background: #323232;
	border: 0;
	height: 2em;
	margin: 0 auto;
}
/* 스크롤 위치 */
.scroll-bar-wrap .ui-handle-helper-parent {
	position: relative;
	width: 100%;
	height: 100%;
	margin: 0 auto;
	background: #323232;
}

.scroll-bar-wrap .ui-slider-handle {
	top: .2em;
	height: 1.5em;
	background: gray;
	border-color: gray;
}

.scroll-bar-wrap .ui-slider-handle .ui-icon {
	margin: 0 auto 0;
	position: relative;
	top: 50%;
	background: none;
}
</style>
<script>
function soundOff() {  
  parent.document.frames["soundMenu"].document.getElementById("bgsound").stop(); 
}

function soundOn() {  
  parent.document.frames["soundMenu"].document.getElementById("bgsound").play(); 
}

function soundNext() {  
  parent.document.frames["soundMenu"].document.getElementById("bgsound").next(); 
}

function soundPrev() {  
  parent.document.frames["soundMenu"].document.getElementById("bgsound").previous(); 
}
</script>
</head>

<body class="homepage" bgcolor=#333323>
 <!-- <embed src="http://download.wavetlan.com/SVV/Media/HTTP/test_mono_8000Hz_16bit_PCM.wav" autostart="true" loop="true" volume="50">


<a href="javascript:soundOn();">재생</a>
<a href="javascript:soundOff();">끄기</a>
<a href="javascript:soundPrev();">이전곡</a>
<a href="javascript:soundNext();">다음곡</a> -->
<c:url value="<%=request.getContextPath()%>" var="cp"></c:url>

<div id="header-wrapper" style="background-color: #323232;">
	<div id="header" class="container">
			<h1 id="logo">
				<a href="<%=request.getContextPath()%>">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
		<!-- 헤더 메뉴 -->
		<div align="right">
		<nav id="nav">
			<ul>
			
			<c:if test="${!empty loginUser }">
				<li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span></li>
			</c:if>
			
			<c:if test="${!empty loginOwner }">
				<li><span>${loginOwner.ownerId}님</span></li>
			</c:if>

			<c:if test="${!empty loginUser || !empty loginOwner }">
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>
			</c:if>
			
			<c:if test="${empty loginOwner && empty loginUser }">
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/login"><span>Login</span></a>
				<li><a class="icon fa-cog"			href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
			</c:if>
			</ul>
		</nav>
		</div><!-- 헤더 메뉴 끝 -->

				
	</div><!-- 헤더 끝 -->
</div><!-- 헤더 래퍼 끝 -->


<!-- 헤더 바디 구분 띠 -->
<img src="images/bar.png" style="width: 100%">

<%-- 
<div align="center" style="background-color: #323232;">
<br>
		<c:url value="/main/keyword" var="action"></c:url>
		<form:form modelAttribute="category" method="post"	action="${action}">
			<table><tr>			
			<td width="800px"><form:input path="keyword" name="keyword"	placeholder="keyWord" type="text" maxlength="30" /></td>	
			<td><button type="submit" class="form-button-submit button "style="height: 45px">Search</button></td>
			</tr></table>
		</form:form>
</div><!-- 키워드 검색 부분 끝 -->	 --%>

		<div align="center" style="top: 1cm; background-color: #323232;">
	<c:url value="/main/keyword" var="action"></c:url>
		<form:form modelAttribute="category" method="post"	action="${action}">
		<br>
		<br>
			<table border="1px solid red" bordercolor="red"><tr><td>	
			<form:input path="keyword" name="keyword"	placeholder="keyWord" type="text" maxlength="30" />	</td><td>
			<button type="submit" class="form-button-submit button "style="height: 43px; padding-top: 0.1cm;">Search</button></td><tr>
			</table>
		</form:form>
	
	</div>
		
<!-- 바디 시작 -->
<div id="features-wrapper" style="background-color: #323232;">
<!-- 바디 카테고리 시작 -->

<!-- 키워드 검색 부분 -->
		
	

	<section id="features" class="container"> 
	
	<c:url	var="action" value="/category"></c:url> <form:form action="${action}"	modelAttribute="category">
	<nav id="nav">
		<ul>
		<li><a href=""><span>Region</span></a>
			<ul>
				<li>&nbsp; &nbsp;홍대 &nbsp; &nbsp; &nbsp; <input type="radio"	name="regionName" value="홍대"></li>
				<li>&nbsp; &nbsp;강남 &nbsp; &nbsp; &nbsp;&nbsp;<input	type="radio" name="regionName" value="강남"></li>
				<li>&nbsp; &nbsp;이태원 &nbsp;&nbsp;<input type="radio"	name="regionName" value="이태원"></li>
				<li>&nbsp; &nbsp;건대 &nbsp; &nbsp; &nbsp; <input type="radio"	name="regionName" value="건대"></li>
				<li>&nbsp; &nbsp;신촌 &nbsp; &nbsp; &nbsp; <input type="radio"	name="regionName" value="신촌"></li>
			</ul>
		</li>
			
		<li><a href=""><span>Type</span></a>
			<ul>
				<li>&nbsp; &nbsp;호프집 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<input	type="radio" name="typeName" value="호프집"></li>
				<li>&nbsp; &nbsp;고기집 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<input	type="radio" name="typeName" value="고기집"></li>
				<li>&nbsp; &nbsp;룸주점 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<input	type="radio" name="typeName" value="룸주점"></li>
				<li>&nbsp; &nbsp;포장마차 &nbsp; &nbsp; <input type="radio"	name="typeName" value="포장마차"></li>
				<li>&nbsp; &nbsp;일식 &nbsp; &nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"	name="typeName" value="일식"></li>
			</ul>
		</li>

		<li><a href=""><span>Number</span></a>
			<ul>
				<li>&nbsp; &nbsp;4인이하&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input	type="radio" name="number" value="4인이하"></li>
				<li>&nbsp; &nbsp;5~10인 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input	type="radio" name="number" value="5~10인"></li>
				<li>&nbsp; &nbsp;10~20인 &nbsp; &nbsp; <input type="radio"	name="number" value="10~20인"></li>
				<li>&nbsp; &nbsp;20인이상 &nbsp; &nbsp; <input type="radio"	name="number" value="20인이상"></li>
			</ul>
		</li>

		<li><a href=""><span>Service</span></a>
			<ul>
				<li>&nbsp; &nbsp;서비스추가 &nbsp; <input type="radio"	name="serviceType" value="서비스추가"></li>
				<li>&nbsp;	&nbsp;할인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input	type="radio" name="serviceType" value="할인"></li>
			</ul>
		</li>

		<!-- <li><input type="submit" value="Search"/></li> -->
		<li>
			<button type="button" class="btn btn-warning btn-sm">Search</button>
		</li>
		</ul>
	</nav>
	</form:form> <!-- 바디 카테고리 끝 --> 
	
	<br>

<%-- 옆으로 넘어가는 방식
	<div id="carousel-example-generic" class="carousel slide"	data-ride="carousel">
	<!-- Indicators -->
	
 	<ol class="carousel-indicators">
		
		<li data-target="#carousel-example-generic" data-slide-to="0"	class="active"></li>
		<c:forEach items="${events}" var="event" varStatus="status">
		<li data-target="#carousel-example-generic" data-slide-to="${status.count-1 }"></li>
		</c:forEach>
		<!-- <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		<li data-target="#carousel-example-generic" data-slide-to="3"></li>
		<li data-target="#carousel-example-generic" data-slide-to="4"></li>
		<li data-target="#carousel-example-generic" data-slide-to="5"></li>
		<li data-target="#carousel-example-generic" data-slide-to="6"></li> -->
	</ol>
	
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox" align="center">
	<c:forEach items="${events}" var="event" varStatus="status">
		<c:if test="${status.count =='1'}">
		
			<div class="item active">
				<button id="event${status.current.commentCode }" data-toggle="modal" data-target="#myModal${status.current.commentCode }" onclick="Open_modal('${status.current.commentCode }','${status.current.title }', '${status.current.content }', '${status.current.storeName }');">
					<img src="images/pic01.jpg" align="bottom">
					<div class="carousel-caption">
						<c:out value="${event.storeName}" />
						[<c:out value="${event.title}" />]
					</div>
				</button>
			</div>
		</c:if>


	 
		<div class="item">
			<button id="event${status.current.commentCode }"data-toggle="modal"	data-target="#myModal${status.current.commentCode }" onclick="Open_modal('${status.current.commentCode }','${status.current.title }', '${status.current.content }', '${status.current.storeName }');">
				<img src="images/pic01.jpg" align="bottom">
				<div class="carousel-caption">
					<c:out value="${event.storeName}" />
						[<c:out value="${event.title}" />]
				</div>
			</button>
		</div>
		
		</c:forEach>


	<!-- 이벤트 클릭 시 모달 시작 -->
	<c:forEach items="${events}" var="event" varStatus="status">
	<c:url	value="/eventProcess?eventCommentCode=${status.current.commentCode }"	var="action"></c:url>
		<div class="modal fade" id="myModal${status.current.commentCode }"	tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					
					<!-- 모달 헤더 -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title"	id="modal_title${status.current.commentCode }"></h4>
					</div>
					
					<!-- 모달 바디 -->
					<div class="modal-body" id="here${status.current.commentCode }">
						<c:out value="${event.storeAdress }" />
					</div>
					
					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default"	data-dismiss="modal">닫기</button>
						<a href="${action }"><button class="btn btn-warning btn-sm">이벤트상세보기</button></a>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</c:forEach><!-- 이벤트 클릭 시 모달 끝 -->
	JooJooClub EVENT
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"	role="button" data-slide="prev"> 
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a> 
	
	<a class="right carousel-control" href="#carousel-example-generic"	role="button" data-slide="next"> 
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
	</div>


	<div> --%>
	
	
	<div style="height:20px;"></div>

<div id="slider1_container" style="position:relative;padding:0px;margin:0 auto;top:0px;left:0px;width:960px;height:480px;background:#282828;">
<div u="loading" style="position:absolute;top:0px;left:0px;">
<div style="filter:alpha(opacity=70);opacity:0.7;position:absolute;display:block;background-color:#000000;top:0px;left:0px;width:100%;height:100%;">
</div>
<div style="position:absolute;display:block;background:url(../img/loading.gif) no-repeat center center;top:0px;left:0px;width:100%;height:100%;">
</div>
</div>
<div u="slides" style="cursor:move;position:absolute;left:260px;top:0px;width:720px;height:480px;overflow:hidden;">



<c:forEach items="${events}" var="event" varStatus="status">



<div>
<button  style="border-color: none;" id="event${status.current.commentCode }"data-toggle="modal"	data-target="#myModal${status.current.commentCode }" onclick="Open_modal('${status.current.commentCode }','${status.current.title }', '${status.current.content }', '${status.current.storeName }');">
				
<img u="image" src="images/p${status.count}.jpg"  style="width: 650px; height: 400px;">
</button>
<br><br>
<h3>
<c:out value="${event.storeName}" />
	[<c:out value="${event.title}" />]
</h3>	
<img u="thumb" src="images/p${status.count}.jpg"  style="width: 60px; height: 40px;">
<div style="font-color: red; " align="center" ><h3>
	
</h3></div>
</div>

</c:forEach>
</div>

<span u="arrowleft" class="jssora05l" style="width:40px;height:40px;top:158px;left:248px;">
</span>
<span u="arrowright" class="jssora05r" style="width:40px;height:40px;top:158px;right:8px">
</span>
<div u="thumbnavigator" class="jssort02" style="position:absolute;width:240px;height:480px;left:0px;bottom:0px;">
<div u="slides" style="cursor:move;">
<div u="prototype" class="p" style="position:absolute;width:99px;height:66px;top:0;left:0;">
<div class="w"><div u="thumbnailtemplate" style=" width:100%;height:100%;border:none;position:absolute;top:0;left:0;"></div></div>
<div class="c">
</div>
</div>
</div>
</div>
<a style="display:none" href="http://www.jssor.com">jQuery Slider</a>
<script>
jssor_slider1_starter('slider1_container');
</script>
<!-- 이벤트 클릭 시 모달 시작 -->
	<c:forEach items="${events}" var="event" varStatus="status">
	<c:url	value="/eventProcess?eventCommentCode=${status.current.commentCode }"	var="action"></c:url>
		<div class="modal fade" id="myModal${status.current.commentCode }"	tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					
					<!-- 모달 헤더 -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title"	id="modal_title${status.current.commentCode }"></h4>
					</div>
					
					<!-- 모달 바디 -->
					<div class="modal-body" id="here${status.current.commentCode }">
						<c:out value="${event.storeAdress }" />
					</div>
					
					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default"	data-dismiss="modal">닫기</button>
						<a href="${action }"><button class="btn btn-warning btn-sm">이벤트상세보기</button></a>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</c:forEach><!-- 이벤트 클릭 시 모달 끝 -->

</div>
<div style="height:20px;"></div>

	<div>


			<!-- 바디 상점 검색 부분 시작 -->
			<div align="center">
				<br> <br> <br>
				<h2 class="docs">검색결과</h2>
			</div>

			<!-- 바디 상점 검색 시작 -->
			<div id="accordion-resizer" align="center"
				style="background-color: #323232">

				<!-- 카테고리 구분 테이블 -->
				<table width="75%" align="center" cellpadding="0" cellspacing="0"
					border="1" align="center"
					style="border-collapse: collapse; border: 1px gray solid; background-color: #323232;">
					<tr align="center">
						<td style="border: 1px gray solid;"><h4>상호명</h4></td>
						<td style="border: 1px gray solid;"><h4>지역</h4></td>
						<td style="border: 1px gray solid;"><h4>업종</h4></td>

					</tr>
				</table>
				<!-- 카테고리 구분 테이블 끝 -->

				<!-- 바디 상점 결과 아코디언 시작 -->
				<div id="accordion" style="font-family:'Jeju Gothic', serif; ">
					<!-- 상점 select 결과 가져오는 부분 시작 -->
					<c:forEach items="${stores}" var="store">

						<!-- 아코디언 카테고리 헤더 -->
						<div align="center" style="height: 1cm;">
							<table width="80%" height="1cm" align="center">
								<tr align="center" height="1cm">
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${store.storeName}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${store.regionName}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${store.typeName}" /></td>
								</tr>
							</table>
						</div>

						<!-- 아코디언 상세내용 바디 -->
						<div>
							<p align="left">상점 이름:	<c:out value="${store.storeName}" />
							</p>
							<p align="left">상점 주소:	<c:out value="${store.storeAdress}" />
							</p>
							<p align="left">상점 위치:	<c:out value="${store.regionName}" />
							</p>
							<p align="left">상점 업종:	<c:out value="${store.typeName}" />
							</p>
							<p align="left">상점 전화번호:	<c:out value="${store.storePhone}" />
							</p>
						</div>
						
					</c:forEach>
					<!-- 상점 select 결과 가져오는 부분 끝 -->
				</div>
				<!-- 바디 상점 결과 아코디언 끝 -->
			</div>
		</div>
		</section>
	</div>
	<!-- 바디 끝 -->


	<!-- Footer -->
	<div>
		<div id="footer" class="container">
			<div align="center">
				<br> <br> <a
					href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>
				<br>
				<div style="font-size: 12px;">
					사업자등록번호:130-50-61004 (주)주주총회 대표이사: 정주주 주소: 이클립시 디비구 자바동 123-45 <br>
					주주총회앱의 모든 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다. <br>
					Copyright (c) JooJooClub All Rights Reserved.
				</div>
				<br>
			</div>
		</div>
	</div>

</body>
</html>

 
