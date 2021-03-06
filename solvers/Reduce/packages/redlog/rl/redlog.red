module redlog;

% Reduce logic component.

revision('redlog, "$Id: redlog.red 4058 2017-05-23 17:12:59Z thomas-sturm $");

copyright('redlog, "(c) 1995-2009 A. Dolzmann, T. Sturm, 2010-2017 T. Sturm");

% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
%
%    * Redistributions of source code must retain the relevant
%      copyright notice, this list of conditions and the following
%      disclaimer.
%    * Redistributions in binary form must reproduce the above
%      copyright notice, this list of conditions and the following
%      disclaimer in the documentation and/or other materials provided
%      with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
% A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
% OWNERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
% SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
% LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
% DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
% THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
% (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
% OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%

create!-package('(redlog rlprint rlami rltypes rlservices rlblackboxes rlcont),nil);

load!-package 'rlsupport;

put('redlog, 'known!-packages,
   '(acfsf cl dcfsf dvfsf ibalp mri ofsf pasf qqe qqe_ofsf redlog rlsupport rltools smt talp tplp));

exports quotelog,rl_mkbb,rl_mkserv,rl_op,rl_arg1,rl_arg2l,rl_arg2r,rl_argn,
   rl_var,rl_mat,rl_mk1,rl_mk2,rl_mkn,rl_smkn,rl_mkq,rl_quap,rl_junctp,rl_basbp,
   rl_extbp,rl_boolp,rl_tvalp,rl_cxp,rl_mk!*fof,rl_reval,rl_prepfof,rl_cleanup,
   rl_simp,rl_simpbop,rl_simpq,rl_simp!*fof,rl_lengthlogical,rl_sub!*fof,
   rl_print!*fof,rl_priq,rl_ppriop,rl_fancy!-ppriop,rl_fancy!-priq,
   rl_interf1,rl_a2s!-decdeg1,rl_a2s!-varl,rl_a2s!-number,rl_a2s!-id,
   rl_a2s!-atl,rl_a2s!-posf,rl_s2a!-simpl,rl_s2a!-gqe,rl_s2a!-gqea,rl_s2a!-qea,
   rl_s2a!-opt,rl_s2a!-atl,rl_s2a!-ml,rl_s2a!-term,rl_s2a!-decdeg1,
   rl_a2s!-targfn,rl_a2s!-terml,rl_s2a!-terml,rl_a2s!-term,rl_s2a!-varl,
   rl_s2a!-fbvarl,rl_s2a!-struct,rlmkor,rlmkand,rl_set!$,rl_set,rl_exit,
   rl_enter,rl_onp,rl_vonoff,rl_updcache,rl_serviadd,rl_bbiadd;

% context identifier:
fluid '(rl_cid!*);

% List of fluid variables corresponding to black boxes. Those variables are
% rebound to the domain-specific SM entry points when switching the context with
% rl_set. That is, rl_service(...) will apply('rl_service!*, {...}), where
% rl_service!* is in rl_servl!* and e.g, rl_service!* = 'ofsf_service.
fluid '(rl_servl!*);

% List of fluid variables corresponding to black boxes. Those variables are
% rebound when switching the context with rl_set. They are used via apply within
% genric implementaion in the cl module:
fluid '(rl_bbl!*);


% default language (context), probably obsolete:
fluid '(rl_deflang!*);

fluid '(rl_argl!*);
fluid '(rl_usedcname!*);
fluid '(rl_ocswitches!*);

fluid '(!*utf8);

fluid '(fancy!-line!* fancy!-pos!*);

fluid '(!*strict_argcount);

switch rlsism,rlsichk,rlsiidem,rlsiatadv,rlsipd,rlsiexpl,rlsiexpla,rlsiso,
   rlsisocx,rlsipw,rlsipo,rlverbose,rlrealtime,rlidentify,rlgssub,
   rlgsrad,rlgsred,rlgsprod,rlqepnf,rlqedfs,rlparallel,rlopt1s,rlbrop,
   rlbnfsm,rlsimpl,rlsifac,rlqegsd,rlgserf,rlbnfsac,rlgsvb,rlqesr,rlqeheu,
   rldavgcd,rlsitsqspl,rlgsbnf,rlgsutord,rlqegenct,rltnft,rlnzden,rlposden,
   rladdcond,rlqevarsel,rlqeqsc,rlqesqsc,rlsusi,rlsusimult,rlsusigs,rlsusiadd,
   rlcaddnfformula,rlcadprojonly,rlcadpreponly,
   rlcadextonly,rlcadverbose,rlcadfasteval,
   rlcadfulldimonly,rlcadtrimtree,rlcadrawformula,
   rlanuexverbose,
   rlanuexgcdnormalize,rlanuexsgnopt,rlcaddecdeg,
   rlcadte,rlcadpbfvs,rlqefb,rlxopt,rlxoptsb,rlxoptpl,rlxoptri,rlxoptric,
   rlxoptses,rlxoptrir,rlourdet,rlvmatvb,rlhqetfcsplit,rlhqetfcfullsplit,
   rlhqetfcfast,rlhqevb,rlhqevarsel,rlhqevarselx,rlhqedim0,rlhqetheory,
   rlhqegbred,rlhqeconnect,rlhqestrconst,rlhqegbdimmin,rlresi,rlqeasri,
   rlqeaprecise,rlqefilterbounds,rlsifaco,rlqelog,rlqeprecise,rlqevarseltry,
   rlsid,rlsiplugtheo,rlenffac,rlenffacne,rlplsimpl,rlbrkcxk,rlqeidentify,
   rlqedyn,rlqesubf,rlqevb,rlqevbold,rlgetrtypecar,rlvsllog,rlvsllearn,
   rlqestdans,rlqestdansvb,rlqefullans,rlqebacksub,rlqestdansq,rlqestdansint;

% Global
on1 'rlbrop;
off1 'rlsimpl;
off1 'rlrealtime;
off1 'rlparallel;
off1 'rlverbose;
%off1 'rlidentify;
off1 'rlnzden;
off1 'rlposden;
off1 'rladdcond;
off1 'rlgetrtypecar;

% rlcnf/rldnf (+ Gröbner)
off1 'rlbnfsm;
on1 'rlbnfsac;

% rlqe
on1 'rlqepnf;
on1 'rlqedfs;
off1 'rlqesr;
off1 'rlqeheu;
off1 'rlqegsd;
off1 'rlqeqsc;
off1 'rlqesqsc;
on1 'rlqedyn;
off1 'rlqesubf;
on1 'rlqevb;
off1 'rlqevbold;
on1 'rlqevarsel;
on1 'rlqefb;
off1 'rlqelog;          % Hack by TS to look into elimination set generation.
off1 'rlqeprecise;      % Possibly avoid epsilon and infinity with rlqe.
off1 'rlqevarseltry;    % Allow rl_varsel to return several variables.
off1 'rlqestdans;       % Remove pinf, minf, epsilon.
off1 'rlqestdansvb;
off1 'rlqefullans;      % Do not eliminate shift variables from answer.
on1 'rlqebacksub;       % Back substitution in answer.
on1 'rlqestdansq;       % Try to replace answers by quotients.
on1 'rlqestdansint;     % Try to find integer solutions.
on1 'rlqefilterbounds;  % Remove bounds w false guards before counting.
off1 'rlqeidentify;
on1 'rlqegenct;

off1 'rlbrkcxk;         % Break complex kernels. PROBABLY RLQE ONLY.

% rlqea
on1 'rlqeasri;          % Simplifier-recognized implication for pasf answers.
off1 'rlqeaprecise;     % Possibly avoid epsilon and infinity with rlqea.

% rlsimpl
on1 'rlsiso;
on1 'rlsisocx;  % simplifier sort complex subformulas
on1 'rlsiidem;
on1 'rlsichk;
on1 'rlsism;
off1 'rlsipw;
on1 'rlsipo;
on1 'rlsiatadv;
on1 'rlsipd;
on1 'rlsiexpl;
on1 'rlsiexpla;
on1 'rlsifac;
on1 'rlsitsqspl;
on1 'rlsid;             % Smart simplification of derivatives in dcfsf.
on1 'rlsiplugtheo;      % Plug in constant values of variables in the recursive theory (dcfsf only).
off1 'rlsifaco;         % Factorize lhs of ordering inequalities in simplat.

% rlgsn/rlgsc/rlgsd
on1 'rlgssub;
on1 'rlgsrad;
on1 'rlgsred;
on1 'rlgserf;
off1 'rlgsprod;
on1 'rlgsvb;
on1 'rlgsbnf;
off1 'rlgsutord;

% ???
off1 'rlopt1s;

% Susi
off1 'rlsusi;
off1 'rlsusimult;
off1 'rlsusigs;
on1 'rlsusiadd;

% rlcad
on1 'rlcaddnfformula;
off1 'rlcadpreponly;
off1 'rlcadprojonly;
off1 'rlcadextonly;
off1 'rlcadverbose;
on1  'rlcadfasteval;
off1 'rlcadfulldimonly;
on1  'rlcadtrimtree;
off1 'rlcadrawformula;
off1 'rlanuexverbose;
on1 'rlanuexgcdnormalize;
off1 'rlanuexsgnopt;
off1 'rlcaddecdeg;
on1 'rlcadte;
on1 'rlcadpbfvs;

% rlhqe
on1 'rlhqetfcsplit;  % Splits type formula computation up to degree 4.
off1 'rlhqetfcfast;  % Splits type formula computation unconditionally.
off1 'rlhqetfcfullsplit;  % Compute case distinctions only for unknown signs.
off1 'rlhqevb;          % More verbose output.
on1 'rlhqevarsel;       % Optimize variable selection in the case dim I=n.
on1 'rlhqevarselx;      % Advances optimization with more computational effort.
on1 'rlhqetheory;       % Use initial conditions for CGB computation.
off1 'rlhqedim0;        % Only zero dimensional branches.
off1 'rlhqegbred;       % Use reduced Groebner systems.
off1 'rlhqeconnect;     % Connect branches which differs only in the theory.
on1 'rlhqestrconst;     % Use combined structure constants.
on1 'rlhqegbdimmin;     % Choose maximal independent variable set with minimal cardinality in the case 0<dim<n.

% rlxopt
on1 'rlxopt;
on1 'rlxoptsb;    % select boundary type
on1 'rlxoptpl;    % passive list
on1 'rlxoptri;    % result inheritance
off1 'rlxoptric;  % result inheritance to conatiner
off1 'rlxoptrir;  % result inheritance to result
on1 'rlxoptses;   % structural elimination sets.

% rlvsl
off1 'rlvsllog;         % Extra verbose output for ofsf vs with learning.
on1 'rlvsllearn;        % Learning for ofsf vs with learning.

% DCFSF
off1 'rlenffac;         % For dcfsf.
on1 'rlenffacne;        % For dcfsf.
on1 'rlplsimpl;         % For dcfsf.

% rlresolve
on1 'rlresi;            % Implicit (local) simplification for rlresolve.

on1 'rldavgcd;
on1 'rltnft;
off1 'rlourdet;
off1 'rlvmatvb;  % Fixied switch, provides debugging within ofsfdet

put('rlidentify,'simpfg,
   '((t (rl_identifyonoff t)) (nil (rl_identifyonoff nil))));

put('rlbrkcxk,'simpfg,'((t (rmsubs)) (nil (rmsubs))));

procedure quotelog(x); 'logical;

procedure rl_getrtypecar(x);
   if !*rlgetrtypecar then rl_getrtypecar1 x else 'logical;

procedure rl_getrtypecar1(x);
   if eqcar(x,'true) or eqcar(x,'false) then
      'logical
   else
      (if w eq 'equation then 'logical else w) where w=getrtypecar x;

procedure rl_getrtypecadr(x);
   if !*rlgetrtypecar then rl_getrtypecadr1 x else 'logical;

procedure rl_getrtypecadr1(x);
   if cadr x eq 'true or cadr x eq 'false then
      'logical
   else
      (if w eq 'equation then 'logical else w) where w=getrtype cadr x;

put('logical,'tag,'!*fof);
put('logical,'evfn,'rl_reval);
put('logical,'subfn,'rl_sub!*fof);
put('logical,'lengthfn,'rl_lengthlogical);

put('true,'rtype,'logical);
put('false,'rtype,'logical);

put('!*fof,'rtypefn,'quotelog);
put('!*fof,'rl_simpfn,'rl_simp!*fof);

put('and,'rtypefn,'rl_getrtypecar);
put('and,'rl_simpfn,'rl_simpbop);
put('and,'rl_prepfn,'rl_prepbop);

put('or,'rtypefn,'rl_getrtypecar);
put('or,'rl_simpfn,'rl_simpbop);
put('or,'rl_prepfn,'rl_prepbop);

put('not,'rtypefn,'rl_getrtypecar);
put('not,'rl_simpfn,'rl_simpbop);
put('not,'rl_prepfn,'rl_prepbop);

algebraic infix impl;
put('impl,'rtypefn,'rl_getrtypecar);
put('impl,'rl_simpfn,'rl_simpbop);
put('impl,'rl_prepfn,'rl_prepbop);
put('impl,'number!-of!-args,2);

algebraic infix repl;
put('repl,'rtypefn,'rl_getrtypecar);
put('repl,'rl_simpfn,'rl_simpbop);
put('repl,'rl_prepfn,'rl_prepbop);
put('repl,'number!-of!-args,2);

algebraic infix equiv;
put('equiv,'rtypefn,'rl_getrtypecar);
put('equiv,'rl_simpfn,'rl_simpbop);
put('equiv,'rl_prepfn,'rl_prepbop);
put('equiv,'number!-of!-args,2);

flag('(impl repl equiv and or),'spaced);

precedence equiv,when;
precedence repl,equiv;
precedence impl,repl;
flag('(true false),'reserved);

put('ex,'rtypefn,'rl_getrtypecadr);
put('ex,'rl_simpfn,'rl_simpq);
put('ex,'number!-of!-args,2);
put('ex,'rl_prepfn,'rl_prepq);

put('all,'rtypefn,'rl_getrtypecadr);
put('all,'rl_simpfn,'rl_simpq);
put('all,'number!-of!-args,2);
put('all,'rl_prepfn,'rl_prepq);

put('bex,'rtypefn,'quotelog);
put('bex,'rl_simpfn,'rl_simpbq);
put('bex,'number!-of!-args,3);

put('ball,'rtypefn,'quotelog);
put('ball,'rl_simpfn,'rl_simpbq);
put('ball,'number!-of!-args,3);
put('ball,'rl_prepfn,'rl_prepbq);

flag('(rl_simpbop rl_simpq rl_simpbq rl_prepbop rl_prepq rl_prepbq),'full);

algebraic procedure rlabout();
   lisp rl_about();

asserted procedure rl_about();
   begin scalar rev, date, time, year;
      {rev, date, time} := rl_getversion();
      ioto_tprin2t {"Redlog Revision ", rev, " of ", date, ", ", time};
      year := car lto_stringSplit(date, '(!-));
      ioto_tprin2t {"(c) 1992-", year, " A. Dolzmann and T. Sturm"};
      ioto_tprin2t "http://www.redlog.eu/"
   end;

asserted procedure rl_getversion(): List3;
   begin scalar w, res; integer rev, cur;
      for each pack in get('redlog, 'known!-packages) do
	 for each mod in get(pack, 'package) do <<
	    w := lto_stringSplit(get(mod, 'revision), {'! , !$eol!$, cr!*, ff!*, tab!*});
	    if length w = 7 then <<
	       rev := lto_id2int lto_string2id nth(w, 3);
	       if rev > cur then <<
	       	  cur := rev;
 		  res := {nth(w, 3), nth(w, 4), nth(w, 5)}
	       >>
	    >> else
	       lprim lto_sconcat {"revision missing on ", lto_at2str pack, "/", lto_at2str mod}
	 >>;
      return res
   end;

inline procedure rl_op(f);
   % Reduce logic operator. [f] is a formula. Returns the top-level
   % operator of [f]. In this sense truth values are operators.
   if atom f then f else car f;

inline procedure rl_arg1(f);
   % Reduce logic argument of unary operator. [f] is a formula $\tau
   % (\phi)$ with a unary boolean top-level operator $\tau$. Returns
   % the single argument $\phi$ of $\tau$.
   cadr f;

inline procedure rl_arg2l(f);
   % Reduce logic left hand side argument of binary operator. [f] is a
   % formula $\tau(\phi_1,\phi_2)$ with a binary boolean top-level
   % operator $\tau$. Returns the left hand side argument $\phi_1$ of
   % $\tau$.
   cadr f;

inline procedure rl_arg2r(f);
   % Reduce logic right hand side argument of binary operator. [f] is
   % a formula $\tau(\phi_1,\phi_2)$ with a binary boolean top-level
   % operator $\tau$. Returns the right hand side argument $\phi_2$ of
   % $\tau$.
   caddr f;

inline procedure rl_argn(f);
   % Reduce logic argument list of n-ary operator. [f] is a formula
   % $\tau(\phi_1,...)$ with unary, binary, or $n$-ary top-level
   % operator $\tau$. Returns the arguments of $\tau$ as a list
   % $(\phi_1,...)$.
   cdr f;

inline procedure rl_var(f);
   % Reduce logic variable. [f] is a formula $Q x (\phi)$ where $Q$ is
   % a quantifier. Returns the quantified variable $x$.
   cadr f;

inline procedure rl_mat(f);
   % Reduce logic matrix. [f] is a formula $Q x (\phi)$ where $Q$ is a
   % quantifier. Returns the matrix $\phi$.
   caddr f;

inline procedure rl_b(f);
   % Reduce logic bound. [f] is a formula starting with a bounded
   % quantifier. Returns the bound.
   cadddr f;

inline procedure rl_mk1(uop,arg);
   % Reduce logic make formula for unary operator. [uop] is a unary
   % operator, [arg] is a formula. Returns the formula $[uop]([arg])$
   % with top-level operator [uop] and argument [arg].
   {uop,arg};

inline procedure rl_mk2(bop,larg,rarg);
   % Reduce logic make formula for binary operator. [bop] is a binary
   % operator, [larg] and [rarg] are formulas. Returns the formula
   % $[bop]([larg],[rarg])$ with top-level operator [bop], left hand
   % side [larg], and right hand side [rarg].
   {bop,larg,rarg};

inline procedure rl_mkn(nop,argl);
   % Reduce logic make formula for n-ary operator. [nop] is a unary,
   % binary, or $n$-ary operator; [argl] is a list $(\phi_1,...)$ of
   % formulas; for binary or $n$-ary [nop] the length of [argl] is a
   % least 2. Returns the formula $[nop](\phi_1,..)$ with top-level
   % operator [nop], and the elements of [argl] as its arguments.
   nop . argl;

inline procedure rl_smkn(nop,argl);
   % Reduce logic safe make formula for n-ary operator. [nop] is one
   % of ['and], ['or]; [argl] is a list $(\phi_1,...)$ of formulas.
   % Returns a formula. If [argl] is empty, ['true] is returned for
   % $[nop]=['and]$, and $['false]$ is returned for $[nop]=['or]$. If
   % [argl] is of length 1, its single element $\phi_1$ is returned.
   % Else the formula $[nop](\phi_1,..)$ with top-level operator
   % [nop], and the elements of [argl] as its arguments is returned.
   if argl and cdr argl then
      nop . argl
   else if null argl then
      if nop eq 'and then 'true else 'false
   else
      car argl;

inline procedure rl_mkq(q,v,m);
   % Reduce logic make quantified formula. [q] is a quantifier, [v] is
   % a variable, [m] is a formula. Returns the formula $[q] [x] ([m])$
   % which is quantified with quantifier [q], quantified variable [v],
   % and matrix [m].
   {q,v,m};

inline procedure rl_mkbq(q,v,b,m);
   % Reduce logic make quantified formula. [q] is a quantifier, [v] is
   % a variable, [b] is a fof with x as only free variable, [m] is a
   % formula. Returns a formula which is quantified with quantifier
   % [q], quantified variable [v], which is restricted by [b] and
   % matrix [m].
   {q,v,m,b};

inline procedure rl_quap(x);
   % Reduce logic quantifier predicate. [x] is any S-expression.
   % Returns non-[nil] iff [x] is a quantifier.
   x eq 'ex or x eq 'all;

inline procedure rl_bquap(x);
   % Reduce logic bounded quantifier predicate. [x] is any
   % S-expression. Returns non-[nil] iff [x] is a bounded quantifier.
   x eq 'bex or x eq 'ball;

inline procedure rl_junctp(x);
   % Reduce logic junctor predicate. [x] is any S-expression. Returns
   % non-[nil] iff [x] is one of ['and], ['or] which we refer to as
   % junctors.
   x eq 'or or x eq 'and;

inline procedure rl_basbp(x);
   % Reduce logic basic boolean operator predicate. [x] is any
   % S-expression. Returns non-[nil] iff [x] is a junctor or ['not].
   % We refer to these as basic boolean operators.
   rl_junctp x or x eq 'not;

inline procedure rl_extbp(x);
   % Reduce logic extended boolean operator predicate. [x] is any
   % S-expression. Returns non-[nil] iff [x] is one of ['impl],
   % ['repl], or ['equiv]. We refer to these as basic boolean
   % operators.
   x eq 'impl or x eq 'repl or x eq 'equiv;

inline procedure rl_boolp(x);
   % Reduce logic boolean operator predicate. [x] is any S-expression.
   % Returns non-[nil] iff [x] is a boolean operator, i.e. one of
   % ['and], ['or], ['not], ['impl], ['repl], or ['equiv].
   rl_basbp x or rl_extbp x;

inline procedure rl_tvalp(x);
   % Reduce logic truth value predicate. [x] is any S-expression.
   % Returns non-[nil] iff [x] is one of ['true], ['false].
   x eq 'true or x eq 'false;

inline procedure rl_externalp(x);
   get(x,'rl_external);

inline procedure rl_cxp(x);
   % Reduce logic complex, i.e., non-atomic, operator predicate.
   rl_tvalp x or rl_boolp x or rl_quap x or rl_bquap x or rl_externalp x;

procedure rl_external(x,f);
   begin scalar w;
      w := get(x,'rl_external);
      if w then <<
	 w := atsoc(f,w);
      	 if w then
	    return cdr w
      >>
   end;

procedure rl_mkexternal(x,f,xf);
   begin scalar al,w;
      al := get(x,'rl_external);
      w := atsoc(f,al);
      if w then
	 cdr w := xf
      else
	 al := (f . xf) . al;
      return put(x,'rl_external,al)
   end;

endmodule;  % [redlog]

end;  % of file
