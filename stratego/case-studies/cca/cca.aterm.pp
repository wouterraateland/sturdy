Specification(
  [ Signature(
      [ Constructors(
          [ OpDecl("Nil", ConstType(Sort("List", [SortVar("a")])))
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortVar("a")), ConstType(Sort("List", [SortVar("a")]))]
              , ConstType(Sort("List", [SortVar("a")]))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ ConstType(Sort("List", [SortVar("a")]))
                , ConstType(Sort("List", [SortVar("a")]))
                ]
              , ConstType(Sort("List", [SortVar("a")]))
              )
            )
          , OpDeclInj(ConstType(SortTuple([])))
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a"))]
              , ConstType(SortTuple([SortVar("a")]))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a")), ConstType(SortVar("b"))]
              , ConstType(SortTuple([SortVar("a"), SortVar("b")]))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a")), ConstType(SortVar("b")), ConstType(SortVar("c"))]
              , ConstType(
                  SortTuple([SortVar("a"), SortVar("b"), SortVar("c")])
                )
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Empty"))], ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclListSem"))], ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Empty"))], ConstType(SortNoArgs("OffsideDeclList_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideDeclList"))], ConstType(SortNoArgs("OffsideDeclList_Empty0")))
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListStarOfCharClass0")), ConstType(SortNoArgs("ListPlusOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListPlusOfCharClass0")), ConstType(SortNoArgs("ListStarOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListPlusOfCharClass0")), ConstType(SortNoArgs("ListPlusOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortNoArgs("Int")), ConstType(SortNoArgs("ListStarOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "StmtSeq"
            , FunType(
                [ConstType(SortNoArgs("OffsideStmt")), ConstType(SortNoArgs("OffsideStmt"))]
              , ConstType(SortNoArgs("OffsideStmt"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Stmt"))], ConstType(SortNoArgs("OffsideStmt")))
            )
          , OpDecl(
              "DeclSeq"
            , FunType(
                [ConstType(SortNoArgs("OffsideDecl")), ConstType(SortNoArgs("Decl"))]
              , ConstType(SortNoArgs("OffsideDecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("OffsideDecl")))
            )
          , OpDecl(
              "AltSeq"
            , FunType(
                [ConstType(SortNoArgs("OffsideAlt")), ConstType(SortNoArgs("Alt"))]
              , ConstType(SortNoArgs("OffsideAlt"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Alt"))], ConstType(SortNoArgs("OffsideAlt")))
            )
          , OpDecl(
              "TopdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("Topdecl")), ConstType(SortNoArgs("OffsideTopdecl"))]
              , ConstType(SortNoArgs("OffsideTopdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Topdecl"))], ConstType(SortNoArgs("OffsideTopdecl")))
            )
          , OpDecl(
              "ImportdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("Importdecl")), ConstType(SortNoArgs("OffsideImportdecl"))]
              , ConstType(SortNoArgs("OffsideImportdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Importdecl"))], ConstType(SortNoArgs("OffsideImportdecl")))
            )
          , OpDecl(
              "FloatHash"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Float-HASH")))
            )
          , OpDecl(
              "IntegerHash"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Integer-HASH")))
            )
          , OpDecl(
              "StringHash"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("StringChar")]))]
              , ConstType(SortNoArgs("String-HASH"))
              )
            )
          , OpDecl(
              "CharHash"
            , FunType([ConstType(SortNoArgs("CharChar"))], ConstType(SortNoArgs("Char-HASH")))
            )
          , OpDecl(
              "FlexibleContext"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("FlexibleClass")]))]
              , ConstType(SortNoArgs("FlexibleContext"))
              )
            )
          , OpDecl(
              "FlexibleContext"
            , FunType([ConstType(SortNoArgs("FlexibleClass"))], ConstType(SortNoArgs("FlexibleContext")))
            )
          , OpDecl(
              "SimpleClass"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDecl(
              "Class"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Gtycon"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDecl(
              "Class"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideStmt"))], ConstType(SortNoArgs("OffsideStmtList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Stmt"))], ConstType(SortNoArgs("NoOffsideStmt")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmtList"))], ConstType(SortNoArgs("NoOffsideStmtListSem")))
            )
          , OpDecl(
              "StmtSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideStmt")), ConstType(SortNoArgs("NoOffsideStmtList"))]
              , ConstType(SortNoArgs("NoOffsideStmtList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmt"))], ConstType(SortNoArgs("NoOffsideStmtList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmtListSem"))], ConstType(SortNoArgs("NoOffsideStmtBlock")))
            )
          , OpDecl(
              "StmtList"
            , FunType([ConstType(SortNoArgs("OffsideStmtList"))], ConstType(SortNoArgs("StmtList")))
            )
          , OpDecl(
              "StmtList"
            , FunType([ConstType(SortNoArgs("NoOffsideStmtBlock"))], ConstType(SortNoArgs("StmtList")))
            )
          , OpDecl(
              "FBind"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Fbind"))
              )
            )
          , OpDecl(
              "LetStmt"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("Stmt")))
            )
          , OpDecl(
              "ExpStmt"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Stmt")))
            )
          , OpDecl(
              "BindStmt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Stmt"))
              )
            )
          , OpDecl(
              "ListCompr"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("Qual")]))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFirstFromTo"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFromTo"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFirstFrom"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFrom"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("List")))
            )
          , OpDecl(
              "List"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Exp")]))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "QualLet"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("Qual")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Qual")))
            )
          , OpDecl(
              "QualBind"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Qual"))
              )
            )
          , OpDecl(
              "PatBind"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Pat"))]
              , ConstType(SortNoArgs("FPat"))
              )
            )
          , OpDecl(
              "LabeledPats"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("FPat")]))]
              , ConstType(SortNoArgs("LabeledPat"))
              )
            )
          , OpDecl(
              "Irrefutable"
            , FunType([ConstType(SortNoArgs("APat"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "List"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Pat")]))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDecl(
              "Tuple"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(Sort("List", [SortNoArgs("Pat")]))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Pat"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl("Wildcard", ConstType(SortNoArgs("APat")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "Labeled"
            , FunType(
                [ConstType(SortNoArgs("Qcon")), ConstType(SortNoArgs("LabeledPat"))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDecl(
              "Constr"
            , FunType([ConstType(SortNoArgs("Gcon"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "Named"
            , FunType(
                [ConstType(SortNoArgs("Var")), ConstType(SortNoArgs("APat"))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Var"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "ConstrApp"
            , FunType(
                [ConstType(SortNoArgs("Gcon")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("LPat"))
              )
            )
          , OpDecl(
              "Negation"
            , FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("LPat")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("APat"))], ConstType(SortNoArgs("LPat")))
            )
          , OpDecl(
              "BinOpApp"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Qconop")), ConstType(SortNoArgs("LPat"))]
              , ConstType(SortNoArgs("Pat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("LPat"))], ConstType(SortNoArgs("Pat")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideDecl"))], ConstType(SortNoArgs("OffsideDeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("NoOffsideDecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclList"))], ConstType(SortNoArgs("NoOffsideDeclListSem")))
            )
          , OpDecl(
              "DeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideDecl")), ConstType(SortNoArgs("NoOffsideDeclList"))]
              , ConstType(SortNoArgs("NoOffsideDeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDecl"))], ConstType(SortNoArgs("NoOffsideDeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0"))], ConstType(SortNoArgs("NoOffsideDeclBlock")))
            )
          , OpDecl(
              "DeclList"
            , FunType([ConstType(SortNoArgs("OffsideDeclList_Empty0"))], ConstType(SortNoArgs("DeclList")))
            )
          , OpDecl(
              "DeclList"
            , FunType([ConstType(SortNoArgs("NoOffsideDeclBlock"))], ConstType(SortNoArgs("DeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("DeclList"))], ConstType(SortNoArgs("Declbinds")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Where"))], ConstType(SortNoArgs("MaybeWhere")))
            )
          , OpDecl(
              "Where"
            , FunType([ConstType(SortNoArgs("DeclList"))], ConstType(SortNoArgs("Where")))
            )
          , OpDecl(
              "NestedFunLHS"
            , FunType(
                [ConstType(SortNoArgs("FunLHS")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDecl(
              "OpFunLHS"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Varop")), ConstType(SortNoArgs("Pat"))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDecl(
              "VarFunLHS"
            , FunType(
                [ConstType(SortNoArgs("Var")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Pat"))], ConstType(SortNoArgs("FunLHS")))
            )
          , OpDecl(
              "Guarded"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Gdrh"))
              )
            )
          , OpDecl(
              "GdValdef"
            , FunType(
                [ ConstType(SortNoArgs("FunLHS"))
                , ConstType(Sort("List", [SortNoArgs("Gdrh")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Valdef"))
              )
            )
          , OpDecl(
              "Valdef"
            , FunType(
                [ConstType(SortNoArgs("FunLHS")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("Valdef"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideAlt"))], ConstType(SortNoArgs("OffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Alt"))], ConstType(SortNoArgs("NoOffsideAlt")))
            )
          , OpDecl(
              "AltSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideAlt")), ConstType(SortNoArgs("NoOffsideAltList"))]
              , ConstType(SortNoArgs("NoOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideAlt"))], ConstType(SortNoArgs("NoOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideAltList"))], ConstType(SortNoArgs("NoOffsideAltBlock")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("OffsideAltList"))], ConstType(SortNoArgs("AltList")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("NoOffsideAltBlock"))], ConstType(SortNoArgs("AltList")))
            )
          , OpDecl(
              "GdPat"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Gdpat"))
              )
            )
          , OpDecl(
              "GdAlt"
            , FunType(
                [ ConstType(SortNoArgs("Pat"))
                , ConstType(Sort("List", [SortNoArgs("Gdpat")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Alt"))
              )
            )
          , OpDecl(
              "Alt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("Alt"))
              )
            )
          , OpDecl(
              "LabelBinds"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Fbind")]))]
              , ConstType(SortNoArgs("LabelBinds"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qop"))], ConstType(SortNoArgs("QopNoNeg")))
            )
          , OpDecl(
              "FixDecl"
            , FunType(
                [ConstType(SortNoArgs("Infix")), ConstType(SortNoArgs("Prec")), ConstType(SortNoArgs("Ops"))]
              , ConstType(SortNoArgs("Fixdecl"))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(Sort("List", [SortNoArgs("Op")]))]
              , ConstType(SortNoArgs("Ops"))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(Sort("Option", [SortNoArgs("INTEGER")]))]
              , ConstType(SortNoArgs("Prec"))
              )
            )
          , OpDecl("InfixR", ConstType(SortNoArgs("Infix")))
          , OpDecl("InfixL", ConstType(SortNoArgs("Infix")))
          , OpDecl("Infix", ConstType(SortNoArgs("Infix")))
          , OpDeclInj(
              FunType(
                [ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("Fargs"))
              )
            )
          , OpDecl(
              "ECons"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("Exp")]))]
              , ConstType(SortNoArgs("Exps2"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("AnyExp")))
            )
          , OpDecl(
              "ArrOpApp"
            , FunType(
                [ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("Qop")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrForm"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("ArrCommand")]))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrAppBin"
            , FunType(
                [ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrDo"
            , FunType([ConstType(SortNoArgs("ArrStmtList"))], ConstType(SortNoArgs("ArrCommand")))
            )
          , OpDecl(
              "ArrCase"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("ArrAltList"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrIf"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrLet"
            , FunType(
                [ConstType(SortNoArgs("Declbinds")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrAbs"
            , FunType(
                [ConstType(SortNoArgs("Fargs")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrHigher"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrFirst"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "Typed"
            , FunType(
                [ ConstType(SortNoArgs("Exp"))
                , ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Negation"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Labeled"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("LabelBinds"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Named"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "OpApp"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Qop")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "AppBin"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("List"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Case"
            , FunType(
                [ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("AltList"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Do"
            , FunType([ConstType(SortNoArgs("StmtList"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "If"
            , FunType(
                [ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Let"
            , FunType(
                [ConstType(SortNoArgs("Declbinds")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Abs"
            , FunType(
                [ConstType(SortNoArgs("Fargs")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "RSection"
            , FunType(
                [ConstType(SortNoArgs("QopNoNeg")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "LSection"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Qop"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Product"
            , FunType([ConstType(SortNoArgs("Exps2"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Lit"
            , FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Constr"
            , FunType([ConstType(SortNoArgs("Gcon"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Var"
            , FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "ArrProcedure"
            , FunType(
                [ConstType(SortNoArgs("APat")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "ArrStmtSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrImplStmt")), ConstType(SortNoArgs("ArrImplStmtList"))]
              , ConstType(SortNoArgs("ArrImplStmtList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrImplStmt"))], ConstType(SortNoArgs("ArrImplStmtList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrStmt"))], ConstType(SortNoArgs("ArrImplStmt")))
            )
          , OpDecl(
              "ArrStmtSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrStmt")), ConstType(SortNoArgs("ArrExplStmtList"))]
              , ConstType(SortNoArgs("ArrExplStmtList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrStmt"))], ConstType(SortNoArgs("ArrExplStmtList")))
            )
          , OpDecl(
              "ArrStmtList"
            , FunType([ConstType(SortNoArgs("ArrImplStmtList"))], ConstType(SortNoArgs("ArrStmtList")))
            )
          , OpDecl(
              "ArrStmtList"
            , FunType([ConstType(SortNoArgs("ArrExplStmtList"))], ConstType(SortNoArgs("ArrStmtList")))
            )
          , OpDecl(
              "ArrCmdStmt"
            , FunType([ConstType(SortNoArgs("ArrCommand"))], ConstType(SortNoArgs("ArrStmt")))
            )
          , OpDecl(
              "ArrBindStmt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrStmt"))
              )
            )
          , OpDecl(
              "ArrLetStmt"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("ArrStmt")))
            )
          , OpDecl(
              "ArrAltSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrOffsideAlt")), ConstType(SortNoArgs("ArrOffsideAltList"))]
              , ConstType(SortNoArgs("ArrOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrOffsideAlt"))], ConstType(SortNoArgs("ArrOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrAlt"))], ConstType(SortNoArgs("ArrOffsideAlt")))
            )
          , OpDecl(
              "ArrAltSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrAlt")), ConstType(SortNoArgs("ArrNoOffsideAltList"))]
              , ConstType(SortNoArgs("ArrNoOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrAlt"))], ConstType(SortNoArgs("ArrNoOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrNoOffsideAltList"))], ConstType(SortNoArgs("ArrNoOffsideAltBlock")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("ArrOffsideAltList"))], ConstType(SortNoArgs("ArrAltList")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("ArrNoOffsideAltBlock"))], ConstType(SortNoArgs("ArrAltList")))
            )
          , OpDecl(
              "ArrAlt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("ArrAlt"))
              )
            )
          , OpDecl(
              "SignDecl"
            , FunType(
                [ ConstType(SortNoArgs("Vars"))
                , ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Signdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Valdef"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Fixdecl"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Signdecl"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDecl(
              "Class"
            , FunType(
                [ ConstType(SortNoArgs("Qtycls"))
                , ConstType(SortNoArgs("Tyvar"))
                , ConstType(Sort("List", [SortNoArgs("AType")]))
                ]
              , ConstType(SortNoArgs("Class"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("SimpleClass"))], ConstType(SortNoArgs("Class")))
            )
          , OpDecl(
              "SimpleClass"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("SimpleClass"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("FlexibleContext"))], ConstType(SortNoArgs("SContext")))
            )
          , OpDecl(
              "SContext"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("SimpleClass")]))]
              , ConstType(SortNoArgs("SContext"))
              )
            )
          , OpDecl(
              "SContext"
            , FunType([ConstType(SortNoArgs("SimpleClass"))], ConstType(SortNoArgs("SContext")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("FlexibleContext"))], ConstType(SortNoArgs("Context")))
            )
          , OpDecl(
              "Context"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Class")]))]
              , ConstType(SortNoArgs("Context"))
              )
            )
          , OpDecl(
              "Context"
            , FunType([ConstType(SortNoArgs("Class"))], ConstType(SortNoArgs("Context")))
            )
          , OpDecl(
              "InstArrow"
            , FunType(
                [ConstType(SortNoArgs("Tyvar")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstList"
            , FunType([ConstType(SortNoArgs("Tyvar"))], ConstType(SortNoArgs("Inst")))
            )
          , OpDecl(
              "InstTuple"
            , FunType(
                [ConstType(SortNoArgs("Tyvar")), ConstType(Sort("List", [SortNoArgs("Tyvar")]))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstApp"
            , FunType(
                [ConstType(SortNoArgs("Gtycon")), ConstType(Sort("List", [SortNoArgs("Tyvar")]))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstCons"
            , FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("Inst")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("Sbtype")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("AType"))], ConstType(SortNoArgs("Satype")))
            )
          , OpDecl(
              "InfixConstr"
            , FunType(
                [ConstType(SortNoArgs("Sbtype")), ConstType(SortNoArgs("Conop")), ConstType(SortNoArgs("Sbtype"))]
              , ConstType(SortNoArgs("Constr"))
              )
            )
          , OpDecl(
              "ConstrDecl"
            , FunType(
                [ConstType(SortNoArgs("Conid")), ConstType(Sort("List", [SortNoArgs("Satype")]))]
              , ConstType(SortNoArgs("Constr"))
              )
            )
          , OpDecl(
              "ConstrDecls"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Constr")]))]
              , ConstType(SortNoArgs("Constrs"))
              )
            )
          , OpDecl("NoConstrDecls", ConstType(SortNoArgs("Constrs")))
          , OpDecl(
              "Derive"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Qtycls")]))]
              , ConstType(SortNoArgs("Deriving"))
              )
            )
          , OpDecl("NoDeriving", ConstType(SortNoArgs("Deriving")))
          , OpDecl(
              "Derive"
            , FunType([ConstType(SortNoArgs("Qtycls"))], ConstType(SortNoArgs("Deriving")))
            )
          , OpDecl(
              "TFunBin"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("Type"))
              )
            )
          , OpDecl(
              "TAppBin"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("Type"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("AType"))], ConstType(SortNoArgs("Type")))
            )
          , OpDecl(
              "TProd"
            , FunType([ConstType(SortNoArgs("Types2"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TList"
            , FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("AType")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TVar"
            , FunType([ConstType(SortNoArgs("Tyvar"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TCon"
            , FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TCons"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(Sort("List", [SortNoArgs("Type")]))]
              , ConstType(SortNoArgs("Types2"))
              )
            )
          , OpDecl("TList", ConstType(SortNoArgs("Gtycon")))
          , OpDecl("TUnit", ConstType(SortNoArgs("Gtycon")))
          , OpDecl("TArrow", ConstType(SortNoArgs("Gtycon")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qtycon"))], ConstType(SortNoArgs("Gtycon")))
            )
          , OpDecl(
              "Hiding"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Impspec")))
            )
          , OpDecl(
              "Impspec"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Impspec")))
            )
          , OpDecl(
              "As"
            , FunType([ConstType(SortNoArgs("Modid"))], ConstType(SortNoArgs("As")))
            )
          , OpDecl("Qualified", ConstType(SortNoArgs("Qualified")))
          , OpDecl("SOURCE", ConstType(SortNoArgs("Src")))
          , OpDecl(
              "Import"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("Src")]))
                , ConstType(Sort("Option", [SortNoArgs("Qualified")]))
                , ConstType(SortNoArgs("Modid"))
                , ConstType(Sort("Option", [SortNoArgs("As")]))
                , ConstType(Sort("Option", [SortNoArgs("Impspec")]))
                ]
              , ConstType(SortNoArgs("Importdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("Export")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Export")))
            )
          , OpDecl(
              "Exports"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Exports")))
            )
          , OpDecl(
              "Exportlist"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Export")]))]
              , ConstType(SortNoArgs("Exportlist"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideTopdecl"))], ConstType(SortNoArgs("OffsideTopdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideImportdecl"))], ConstType(SortNoArgs("OffsideImportdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Topdecl"))], ConstType(SortNoArgs("NoOffsideTopdecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideTopdeclList"))], ConstType(SortNoArgs("NoOffsideTopdeclListSem")))
            )
          , OpDecl(
              "TopdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideTopdecl")), ConstType(SortNoArgs("NoOffsideTopdeclList"))]
              , ConstType(SortNoArgs("NoOffsideTopdeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideTopdecl"))], ConstType(SortNoArgs("NoOffsideTopdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Importdecl"))], ConstType(SortNoArgs("NoOffsideImportdecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideImportdeclList"))], ConstType(SortNoArgs("NoOffsideImportdeclListSem")))
            )
          , OpDecl(
              "ImportdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdecl")), ConstType(SortNoArgs("NoOffsideImportdeclList"))]
              , ConstType(SortNoArgs("NoOffsideImportdeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideImportdecl"))], ConstType(SortNoArgs("NoOffsideImportdeclList")))
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("OffsideImportdeclList")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("OffsideTopdeclList"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdeclListSem")), ConstType(SortNoArgs("NoOffsideTopdeclList"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdeclListSem")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("NoOffsideTopdeclListSem"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl("Empty", ConstType(SortNoArgs("Empty")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideBody"))], ConstType(SortNoArgs("Body")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideBody"))], ConstType(SortNoArgs("Body")))
            )
          , OpDecl(
              "FlexibleInstance"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Qtycls"))
                , ConstType(Sort("List", [SortNoArgs("AType")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Default"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Type")]))]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Instance"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Qtycls"))
                , ConstType(Sort("List", [SortNoArgs("Inst")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Class"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Tycls"))
                , ConstType(SortNoArgs("Tyvar"))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Data"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                , ConstType(SortNoArgs("Constrs"))
                , ConstType(SortNoArgs("Deriving"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "TypeDecl"
            , FunType(
                [ ConstType(SortNoArgs("Tycon"))
                , ConstType(Sort("List", [SortNoArgs("Tyvar")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("Topdecl")))
            )
          , OpDecl(
              "Program"
            , FunType([ConstType(SortNoArgs("Body"))], ConstType(SortNoArgs("Module")))
            )
          , OpDecl(
              "Module"
            , FunType(
                [ConstType(SortNoArgs("ModuleDec")), ConstType(SortNoArgs("Body"))]
              , ConstType(SortNoArgs("Module"))
              )
            )
          , OpDecl(
              "ModuleDec"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(Sort("Option", [SortNoArgs("Exports")]))]
              , ConstType(SortNoArgs("ModuleDec"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Float-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Integer-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Char-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "CLitLit"
            , FunType([ConstType(SortNoArgs("CLITLIT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimDouble"
            , FunType([ConstType(SortNoArgs("PRIMDOUBLE"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimFloat"
            , FunType([ConstType(SortNoArgs("PRIMFLOAT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimString"
            , FunType([ConstType(SortNoArgs("PRIMSTRING"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimChar"
            , FunType([ConstType(SortNoArgs("PRIMCHAR"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimInt"
            , FunType([ConstType(SortNoArgs("PRIMINTEGER"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Float"
            , FunType([ConstType(SortNoArgs("RATIONAL"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Float"
            , FunType([ConstType(SortNoArgs("FLOAT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Char"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Int"
            , FunType([ConstType(SortNoArgs("INTEGER"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "HexadecimalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "OctalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "DecimalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "ASCIIEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "CharEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "Gap"
            , FunType([ConstType(SortNoArgs("ListPlusOfCharClass0"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDecl(
              "Escape"
            , FunType([ConstType(SortNoArgs("Escape"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDecl(
              "Escape"
            , FunType([ConstType(SortNoArgs("Escape"))], ConstType(SortNoArgs("CharChar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CharChar")))
            )
          , OpDecl(
              "String"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("StringChar")]))]
              , ConstType(SortNoArgs("String"))
              )
            )
          , OpDecl(
              "Char"
            , FunType([ConstType(SortNoArgs("CharChar"))], ConstType(SortNoArgs("Char")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CLITLIT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMDOUBLE")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMFLOAT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMINTEGER")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMSTRING")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMCHAR")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("RATIONAL")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("FLOAT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("INTEGER")))
            )
          , OpDecl(
              "QModId"
            , FunType(
                [ConstType(SortNoArgs("String")), ConstType(SortNoArgs("QModid"))]
              , ConstType(SortNoArgs("QModid"))
              )
            )
          , OpDecl(
              "QModId"
            , FunType(
                [ConstType(SortNoArgs("String")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QModid"))
              )
            )
          , OpDecl(
              "QConSym"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QCONSYM"))
              )
            )
          , OpDecl(
              "QVarSym"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QVARSYM"))
              )
            )
          , OpDecl(
              "QConId"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QCONID"))
              )
            )
          , OpDecl(
              "QVarId"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QVARID"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QModid"))], ConstType(SortNoArgs("Modid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Modid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONID"))], ConstType(SortNoArgs("Qconid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Conid"))], ConstType(SortNoArgs("Qconid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONID"))], ConstType(SortNoArgs("Conid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qtycon"))], ConstType(SortNoArgs("Qtycls")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Tycon"))], ConstType(SortNoArgs("Tycls")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONID"))], ConstType(SortNoArgs("Qtycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Tycon"))], ConstType(SortNoArgs("Qtycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONID"))], ConstType(SortNoArgs("Tycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QVARSYM"))], ConstType(SortNoArgs("Qvarsym1")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("VARSYM"))], ConstType(SortNoArgs("Varsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconid"))], ConstType(SortNoArgs("Qcon")))
            )
          , OpDecl(
              "BinCon"
            , FunType([ConstType(SortNoArgs("Qconsym"))], ConstType(SortNoArgs("Qcon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONSYM"))], ConstType(SortNoArgs("Consym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONSYM"))], ConstType(SortNoArgs("Qconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Consym"))], ConstType(SortNoArgs("Qconsym")))
            )
          , OpDecl(
              "ConsOp"
            , FunType([ConstType(SortNoArgs("CONSOP"))], ConstType(SortNoArgs("ConsOp")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ConsOp"))], ConstType(SortNoArgs("Gconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconsym"))], ConstType(SortNoArgs("Gconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconop"))], ConstType(SortNoArgs("Qop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarop"))], ConstType(SortNoArgs("Qop")))
            )
          , OpDecl(
              "PrefCon"
            , FunType([ConstType(SortNoArgs("Qconid"))], ConstType(SortNoArgs("Qconop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Gconsym"))], ConstType(SortNoArgs("Qconop")))
            )
          , OpDecl(
              "PrefCon"
            , FunType([ConstType(SortNoArgs("Conid"))], ConstType(SortNoArgs("Conop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Consym"))], ConstType(SortNoArgs("Conop")))
            )
          , OpDecl(
              "PrefOp"
            , FunType([ConstType(SortNoArgs("Qvarid"))], ConstType(SortNoArgs("Qvarop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarsym"))], ConstType(SortNoArgs("Qvarop")))
            )
          , OpDecl(
              "PrefOp"
            , FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Varop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Varop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarsym1"))], ConstType(SortNoArgs("Qvarsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Qvarsym")))
            )
          , OpDecl(
              "ConOp"
            , FunType([ConstType(SortNoArgs("Conop"))], ConstType(SortNoArgs("Op")))
            )
          , OpDecl(
              "Op"
            , FunType([ConstType(SortNoArgs("Varop"))], ConstType(SortNoArgs("Op")))
            )
          , OpDecl(
              "BinOp"
            , FunType([ConstType(SortNoArgs("Qvarsym"))], ConstType(SortNoArgs("Qvar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarid"))], ConstType(SortNoArgs("Qvar")))
            )
          , OpDecl(
              "BinOp"
            , FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Var")))
            )
          , OpDecl(
              "Var"
            , FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Var")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QVARID"))], ConstType(SortNoArgs("Qvarid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Qvarid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qcon"))], ConstType(SortNoArgs("Gcon")))
            )
          , OpDecl("EmptyList", ConstType(SortNoArgs("Gcon")))
          , OpDecl("Unit", ConstType(SortNoArgs("Gcon")))
          , OpDecl(
              "Ins"
            , FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Vars")))
            )
          , OpDecl(
              "Snoc"
            , FunType(
                [ConstType(SortNoArgs("Vars")), ConstType(SortNoArgs("Var"))]
              , ConstType(SortNoArgs("Vars"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Tyvar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Varid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONSOP")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONSYM")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("VARSYM")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONID")))
            )
          ]
        )
      ]
    )
  , Strategies(
      [ SDefT(
          "step_0_0"
        , []
        , []
        , GuardedLChoice(
            Scope(
              ["c_11", "d_11"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      "OpApp"
                    , [ Anno(
                          Op(
                            "AppBin"
                          , [ Anno(
                                Op("Var", [Anno(Str("arr"), Wld())])
                              , Wld()
                              )
                            , Var("d_11")
                            ]
                          )
                        , Wld()
                        )
                      , Anno(Str(">>>"), Wld())
                      , Anno(
                          Op(
                            "AppBin"
                          , [ Anno(
                                Op("Var", [Anno(Str("arr"), Wld())])
                              , Wld()
                              )
                            , Var("c_11")
                            ]
                          )
                        , Wld()
                        )
                      ]
                    )
                  , Wld()
                  )
                )
              , Build(
                  Anno(
                    Op(
                      "AppBin"
                    , [ Anno(
                          Op(
                            "Var"
                          , [Anno(Str("arr"), Op("Nil", []))]
                          )
                        , Op("Nil", [])
                        )
                      , Anno(
                          Op(
                            "OpApp"
                          , [ Var("c_11")
                            , Anno(Str("."), Op("Nil", []))
                            , Var("d_11")
                            ]
                          )
                        , Op("Nil", [])
                        )
                      ]
                    )
                  , Op("Nil", [])
                  )
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["z_10", "a_11", "b_11"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        "OpApp"
                      , [ Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op("Var", [Anno(Str("arr"), Wld())])
                                , Wld()
                                )
                              , Var("b_11")
                              ]
                            )
                          , Wld()
                          )
                        , Anno(Str(">>>"), Wld())
                        , Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op(
                                    "AppBin"
                                  , [ Anno(
                                        Op("Var", [Anno(Str("loopD"), Wld())])
                                      , Wld()
                                      )
                                    , Var("z_10")
                                    ]
                                  )
                                , Wld()
                                )
                              , Var("a_11")
                              ]
                            )
                          , Wld()
                          )
                        ]
                      )
                    , Wld()
                    )
                  )
                , Build(
                    Anno(
                      Op(
                        "AppBin"
                      , [ Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op(
                                    "Var"
                                  , [Anno(Str("loopD"), Op("Nil", []))]
                                  )
                                , Op("Nil", [])
                                )
                              , Var("z_10")
                              ]
                            )
                          , Op("Nil", [])
                          )
                        , Anno(
                            Op(
                              "OpApp"
                            , [ Var("a_11")
                              , Anno(Str("."), Op("Nil", []))
                              , Anno(
                                  Op(
                                    "OpApp"
                                  , [ Var("b_11")
                                    , Anno(Str("***"), Op("Nil", []))
                                    , Anno(
                                        Op(
                                          "Var"
                                        , [Anno(Str("id"), Op("Nil", []))]
                                        )
                                      , Op("Nil", [])
                                      )
                                    ]
                                  )
                                , Op("Nil", [])
                                )
                              ]
                            )
                          , Op("Nil", [])
                          )
                        ]
                      )
                    , Op("Nil", [])
                    )
                  )
                )
              )
            , Id()
            , GuardedLChoice(
                Scope(
                  ["w_10", "x_10", "y_10"]
                , Seq(
                    Match(
                      Anno(
                        Op(
                          "OpApp"
                        , [ Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op("Var", [Anno(Str("loopD"), Wld())])
                                        , Wld()
                                        )
                                      , Var("w_10")
                                      ]
                                    )
                                  , Wld()
                                  )
                                , Var("y_10")
                                ]
                              )
                            , Wld()
                            )
                          , Anno(Str(">>>"), Wld())
                          , Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op("Var", [Anno(Str("arr"), Wld())])
                                  , Wld()
                                  )
                                , Var("x_10")
                                ]
                              )
                            , Wld()
                            )
                          ]
                        )
                      , Wld()
                      )
                    )
                  , Build(
                      Anno(
                        Op(
                          "AppBin"
                        , [ Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op(
                                      "Var"
                                    , [Anno(Str("loopD"), Op("Nil", []))]
                                    )
                                  , Op("Nil", [])
                                  )
                                , Var("w_10")
                                ]
                              )
                            , Op("Nil", [])
                            )
                          , Anno(
                              Op(
                                "OpApp"
                              , [ Anno(
                                    Op(
                                      "OpApp"
                                    , [ Var("x_10")
                                      , Anno(Str("***"), Op("Nil", []))
                                      , Anno(
                                          Op(
                                            "Var"
                                          , [Anno(Str("id"), Op("Nil", []))]
                                          )
                                        , Op("Nil", [])
                                        )
                                      ]
                                    )
                                  , Op("Nil", [])
                                  )
                                , Anno(Str("."), Op("Nil", []))
                                , Var("y_10")
                                ]
                              )
                            , Op("Nil", [])
                            )
                          ]
                        )
                      , Op("Nil", [])
                      )
                    )
                  )
                )
              , Id()
              , GuardedLChoice(
                  Scope(
                    ["s_10", "t_10", "u_10", "v_10"]
                  , Seq(
                      Match(
                        Anno(
                          Op(
                            "OpApp"
                          , [ Anno(
                                Op(
                                  "AppBin"
                                , [ Anno(
                                      Op(
                                        "AppBin"
                                      , [ Anno(
                                            Op("Var", [Anno(Str("loopD"), Wld())])
                                          , Wld()
                                          )
                                        , Var("s_10")
                                        ]
                                      )
                                    , Wld()
                                    )
                                  , Var("v_10")
                                  ]
                                )
                              , Wld()
                              )
                            , Anno(Str(">>>"), Wld())
                            , Anno(
                                Op(
                                  "AppBin"
                                , [ Anno(
                                      Op(
                                        "AppBin"
                                      , [ Anno(
                                            Op("Var", [Anno(Str("loopD"), Wld())])
                                          , Wld()
                                          )
                                        , Var("t_10")
                                        ]
                                      )
                                    , Wld()
                                    )
                                  , Var("u_10")
                                  ]
                                )
                              , Wld()
                              )
                            ]
                          )
                        , Wld()
                        )
                      )
                    , Build(
                        Anno(
                          Op(
                            "AppBin"
                          , [ Anno(
                                Op(
                                  "AppBin"
                                , [ Anno(
                                      Op(
                                        "Var"
                                      , [Anno(Str("loopD"), Op("Nil", []))]
                                      )
                                    , Op("Nil", [])
                                    )
                                  , Anno(
                                      Op(
                                        "Product"
                                      , [ Anno(
                                            Op(
                                              "ECons"
                                            , [ Var("s_10")
                                              , Anno(
                                                  Op(
                                                    "Cons"
                                                  , [Var("t_10"), Anno(Op("Nil", []), Op("Nil", []))]
                                                  )
                                                , Op("Nil", [])
                                                )
                                              ]
                                            )
                                          , Op("Nil", [])
                                          )
                                        ]
                                      )
                                    , Op("Nil", [])
                                    )
                                  ]
                                )
                              , Op("Nil", [])
                              )
                            , Anno(
                                Op(
                                  "AppBin"
                                , [ Anno(
                                      Op(
                                        "Var"
                                      , [Anno(Str("assoc'"), Op("Nil", []))]
                                      )
                                    , Op("Nil", [])
                                    )
                                  , Anno(
                                      Op(
                                        "OpApp"
                                      , [ Anno(
                                            Op(
                                              "AppBin"
                                            , [ Anno(
                                                  Op(
                                                    "Var"
                                                  , [Anno(Str("juggle'"), Op("Nil", []))]
                                                  )
                                                , Op("Nil", [])
                                                )
                                              , Anno(
                                                  Op(
                                                    "OpApp"
                                                  , [ Var("u_10")
                                                    , Anno(Str("***"), Op("Nil", []))
                                                    , Anno(
                                                        Op(
                                                          "Var"
                                                        , [Anno(Str("id"), Op("Nil", []))]
                                                        )
                                                      , Op("Nil", [])
                                                      )
                                                    ]
                                                  )
                                                , Op("Nil", [])
                                                )
                                              ]
                                            )
                                          , Op("Nil", [])
                                          )
                                        , Anno(Str("."), Op("Nil", []))
                                        , Anno(
                                            Op(
                                              "OpApp"
                                            , [ Var("v_10")
                                              , Anno(Str("***"), Op("Nil", []))
                                              , Anno(
                                                  Op(
                                                    "Var"
                                                  , [Anno(Str("id"), Op("Nil", []))]
                                                  )
                                                , Op("Nil", [])
                                                )
                                              ]
                                            )
                                          , Op("Nil", [])
                                          )
                                        ]
                                      )
                                    , Op("Nil", [])
                                    )
                                  ]
                                )
                              , Op("Nil", [])
                              )
                            ]
                          )
                        , Op("Nil", [])
                        )
                      )
                    )
                  )
                , Id()
                , GuardedLChoice(
                    Scope(
                      ["q_10", "r_10"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op("Var", [Anno(Str("first"), Wld())])
                                , Wld()
                                )
                              , Anno(
                                  Op(
                                    "AppBin"
                                  , [ Anno(
                                        Op(
                                          "AppBin"
                                        , [ Anno(
                                              Op("Var", [Anno(Str("loopD"), Wld())])
                                            , Wld()
                                            )
                                          , Var("r_10")
                                          ]
                                        )
                                      , Wld()
                                      )
                                    , Var("q_10")
                                    ]
                                  )
                                , Wld()
                                )
                              ]
                            )
                          , Wld()
                          )
                        )
                      , Build(
                          Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op(
                                    "AppBin"
                                  , [ Anno(
                                        Op(
                                          "Var"
                                        , [Anno(Str("loopD"), Op("Nil", []))]
                                        )
                                      , Op("Nil", [])
                                      )
                                    , Var("r_10")
                                    ]
                                  )
                                , Op("Nil", [])
                                )
                              , Anno(
                                  Op(
                                    "AppBin"
                                  , [ Anno(
                                        Op(
                                          "Var"
                                        , [Anno(Str("juggle'"), Op("Nil", []))]
                                        )
                                      , Op("Nil", [])
                                      )
                                    , Anno(
                                        Op(
                                          "OpApp"
                                        , [ Anno(
                                              Op(
                                                "Var"
                                              , [Anno(Str("f"), Op("Nil", []))]
                                              )
                                            , Op("Nil", [])
                                            )
                                          , Anno(Str("***"), Op("Nil", []))
                                          , Anno(
                                              Op(
                                                "Var"
                                              , [Anno(Str("id"), Op("Nil", []))]
                                              )
                                            , Op("Nil", [])
                                            )
                                          ]
                                        )
                                      , Op("Nil", [])
                                      )
                                    ]
                                  )
                                , Op("Nil", [])
                                )
                              ]
                            )
                          , Op("Nil", [])
                          )
                        )
                      )
                    )
                  , Id()
                  , GuardedLChoice(
                      Scope(
                        ["p_10"]
                      , Seq(
                          Match(
                            Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op("Var", [Anno(Str("loop"), Wld())])
                                  , Wld()
                                  )
                                , Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op("Var", [Anno(Str("arr"), Wld())])
                                        , Wld()
                                        )
                                      , Var("p_10")
                                      ]
                                    )
                                  , Wld()
                                  )
                                ]
                              )
                            , Wld()
                            )
                          )
                        , Build(
                            Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op(
                                      "Var"
                                    , [Anno(Str("arr"), Op("Nil", []))]
                                    )
                                  , Op("Nil", [])
                                  )
                                , Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op(
                                            "Var"
                                          , [Anno(Str("trace"), Op("Nil", []))]
                                          )
                                        , Op("Nil", [])
                                        )
                                      , Var("p_10")
                                      ]
                                    )
                                  , Op("Nil", [])
                                  )
                                ]
                              )
                            , Op("Nil", [])
                            )
                          )
                        )
                      )
                    , Id()
                    , Scope(
                        ["n_10", "o_10"]
                      , Seq(
                          Match(
                            Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op("Var", [Anno(Str("loop"), Wld())])
                                  , Wld()
                                  )
                                , Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op(
                                            "AppBin"
                                          , [ Anno(
                                                Op("Var", [Anno(Str("loopD"), Wld())])
                                              , Wld()
                                              )
                                            , Var("o_10")
                                            ]
                                          )
                                        , Wld()
                                        )
                                      , Var("n_10")
                                      ]
                                    )
                                  , Wld()
                                  )
                                ]
                              )
                            , Wld()
                            )
                          )
                        , Build(
                            Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op(
                                            "Var"
                                          , [Anno(Str("loopD"), Op("Nil", []))]
                                          )
                                        , Op("Nil", [])
                                        )
                                      , Var("o_10")
                                      ]
                                    )
                                  , Op("Nil", [])
                                  )
                                , Anno(
                                    Op(
                                      "AppBin"
                                    , [ Anno(
                                          Op(
                                            "Var"
                                          , [Anno(Str("trace"), Op("Nil", []))]
                                          )
                                        , Op("Nil", [])
                                        )
                                      , Anno(
                                          Op(
                                            "AppBin"
                                          , [ Anno(
                                                Op(
                                                  "Var"
                                                , [Anno(Str("juggle'"), Op("Nil", []))]
                                                )
                                              , Op("Nil", [])
                                              )
                                            , Anno(
                                                Op(
                                                  "Var"
                                                , [Anno(Str("f"), Op("Nil", []))]
                                                )
                                              , Op("Nil", [])
                                              )
                                            ]
                                          )
                                        , Op("Nil", [])
                                        )
                                      ]
                                    )
                                  , Op("Nil", [])
                                  )
                                ]
                              )
                            , Op("Nil", [])
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "norm_0_0"
        , []
        , []
        , GuardedLChoice(
            Scope(
              ["s_11"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      "AppBin"
                    , [ Anno(
                          Op("Var", [Anno(Str("arr"), Wld())])
                        , Wld()
                        )
                      , Var("s_11")
                      ]
                    )
                  , Wld()
                  )
                )
              , Build(
                  Anno(
                    Op(
                      "AppBin"
                    , [ Anno(
                          Op(
                            "Var"
                          , [Anno(Str("arr"), Op("Nil", []))]
                          )
                        , Op("Nil", [])
                        )
                      , Var("s_11")
                      ]
                    )
                  , Op("Nil", [])
                  )
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["q_11", "r_11"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        "AppBin"
                      , [ Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op("Var", [Anno(Str("loopD"), Wld())])
                                , Wld()
                                )
                              , Var("q_11")
                              ]
                            )
                          , Wld()
                          )
                        , Var("r_11")
                        ]
                      )
                    , Wld()
                    )
                  )
                , Build(
                    Anno(
                      Op(
                        "AppBin"
                      , [ Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op(
                                    "Var"
                                  , [Anno(Str("loopD"), Op("Nil", []))]
                                  )
                                , Op("Nil", [])
                                )
                              , Var("q_11")
                              ]
                            )
                          , Op("Nil", [])
                          )
                        , Var("r_11")
                        ]
                      )
                    , Op("Nil", [])
                    )
                  )
                )
              )
            , Id()
            , GuardedLChoice(
                Scope(
                  ["p_11"]
                , Seq(
                    Match(
                      Anno(
                        Op(
                          "AppBin"
                        , [ Anno(
                              Op("Var", [Anno(Str("init"), Wld())])
                            , Wld()
                            )
                          , Var("p_11")
                          ]
                        )
                      , Wld()
                      )
                    )
                  , Build(
                      Anno(
                        Op(
                          "AppBin"
                        , [ Anno(
                              Op(
                                "AppBin"
                              , [ Anno(
                                    Op(
                                      "Var"
                                    , [Anno(Str("loopD"), Op("Nil", []))]
                                    )
                                  , Op("Nil", [])
                                  )
                                , Var("p_11")
                                ]
                              )
                            , Op("Nil", [])
                            )
                          , Anno(
                              Op(
                                "Var"
                              , [Anno(Str("swap"), Op("Nil", []))]
                              )
                            , Op("Nil", [])
                            )
                          ]
                        )
                      , Op("Nil", [])
                      )
                    )
                  )
                )
              , Id()
              , GuardedLChoice(
                  Scope(
                    ["k_11", "l_11", "m_11", "n_11", "o_11"]
                  , Seq(
                      Match(
                        Anno(
                          Op(
                            "OpApp"
                          , [Var("k_11"), Anno(Str(">>>"), Wld()), Var("m_11")]
                          )
                        , Wld()
                        )
                      )
                    , Seq(
                        Match(Var("o_11"))
                      , Seq(
                          Build(Var("k_11"))
                        , Seq(
                            CallT(SVar("norm_0_0"), [], [])
                          , Seq(
                              Match(Var("l_11"))
                            , Seq(
                                Build(Var("m_11"))
                              , Seq(
                                  CallT(SVar("norm_0_0"), [], [])
                                , Seq(
                                    Match(Var("n_11"))
                                  , Seq(
                                      Build(Var("o_11"))
                                    , Seq(
                                        Build(
                                          Anno(
                                            Op(
                                              "OpApp"
                                            , [ Var("l_11")
                                              , Anno(Str(">>>"), Op("Nil", []))
                                              , Var("n_11")
                                              ]
                                            )
                                          , Op("Nil", [])
                                          )
                                        )
                                      , CallT(SVar("step_0_0"), [], [])
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                , Id()
                , GuardedLChoice(
                    Scope(
                      ["h_11", "i_11", "j_11"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op("Var", [Anno(Str("first"), Wld())])
                                , Wld()
                                )
                              , Var("h_11")
                              ]
                            )
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("j_11"))
                        , Seq(
                            Build(Var("h_11"))
                          , Seq(
                              CallT(SVar("norm_0_0"), [], [])
                            , Seq(
                                Match(Var("i_11"))
                              , Seq(
                                  Build(Var("j_11"))
                                , Seq(
                                    Build(
                                      Anno(
                                        Op(
                                          "AppBin"
                                        , [ Anno(
                                              Op(
                                                "Var"
                                              , [Anno(Str("first"), Op("Nil", []))]
                                              )
                                            , Op("Nil", [])
                                            )
                                          , Var("i_11")
                                          ]
                                        )
                                      , Op("Nil", [])
                                      )
                                    )
                                  , CallT(SVar("step_0_0"), [], [])
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  , Id()
                  , Scope(
                      ["e_11", "f_11", "g_11"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              "AppBin"
                            , [ Anno(
                                  Op("Var", [Anno(Str("loop"), Wld())])
                                , Wld()
                                )
                              , Var("e_11")
                              ]
                            )
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("g_11"))
                        , Seq(
                            Build(Var("e_11"))
                          , Seq(
                              CallT(SVar("norm_0_0"), [], [])
                            , Seq(
                                Match(Var("f_11"))
                              , Seq(
                                  Build(Var("g_11"))
                                , Seq(
                                    Build(
                                      Anno(
                                        Op(
                                          "AppBin"
                                        , [ Anno(
                                              Op(
                                                "Var"
                                              , [Anno(Str("loop"), Op("Nil", []))]
                                              )
                                            , Op("Nil", [])
                                            )
                                          , Var("f_11")
                                          ]
                                        )
                                      , Op("Nil", [])
                                      )
                                    )
                                  , CallT(SVar("step_0_0"), [], [])
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Anno__Cong_____2_0"
        , [ VarDec(
              "x_11"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_11"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_11", "u_11", "v_11", "w_11"]
          , Seq(
              Match(Anno(Var("t_11"), Var("u_11")))
            , Seq(
                Build(Var("t_11"))
              , Seq(
                  CallT(SVar("x_11"), [], [])
                , Seq(
                    Match(Var("v_11"))
                  , Seq(
                      Build(Var("u_11"))
                    , Seq(
                        CallT(SVar("y_11"), [], [])
                      , Seq(
                          Match(Var("w_11"))
                        , Build(Anno(Var("v_11"), Var("w_11")))
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Nil_0_0"
        , []
        , []
        , Match(Anno(Op("Nil", []), Wld()))
        )
      , SDefT(
          "Cons_2_0"
        , [ VarDec(
              "z_11"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_22", "f_22", "g_22", "i_22", "j_22"]
          , Seq(
              Match(
                Anno(
                  Op("Cons", [Var("f_22"), Var("g_22")])
                , Var("h_22")
                )
              )
            , Seq(
                Build(Var("f_22"))
              , Seq(
                  CallT(SVar("z_11"), [], [])
                , Seq(
                    Match(Var("i_22"))
                  , Seq(
                      Build(Var("g_22"))
                    , Seq(
                        CallT(SVar("a_12"), [], [])
                      , Seq(
                          Match(Var("j_22"))
                        , Build(
                            Anno(
                              Op("Cons", [Var("i_22"), Var("j_22")])
                            , Var("h_22")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Conc_2_0"
        , [ VarDec(
              "b_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_22", "k_22", "l_22", "n_22", "o_22"]
          , Seq(
              Match(
                Anno(
                  Op("Conc", [Var("k_22"), Var("l_22")])
                , Var("m_22")
                )
              )
            , Seq(
                Build(Var("k_22"))
              , Seq(
                  CallT(SVar("b_12"), [], [])
                , Seq(
                    Match(Var("n_22"))
                  , Seq(
                      Build(Var("l_22"))
                    , Seq(
                        CallT(SVar("c_12"), [], [])
                      , Seq(
                          Match(Var("o_22"))
                        , Build(
                            Anno(
                              Op("Conc", [Var("n_22"), Var("o_22")])
                            , Var("m_22")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_0_0"
        , []
        , []
        , Match(Anno(Op("", []), Wld()))
        )
      , SDefT(
          "_2_0"
        , [ VarDec(
              "d_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_22", "p_22", "q_22", "s_22", "t_22"]
          , Seq(
              Match(
                Anno(
                  Op("", [Var("p_22"), Var("q_22")])
                , Var("r_22")
                )
              )
            , Seq(
                Build(Var("p_22"))
              , Seq(
                  CallT(SVar("d_12"), [], [])
                , Seq(
                    Match(Var("s_22"))
                  , Seq(
                      Build(Var("q_22"))
                    , Seq(
                        CallT(SVar("e_12"), [], [])
                      , Seq(
                          Match(Var("t_22"))
                        , Build(
                            Anno(
                              Op("", [Var("s_22"), Var("t_22")])
                            , Var("r_22")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_3_0"
        , [ VarDec(
              "f_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_22", "u_22", "v_22", "w_22", "y_22", "z_22", "a_23"]
          , Seq(
              Match(
                Anno(
                  Op(
                    ""
                  , [Var("u_22"), Var("v_22"), Var("w_22")]
                  )
                , Var("x_22")
                )
              )
            , Seq(
                Build(Var("u_22"))
              , Seq(
                  CallT(SVar("f_12"), [], [])
                , Seq(
                    Match(Var("y_22"))
                  , Seq(
                      Build(Var("v_22"))
                    , Seq(
                        CallT(SVar("g_12"), [], [])
                      , Seq(
                          Match(Var("z_22"))
                        , Seq(
                            Build(Var("w_22"))
                          , Seq(
                              CallT(SVar("h_12"), [], [])
                            , Seq(
                                Match(Var("a_23"))
                              , Build(
                                  Anno(
                                    Op(
                                      ""
                                    , [Var("y_22"), Var("z_22"), Var("a_23")]
                                    )
                                  , Var("x_22")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StmtSeq_2_0"
        , [ VarDec(
              "i_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_23", "b_23", "c_23", "e_23", "f_23"]
          , Seq(
              Match(
                Anno(
                  Op("StmtSeq", [Var("b_23"), Var("c_23")])
                , Var("d_23")
                )
              )
            , Seq(
                Build(Var("b_23"))
              , Seq(
                  CallT(SVar("i_12"), [], [])
                , Seq(
                    Match(Var("e_23"))
                  , Seq(
                      Build(Var("c_23"))
                    , Seq(
                        CallT(SVar("j_12"), [], [])
                      , Seq(
                          Match(Var("f_23"))
                        , Build(
                            Anno(
                              Op("StmtSeq", [Var("e_23"), Var("f_23")])
                            , Var("d_23")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DeclSeq_2_0"
        , [ VarDec(
              "k_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_23", "g_23", "h_23", "j_23", "k_23"]
          , Seq(
              Match(
                Anno(
                  Op("DeclSeq", [Var("g_23"), Var("h_23")])
                , Var("i_23")
                )
              )
            , Seq(
                Build(Var("g_23"))
              , Seq(
                  CallT(SVar("k_12"), [], [])
                , Seq(
                    Match(Var("j_23"))
                  , Seq(
                      Build(Var("h_23"))
                    , Seq(
                        CallT(SVar("l_12"), [], [])
                      , Seq(
                          Match(Var("k_23"))
                        , Build(
                            Anno(
                              Op("DeclSeq", [Var("j_23"), Var("k_23")])
                            , Var("i_23")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AltSeq_2_0"
        , [ VarDec(
              "m_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_23", "l_23", "m_23", "o_23", "p_23"]
          , Seq(
              Match(
                Anno(
                  Op("AltSeq", [Var("l_23"), Var("m_23")])
                , Var("n_23")
                )
              )
            , Seq(
                Build(Var("l_23"))
              , Seq(
                  CallT(SVar("m_12"), [], [])
                , Seq(
                    Match(Var("o_23"))
                  , Seq(
                      Build(Var("m_23"))
                    , Seq(
                        CallT(SVar("n_12"), [], [])
                      , Seq(
                          Match(Var("p_23"))
                        , Build(
                            Anno(
                              Op("AltSeq", [Var("o_23"), Var("p_23")])
                            , Var("n_23")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TopdeclSeq_2_0"
        , [ VarDec(
              "o_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_23", "q_23", "r_23", "t_23", "u_23"]
          , Seq(
              Match(
                Anno(
                  Op("TopdeclSeq", [Var("q_23"), Var("r_23")])
                , Var("s_23")
                )
              )
            , Seq(
                Build(Var("q_23"))
              , Seq(
                  CallT(SVar("o_12"), [], [])
                , Seq(
                    Match(Var("t_23"))
                  , Seq(
                      Build(Var("r_23"))
                    , Seq(
                        CallT(SVar("p_12"), [], [])
                      , Seq(
                          Match(Var("u_23"))
                        , Build(
                            Anno(
                              Op("TopdeclSeq", [Var("t_23"), Var("u_23")])
                            , Var("s_23")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ImportdeclSeq_2_0"
        , [ VarDec(
              "q_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_23", "v_23", "w_23", "y_23", "z_23"]
          , Seq(
              Match(
                Anno(
                  Op("ImportdeclSeq", [Var("v_23"), Var("w_23")])
                , Var("x_23")
                )
              )
            , Seq(
                Build(Var("v_23"))
              , Seq(
                  CallT(SVar("q_12"), [], [])
                , Seq(
                    Match(Var("y_23"))
                  , Seq(
                      Build(Var("w_23"))
                    , Seq(
                        CallT(SVar("r_12"), [], [])
                      , Seq(
                          Match(Var("z_23"))
                        , Build(
                            Anno(
                              Op("ImportdeclSeq", [Var("y_23"), Var("z_23")])
                            , Var("x_23")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FloatHash_1_0"
        , [ VarDec(
              "s_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_24", "a_24", "c_24"]
          , Seq(
              Match(
                Anno(Op("FloatHash", [Var("a_24")]), Var("b_24"))
              )
            , Seq(
                Build(Var("a_24"))
              , Seq(
                  CallT(SVar("s_12"), [], [])
                , Seq(
                    Match(Var("c_24"))
                  , Build(
                      Anno(Op("FloatHash", [Var("c_24")]), Var("b_24"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "IntegerHash_1_0"
        , [ VarDec(
              "t_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_24", "d_24", "f_24"]
          , Seq(
              Match(
                Anno(Op("IntegerHash", [Var("d_24")]), Var("e_24"))
              )
            , Seq(
                Build(Var("d_24"))
              , Seq(
                  CallT(SVar("t_12"), [], [])
                , Seq(
                    Match(Var("f_24"))
                  , Build(
                      Anno(Op("IntegerHash", [Var("f_24")]), Var("e_24"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StringHash_1_0"
        , [ VarDec(
              "u_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_24", "g_24", "i_24"]
          , Seq(
              Match(
                Anno(Op("StringHash", [Var("g_24")]), Var("h_24"))
              )
            , Seq(
                Build(Var("g_24"))
              , Seq(
                  CallT(SVar("u_12"), [], [])
                , Seq(
                    Match(Var("i_24"))
                  , Build(
                      Anno(Op("StringHash", [Var("i_24")]), Var("h_24"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CharHash_1_0"
        , [ VarDec(
              "v_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_24", "j_24", "l_24"]
          , Seq(
              Match(
                Anno(Op("CharHash", [Var("j_24")]), Var("k_24"))
              )
            , Seq(
                Build(Var("j_24"))
              , Seq(
                  CallT(SVar("v_12"), [], [])
                , Seq(
                    Match(Var("l_24"))
                  , Build(
                      Anno(Op("CharHash", [Var("l_24")]), Var("k_24"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FlexibleContext_1_0"
        , [ VarDec(
              "w_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_24", "m_24", "o_24"]
          , Seq(
              Match(
                Anno(Op("FlexibleContext", [Var("m_24")]), Var("n_24"))
              )
            , Seq(
                Build(Var("m_24"))
              , Seq(
                  CallT(SVar("w_12"), [], [])
                , Seq(
                    Match(Var("o_24"))
                  , Build(
                      Anno(Op("FlexibleContext", [Var("o_24")]), Var("n_24"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SimpleClass_2_0"
        , [ VarDec(
              "x_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_24", "p_24", "q_24", "s_24", "t_24"]
          , Seq(
              Match(
                Anno(
                  Op("SimpleClass", [Var("p_24"), Var("q_24")])
                , Var("r_24")
                )
              )
            , Seq(
                Build(Var("p_24"))
              , Seq(
                  CallT(SVar("x_12"), [], [])
                , Seq(
                    Match(Var("s_24"))
                  , Seq(
                      Build(Var("q_24"))
                    , Seq(
                        CallT(SVar("y_12"), [], [])
                      , Seq(
                          Match(Var("t_24"))
                        , Build(
                            Anno(
                              Op("SimpleClass", [Var("s_24"), Var("t_24")])
                            , Var("r_24")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Class_2_0"
        , [ VarDec(
              "z_12"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_24", "u_24", "v_24", "x_24", "y_24"]
          , Seq(
              Match(
                Anno(
                  Op("Class", [Var("u_24"), Var("v_24")])
                , Var("w_24")
                )
              )
            , Seq(
                Build(Var("u_24"))
              , Seq(
                  CallT(SVar("z_12"), [], [])
                , Seq(
                    Match(Var("x_24"))
                  , Seq(
                      Build(Var("v_24"))
                    , Seq(
                        CallT(SVar("a_13"), [], [])
                      , Seq(
                          Match(Var("y_24"))
                        , Build(
                            Anno(
                              Op("Class", [Var("x_24"), Var("y_24")])
                            , Var("w_24")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StmtList_1_0"
        , [ VarDec(
              "b_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_25", "z_24", "b_25"]
          , Seq(
              Match(
                Anno(Op("StmtList", [Var("z_24")]), Var("a_25"))
              )
            , Seq(
                Build(Var("z_24"))
              , Seq(
                  CallT(SVar("b_13"), [], [])
                , Seq(
                    Match(Var("b_25"))
                  , Build(
                      Anno(Op("StmtList", [Var("b_25")]), Var("a_25"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FBind_2_0"
        , [ VarDec(
              "c_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_25", "c_25", "d_25", "f_25", "g_25"]
          , Seq(
              Match(
                Anno(
                  Op("FBind", [Var("c_25"), Var("d_25")])
                , Var("e_25")
                )
              )
            , Seq(
                Build(Var("c_25"))
              , Seq(
                  CallT(SVar("c_13"), [], [])
                , Seq(
                    Match(Var("f_25"))
                  , Seq(
                      Build(Var("d_25"))
                    , Seq(
                        CallT(SVar("d_13"), [], [])
                      , Seq(
                          Match(Var("g_25"))
                        , Build(
                            Anno(
                              Op("FBind", [Var("f_25"), Var("g_25")])
                            , Var("e_25")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LetStmt_1_0"
        , [ VarDec(
              "e_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_25", "h_25", "j_25"]
          , Seq(
              Match(
                Anno(Op("LetStmt", [Var("h_25")]), Var("i_25"))
              )
            , Seq(
                Build(Var("h_25"))
              , Seq(
                  CallT(SVar("e_13"), [], [])
                , Seq(
                    Match(Var("j_25"))
                  , Build(
                      Anno(Op("LetStmt", [Var("j_25")]), Var("i_25"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ExpStmt_1_0"
        , [ VarDec(
              "f_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_25", "k_25", "m_25"]
          , Seq(
              Match(
                Anno(Op("ExpStmt", [Var("k_25")]), Var("l_25"))
              )
            , Seq(
                Build(Var("k_25"))
              , Seq(
                  CallT(SVar("f_13"), [], [])
                , Seq(
                    Match(Var("m_25"))
                  , Build(
                      Anno(Op("ExpStmt", [Var("m_25")]), Var("l_25"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BindStmt_2_0"
        , [ VarDec(
              "g_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_25", "n_25", "o_25", "q_25", "r_25"]
          , Seq(
              Match(
                Anno(
                  Op("BindStmt", [Var("n_25"), Var("o_25")])
                , Var("p_25")
                )
              )
            , Seq(
                Build(Var("n_25"))
              , Seq(
                  CallT(SVar("g_13"), [], [])
                , Seq(
                    Match(Var("q_25"))
                  , Seq(
                      Build(Var("o_25"))
                    , Seq(
                        CallT(SVar("h_13"), [], [])
                      , Seq(
                          Match(Var("r_25"))
                        , Build(
                            Anno(
                              Op("BindStmt", [Var("q_25"), Var("r_25")])
                            , Var("p_25")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListCompr_2_0"
        , [ VarDec(
              "i_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_25", "s_25", "t_25", "v_25", "w_25"]
          , Seq(
              Match(
                Anno(
                  Op("ListCompr", [Var("s_25"), Var("t_25")])
                , Var("u_25")
                )
              )
            , Seq(
                Build(Var("s_25"))
              , Seq(
                  CallT(SVar("i_13"), [], [])
                , Seq(
                    Match(Var("v_25"))
                  , Seq(
                      Build(Var("t_25"))
                    , Seq(
                        CallT(SVar("j_13"), [], [])
                      , Seq(
                          Match(Var("w_25"))
                        , Build(
                            Anno(
                              Op("ListCompr", [Var("v_25"), Var("w_25")])
                            , Var("u_25")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFirstFromTo_3_0"
        , [ VarDec(
              "k_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_26", "x_25", "y_25", "z_25", "b_26", "c_26", "d_26"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ListFirstFromTo"
                  , [Var("x_25"), Var("y_25"), Var("z_25")]
                  )
                , Var("a_26")
                )
              )
            , Seq(
                Build(Var("x_25"))
              , Seq(
                  CallT(SVar("k_13"), [], [])
                , Seq(
                    Match(Var("b_26"))
                  , Seq(
                      Build(Var("y_25"))
                    , Seq(
                        CallT(SVar("l_13"), [], [])
                      , Seq(
                          Match(Var("c_26"))
                        , Seq(
                            Build(Var("z_25"))
                          , Seq(
                              CallT(SVar("m_13"), [], [])
                            , Seq(
                                Match(Var("d_26"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ListFirstFromTo"
                                    , [Var("b_26"), Var("c_26"), Var("d_26")]
                                    )
                                  , Var("a_26")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFromTo_2_0"
        , [ VarDec(
              "n_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_26", "e_26", "f_26", "h_26", "i_26"]
          , Seq(
              Match(
                Anno(
                  Op("ListFromTo", [Var("e_26"), Var("f_26")])
                , Var("g_26")
                )
              )
            , Seq(
                Build(Var("e_26"))
              , Seq(
                  CallT(SVar("n_13"), [], [])
                , Seq(
                    Match(Var("h_26"))
                  , Seq(
                      Build(Var("f_26"))
                    , Seq(
                        CallT(SVar("o_13"), [], [])
                      , Seq(
                          Match(Var("i_26"))
                        , Build(
                            Anno(
                              Op("ListFromTo", [Var("h_26"), Var("i_26")])
                            , Var("g_26")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFirstFrom_2_0"
        , [ VarDec(
              "p_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_26", "j_26", "k_26", "m_26", "n_26"]
          , Seq(
              Match(
                Anno(
                  Op("ListFirstFrom", [Var("j_26"), Var("k_26")])
                , Var("l_26")
                )
              )
            , Seq(
                Build(Var("j_26"))
              , Seq(
                  CallT(SVar("p_13"), [], [])
                , Seq(
                    Match(Var("m_26"))
                  , Seq(
                      Build(Var("k_26"))
                    , Seq(
                        CallT(SVar("q_13"), [], [])
                      , Seq(
                          Match(Var("n_26"))
                        , Build(
                            Anno(
                              Op("ListFirstFrom", [Var("m_26"), Var("n_26")])
                            , Var("l_26")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFrom_1_0"
        , [ VarDec(
              "r_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_26", "o_26", "q_26"]
          , Seq(
              Match(
                Anno(Op("ListFrom", [Var("o_26")]), Var("p_26"))
              )
            , Seq(
                Build(Var("o_26"))
              , Seq(
                  CallT(SVar("r_13"), [], [])
                , Seq(
                    Match(Var("q_26"))
                  , Build(
                      Anno(Op("ListFrom", [Var("q_26")]), Var("p_26"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "List_1_0"
        , [ VarDec(
              "s_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_26", "r_26", "t_26"]
          , Seq(
              Match(
                Anno(Op("List", [Var("r_26")]), Var("s_26"))
              )
            , Seq(
                Build(Var("r_26"))
              , Seq(
                  CallT(SVar("s_13"), [], [])
                , Seq(
                    Match(Var("t_26"))
                  , Build(
                      Anno(Op("List", [Var("t_26")]), Var("s_26"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QualLet_1_0"
        , [ VarDec(
              "t_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_26", "u_26", "w_26"]
          , Seq(
              Match(
                Anno(Op("QualLet", [Var("u_26")]), Var("v_26"))
              )
            , Seq(
                Build(Var("u_26"))
              , Seq(
                  CallT(SVar("t_13"), [], [])
                , Seq(
                    Match(Var("w_26"))
                  , Build(
                      Anno(Op("QualLet", [Var("w_26")]), Var("v_26"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QualBind_2_0"
        , [ VarDec(
              "u_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_26", "x_26", "y_26", "a_27", "b_27"]
          , Seq(
              Match(
                Anno(
                  Op("QualBind", [Var("x_26"), Var("y_26")])
                , Var("z_26")
                )
              )
            , Seq(
                Build(Var("x_26"))
              , Seq(
                  CallT(SVar("u_13"), [], [])
                , Seq(
                    Match(Var("a_27"))
                  , Seq(
                      Build(Var("y_26"))
                    , Seq(
                        CallT(SVar("v_13"), [], [])
                      , Seq(
                          Match(Var("b_27"))
                        , Build(
                            Anno(
                              Op("QualBind", [Var("a_27"), Var("b_27")])
                            , Var("z_26")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PatBind_2_0"
        , [ VarDec(
              "w_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_27", "c_27", "d_27", "f_27", "g_27"]
          , Seq(
              Match(
                Anno(
                  Op("PatBind", [Var("c_27"), Var("d_27")])
                , Var("e_27")
                )
              )
            , Seq(
                Build(Var("c_27"))
              , Seq(
                  CallT(SVar("w_13"), [], [])
                , Seq(
                    Match(Var("f_27"))
                  , Seq(
                      Build(Var("d_27"))
                    , Seq(
                        CallT(SVar("x_13"), [], [])
                      , Seq(
                          Match(Var("g_27"))
                        , Build(
                            Anno(
                              Op("PatBind", [Var("f_27"), Var("g_27")])
                            , Var("e_27")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LabeledPats_1_0"
        , [ VarDec(
              "y_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_27", "h_27", "j_27"]
          , Seq(
              Match(
                Anno(Op("LabeledPats", [Var("h_27")]), Var("i_27"))
              )
            , Seq(
                Build(Var("h_27"))
              , Seq(
                  CallT(SVar("y_13"), [], [])
                , Seq(
                    Match(Var("j_27"))
                  , Build(
                      Anno(Op("LabeledPats", [Var("j_27")]), Var("i_27"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Irrefutable_1_0"
        , [ VarDec(
              "z_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_27", "k_27", "m_27"]
          , Seq(
              Match(
                Anno(Op("Irrefutable", [Var("k_27")]), Var("l_27"))
              )
            , Seq(
                Build(Var("k_27"))
              , Seq(
                  CallT(SVar("z_13"), [], [])
                , Seq(
                    Match(Var("m_27"))
                  , Build(
                      Anno(Op("Irrefutable", [Var("m_27")]), Var("l_27"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Tuple_2_0"
        , [ VarDec(
              "a_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_27", "n_27", "o_27", "q_27", "r_27"]
          , Seq(
              Match(
                Anno(
                  Op("Tuple", [Var("n_27"), Var("o_27")])
                , Var("p_27")
                )
              )
            , Seq(
                Build(Var("n_27"))
              , Seq(
                  CallT(SVar("a_14"), [], [])
                , Seq(
                    Match(Var("q_27"))
                  , Seq(
                      Build(Var("o_27"))
                    , Seq(
                        CallT(SVar("b_14"), [], [])
                      , Seq(
                          Match(Var("r_27"))
                        , Build(
                            Anno(
                              Op("Tuple", [Var("q_27"), Var("r_27")])
                            , Var("p_27")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Wildcard_0_0"
        , []
        , []
        , Match(Anno(Op("Wildcard", []), Wld()))
        )
      , SDefT(
          "Labeled_2_0"
        , [ VarDec(
              "c_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_27", "s_27", "t_27", "v_27", "w_27"]
          , Seq(
              Match(
                Anno(
                  Op("Labeled", [Var("s_27"), Var("t_27")])
                , Var("u_27")
                )
              )
            , Seq(
                Build(Var("s_27"))
              , Seq(
                  CallT(SVar("c_14"), [], [])
                , Seq(
                    Match(Var("v_27"))
                  , Seq(
                      Build(Var("t_27"))
                    , Seq(
                        CallT(SVar("d_14"), [], [])
                      , Seq(
                          Match(Var("w_27"))
                        , Build(
                            Anno(
                              Op("Labeled", [Var("v_27"), Var("w_27")])
                            , Var("u_27")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Constr_1_0"
        , [ VarDec(
              "e_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_27", "x_27", "z_27"]
          , Seq(
              Match(
                Anno(Op("Constr", [Var("x_27")]), Var("y_27"))
              )
            , Seq(
                Build(Var("x_27"))
              , Seq(
                  CallT(SVar("e_14"), [], [])
                , Seq(
                    Match(Var("z_27"))
                  , Build(
                      Anno(Op("Constr", [Var("z_27")]), Var("y_27"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Named_2_0"
        , [ VarDec(
              "f_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_28", "a_28", "b_28", "d_28", "e_28"]
          , Seq(
              Match(
                Anno(
                  Op("Named", [Var("a_28"), Var("b_28")])
                , Var("c_28")
                )
              )
            , Seq(
                Build(Var("a_28"))
              , Seq(
                  CallT(SVar("f_14"), [], [])
                , Seq(
                    Match(Var("d_28"))
                  , Seq(
                      Build(Var("b_28"))
                    , Seq(
                        CallT(SVar("g_14"), [], [])
                      , Seq(
                          Match(Var("e_28"))
                        , Build(
                            Anno(
                              Op("Named", [Var("d_28"), Var("e_28")])
                            , Var("c_28")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrApp_2_0"
        , [ VarDec(
              "h_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_28", "f_28", "g_28", "i_28", "j_28"]
          , Seq(
              Match(
                Anno(
                  Op("ConstrApp", [Var("f_28"), Var("g_28")])
                , Var("h_28")
                )
              )
            , Seq(
                Build(Var("f_28"))
              , Seq(
                  CallT(SVar("h_14"), [], [])
                , Seq(
                    Match(Var("i_28"))
                  , Seq(
                      Build(Var("g_28"))
                    , Seq(
                        CallT(SVar("i_14"), [], [])
                      , Seq(
                          Match(Var("j_28"))
                        , Build(
                            Anno(
                              Op("ConstrApp", [Var("i_28"), Var("j_28")])
                            , Var("h_28")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Negation_1_0"
        , [ VarDec(
              "j_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_28", "k_28", "m_28"]
          , Seq(
              Match(
                Anno(Op("Negation", [Var("k_28")]), Var("l_28"))
              )
            , Seq(
                Build(Var("k_28"))
              , Seq(
                  CallT(SVar("j_14"), [], [])
                , Seq(
                    Match(Var("m_28"))
                  , Build(
                      Anno(Op("Negation", [Var("m_28")]), Var("l_28"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinOpApp_3_0"
        , [ VarDec(
              "k_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_28", "n_28", "o_28", "p_28", "r_28", "s_28", "t_28"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "BinOpApp"
                  , [Var("n_28"), Var("o_28"), Var("p_28")]
                  )
                , Var("q_28")
                )
              )
            , Seq(
                Build(Var("n_28"))
              , Seq(
                  CallT(SVar("k_14"), [], [])
                , Seq(
                    Match(Var("r_28"))
                  , Seq(
                      Build(Var("o_28"))
                    , Seq(
                        CallT(SVar("l_14"), [], [])
                      , Seq(
                          Match(Var("s_28"))
                        , Seq(
                            Build(Var("p_28"))
                          , Seq(
                              CallT(SVar("m_14"), [], [])
                            , Seq(
                                Match(Var("t_28"))
                              , Build(
                                  Anno(
                                    Op(
                                      "BinOpApp"
                                    , [Var("r_28"), Var("s_28"), Var("t_28")]
                                    )
                                  , Var("q_28")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DeclList_1_0"
        , [ VarDec(
              "n_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_28", "u_28", "w_28"]
          , Seq(
              Match(
                Anno(Op("DeclList", [Var("u_28")]), Var("v_28"))
              )
            , Seq(
                Build(Var("u_28"))
              , Seq(
                  CallT(SVar("n_14"), [], [])
                , Seq(
                    Match(Var("w_28"))
                  , Build(
                      Anno(Op("DeclList", [Var("w_28")]), Var("v_28"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Where_1_0"
        , [ VarDec(
              "o_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_28", "x_28", "z_28"]
          , Seq(
              Match(
                Anno(Op("Where", [Var("x_28")]), Var("y_28"))
              )
            , Seq(
                Build(Var("x_28"))
              , Seq(
                  CallT(SVar("o_14"), [], [])
                , Seq(
                    Match(Var("z_28"))
                  , Build(
                      Anno(Op("Where", [Var("z_28")]), Var("y_28"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NestedFunLHS_2_0"
        , [ VarDec(
              "p_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_29", "a_29", "b_29", "d_29", "e_29"]
          , Seq(
              Match(
                Anno(
                  Op("NestedFunLHS", [Var("a_29"), Var("b_29")])
                , Var("c_29")
                )
              )
            , Seq(
                Build(Var("a_29"))
              , Seq(
                  CallT(SVar("p_14"), [], [])
                , Seq(
                    Match(Var("d_29"))
                  , Seq(
                      Build(Var("b_29"))
                    , Seq(
                        CallT(SVar("q_14"), [], [])
                      , Seq(
                          Match(Var("e_29"))
                        , Build(
                            Anno(
                              Op("NestedFunLHS", [Var("d_29"), Var("e_29")])
                            , Var("c_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OpFunLHS_3_0"
        , [ VarDec(
              "r_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_29", "f_29", "g_29", "h_29", "j_29", "k_29", "l_29"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "OpFunLHS"
                  , [Var("f_29"), Var("g_29"), Var("h_29")]
                  )
                , Var("i_29")
                )
              )
            , Seq(
                Build(Var("f_29"))
              , Seq(
                  CallT(SVar("r_14"), [], [])
                , Seq(
                    Match(Var("j_29"))
                  , Seq(
                      Build(Var("g_29"))
                    , Seq(
                        CallT(SVar("s_14"), [], [])
                      , Seq(
                          Match(Var("k_29"))
                        , Seq(
                            Build(Var("h_29"))
                          , Seq(
                              CallT(SVar("t_14"), [], [])
                            , Seq(
                                Match(Var("l_29"))
                              , Build(
                                  Anno(
                                    Op(
                                      "OpFunLHS"
                                    , [Var("j_29"), Var("k_29"), Var("l_29")]
                                    )
                                  , Var("i_29")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "VarFunLHS_2_0"
        , [ VarDec(
              "u_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_29", "m_29", "n_29", "p_29", "q_29"]
          , Seq(
              Match(
                Anno(
                  Op("VarFunLHS", [Var("m_29"), Var("n_29")])
                , Var("o_29")
                )
              )
            , Seq(
                Build(Var("m_29"))
              , Seq(
                  CallT(SVar("u_14"), [], [])
                , Seq(
                    Match(Var("p_29"))
                  , Seq(
                      Build(Var("n_29"))
                    , Seq(
                        CallT(SVar("v_14"), [], [])
                      , Seq(
                          Match(Var("q_29"))
                        , Build(
                            Anno(
                              Op("VarFunLHS", [Var("p_29"), Var("q_29")])
                            , Var("o_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Guarded_2_0"
        , [ VarDec(
              "w_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_29", "r_29", "s_29", "u_29", "v_29"]
          , Seq(
              Match(
                Anno(
                  Op("Guarded", [Var("r_29"), Var("s_29")])
                , Var("t_29")
                )
              )
            , Seq(
                Build(Var("r_29"))
              , Seq(
                  CallT(SVar("w_14"), [], [])
                , Seq(
                    Match(Var("u_29"))
                  , Seq(
                      Build(Var("s_29"))
                    , Seq(
                        CallT(SVar("x_14"), [], [])
                      , Seq(
                          Match(Var("v_29"))
                        , Build(
                            Anno(
                              Op("Guarded", [Var("u_29"), Var("v_29")])
                            , Var("t_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdValdef_3_0"
        , [ VarDec(
              "y_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_29", "w_29", "x_29", "y_29", "a_30", "b_30", "c_30"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "GdValdef"
                  , [Var("w_29"), Var("x_29"), Var("y_29")]
                  )
                , Var("z_29")
                )
              )
            , Seq(
                Build(Var("w_29"))
              , Seq(
                  CallT(SVar("y_14"), [], [])
                , Seq(
                    Match(Var("a_30"))
                  , Seq(
                      Build(Var("x_29"))
                    , Seq(
                        CallT(SVar("z_14"), [], [])
                      , Seq(
                          Match(Var("b_30"))
                        , Seq(
                            Build(Var("y_29"))
                          , Seq(
                              CallT(SVar("a_15"), [], [])
                            , Seq(
                                Match(Var("c_30"))
                              , Build(
                                  Anno(
                                    Op(
                                      "GdValdef"
                                    , [Var("a_30"), Var("b_30"), Var("c_30")]
                                    )
                                  , Var("z_29")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Valdef_3_0"
        , [ VarDec(
              "b_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_30", "d_30", "e_30", "f_30", "h_30", "i_30", "j_30"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Valdef"
                  , [Var("d_30"), Var("e_30"), Var("f_30")]
                  )
                , Var("g_30")
                )
              )
            , Seq(
                Build(Var("d_30"))
              , Seq(
                  CallT(SVar("b_15"), [], [])
                , Seq(
                    Match(Var("h_30"))
                  , Seq(
                      Build(Var("e_30"))
                    , Seq(
                        CallT(SVar("c_15"), [], [])
                      , Seq(
                          Match(Var("i_30"))
                        , Seq(
                            Build(Var("f_30"))
                          , Seq(
                              CallT(SVar("d_15"), [], [])
                            , Seq(
                                Match(Var("j_30"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Valdef"
                                    , [Var("h_30"), Var("i_30"), Var("j_30")]
                                    )
                                  , Var("g_30")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AltList_1_0"
        , [ VarDec(
              "e_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_30", "k_30", "m_30"]
          , Seq(
              Match(
                Anno(Op("AltList", [Var("k_30")]), Var("l_30"))
              )
            , Seq(
                Build(Var("k_30"))
              , Seq(
                  CallT(SVar("e_15"), [], [])
                , Seq(
                    Match(Var("m_30"))
                  , Build(
                      Anno(Op("AltList", [Var("m_30")]), Var("l_30"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdPat_2_0"
        , [ VarDec(
              "f_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_30", "n_30", "o_30", "q_30", "r_30"]
          , Seq(
              Match(
                Anno(
                  Op("GdPat", [Var("n_30"), Var("o_30")])
                , Var("p_30")
                )
              )
            , Seq(
                Build(Var("n_30"))
              , Seq(
                  CallT(SVar("f_15"), [], [])
                , Seq(
                    Match(Var("q_30"))
                  , Seq(
                      Build(Var("o_30"))
                    , Seq(
                        CallT(SVar("g_15"), [], [])
                      , Seq(
                          Match(Var("r_30"))
                        , Build(
                            Anno(
                              Op("GdPat", [Var("q_30"), Var("r_30")])
                            , Var("p_30")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdAlt_3_0"
        , [ VarDec(
              "h_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_30", "s_30", "t_30", "u_30", "w_30", "x_30", "y_30"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "GdAlt"
                  , [Var("s_30"), Var("t_30"), Var("u_30")]
                  )
                , Var("v_30")
                )
              )
            , Seq(
                Build(Var("s_30"))
              , Seq(
                  CallT(SVar("h_15"), [], [])
                , Seq(
                    Match(Var("w_30"))
                  , Seq(
                      Build(Var("t_30"))
                    , Seq(
                        CallT(SVar("i_15"), [], [])
                      , Seq(
                          Match(Var("x_30"))
                        , Seq(
                            Build(Var("u_30"))
                          , Seq(
                              CallT(SVar("j_15"), [], [])
                            , Seq(
                                Match(Var("y_30"))
                              , Build(
                                  Anno(
                                    Op(
                                      "GdAlt"
                                    , [Var("w_30"), Var("x_30"), Var("y_30")]
                                    )
                                  , Var("v_30")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Alt_3_0"
        , [ VarDec(
              "k_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_31", "z_30", "a_31", "b_31", "d_31", "e_31", "f_31"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Alt"
                  , [Var("z_30"), Var("a_31"), Var("b_31")]
                  )
                , Var("c_31")
                )
              )
            , Seq(
                Build(Var("z_30"))
              , Seq(
                  CallT(SVar("k_15"), [], [])
                , Seq(
                    Match(Var("d_31"))
                  , Seq(
                      Build(Var("a_31"))
                    , Seq(
                        CallT(SVar("l_15"), [], [])
                      , Seq(
                          Match(Var("e_31"))
                        , Seq(
                            Build(Var("b_31"))
                          , Seq(
                              CallT(SVar("m_15"), [], [])
                            , Seq(
                                Match(Var("f_31"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Alt"
                                    , [Var("d_31"), Var("e_31"), Var("f_31")]
                                    )
                                  , Var("c_31")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LabelBinds_1_0"
        , [ VarDec(
              "n_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_31", "g_31", "i_31"]
          , Seq(
              Match(
                Anno(Op("LabelBinds", [Var("g_31")]), Var("h_31"))
              )
            , Seq(
                Build(Var("g_31"))
              , Seq(
                  CallT(SVar("n_15"), [], [])
                , Seq(
                    Match(Var("i_31"))
                  , Build(
                      Anno(Op("LabelBinds", [Var("i_31")]), Var("h_31"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FixDecl_3_0"
        , [ VarDec(
              "o_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_31", "j_31", "k_31", "l_31", "n_31", "o_31", "p_31"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "FixDecl"
                  , [Var("j_31"), Var("k_31"), Var("l_31")]
                  )
                , Var("m_31")
                )
              )
            , Seq(
                Build(Var("j_31"))
              , Seq(
                  CallT(SVar("o_15"), [], [])
                , Seq(
                    Match(Var("n_31"))
                  , Seq(
                      Build(Var("k_31"))
                    , Seq(
                        CallT(SVar("p_15"), [], [])
                      , Seq(
                          Match(Var("o_31"))
                        , Seq(
                            Build(Var("l_31"))
                          , Seq(
                              CallT(SVar("q_15"), [], [])
                            , Seq(
                                Match(Var("p_31"))
                              , Build(
                                  Anno(
                                    Op(
                                      "FixDecl"
                                    , [Var("n_31"), Var("o_31"), Var("p_31")]
                                    )
                                  , Var("m_31")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InfixR_0_0"
        , []
        , []
        , Match(Anno(Op("InfixR", []), Wld()))
        )
      , SDefT(
          "InfixL_0_0"
        , []
        , []
        , Match(Anno(Op("InfixL", []), Wld()))
        )
      , SDefT(
          "Infix_0_0"
        , []
        , []
        , Match(Anno(Op("Infix", []), Wld()))
        )
      , SDefT(
          "ECons_2_0"
        , [ VarDec(
              "r_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_31", "q_31", "r_31", "t_31", "u_31"]
          , Seq(
              Match(
                Anno(
                  Op("ECons", [Var("q_31"), Var("r_31")])
                , Var("s_31")
                )
              )
            , Seq(
                Build(Var("q_31"))
              , Seq(
                  CallT(SVar("r_15"), [], [])
                , Seq(
                    Match(Var("t_31"))
                  , Seq(
                      Build(Var("r_31"))
                    , Seq(
                        CallT(SVar("s_15"), [], [])
                      , Seq(
                          Match(Var("u_31"))
                        , Build(
                            Anno(
                              Op("ECons", [Var("t_31"), Var("u_31")])
                            , Var("s_31")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrOpApp_3_0"
        , [ VarDec(
              "t_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "u_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_31", "v_31", "w_31", "x_31", "z_31", "a_32", "b_32"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrOpApp"
                  , [Var("v_31"), Var("w_31"), Var("x_31")]
                  )
                , Var("y_31")
                )
              )
            , Seq(
                Build(Var("v_31"))
              , Seq(
                  CallT(SVar("t_15"), [], [])
                , Seq(
                    Match(Var("z_31"))
                  , Seq(
                      Build(Var("w_31"))
                    , Seq(
                        CallT(SVar("u_15"), [], [])
                      , Seq(
                          Match(Var("a_32"))
                        , Seq(
                            Build(Var("x_31"))
                          , Seq(
                              CallT(SVar("v_15"), [], [])
                            , Seq(
                                Match(Var("b_32"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrOpApp"
                                    , [Var("z_31"), Var("a_32"), Var("b_32")]
                                    )
                                  , Var("y_31")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrForm_2_0"
        , [ VarDec(
              "w_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_32", "c_32", "d_32", "f_32", "g_32"]
          , Seq(
              Match(
                Anno(
                  Op("ArrForm", [Var("c_32"), Var("d_32")])
                , Var("e_32")
                )
              )
            , Seq(
                Build(Var("c_32"))
              , Seq(
                  CallT(SVar("w_15"), [], [])
                , Seq(
                    Match(Var("f_32"))
                  , Seq(
                      Build(Var("d_32"))
                    , Seq(
                        CallT(SVar("x_15"), [], [])
                      , Seq(
                          Match(Var("g_32"))
                        , Build(
                            Anno(
                              Op("ArrForm", [Var("f_32"), Var("g_32")])
                            , Var("e_32")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAppBin_2_0"
        , [ VarDec(
              "y_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_32", "h_32", "i_32", "k_32", "l_32"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAppBin", [Var("h_32"), Var("i_32")])
                , Var("j_32")
                )
              )
            , Seq(
                Build(Var("h_32"))
              , Seq(
                  CallT(SVar("y_15"), [], [])
                , Seq(
                    Match(Var("k_32"))
                  , Seq(
                      Build(Var("i_32"))
                    , Seq(
                        CallT(SVar("z_15"), [], [])
                      , Seq(
                          Match(Var("l_32"))
                        , Build(
                            Anno(
                              Op("ArrAppBin", [Var("k_32"), Var("l_32")])
                            , Var("j_32")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrDo_1_0"
        , [ VarDec(
              "a_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_32", "m_32", "o_32"]
          , Seq(
              Match(
                Anno(Op("ArrDo", [Var("m_32")]), Var("n_32"))
              )
            , Seq(
                Build(Var("m_32"))
              , Seq(
                  CallT(SVar("a_16"), [], [])
                , Seq(
                    Match(Var("o_32"))
                  , Build(
                      Anno(Op("ArrDo", [Var("o_32")]), Var("n_32"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrCase_2_0"
        , [ VarDec(
              "b_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_32", "p_32", "q_32", "s_32", "t_32"]
          , Seq(
              Match(
                Anno(
                  Op("ArrCase", [Var("p_32"), Var("q_32")])
                , Var("r_32")
                )
              )
            , Seq(
                Build(Var("p_32"))
              , Seq(
                  CallT(SVar("b_16"), [], [])
                , Seq(
                    Match(Var("s_32"))
                  , Seq(
                      Build(Var("q_32"))
                    , Seq(
                        CallT(SVar("c_16"), [], [])
                      , Seq(
                          Match(Var("t_32"))
                        , Build(
                            Anno(
                              Op("ArrCase", [Var("s_32"), Var("t_32")])
                            , Var("r_32")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrIf_3_0"
        , [ VarDec(
              "d_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_32", "u_32", "v_32", "w_32", "y_32", "z_32", "a_33"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrIf"
                  , [Var("u_32"), Var("v_32"), Var("w_32")]
                  )
                , Var("x_32")
                )
              )
            , Seq(
                Build(Var("u_32"))
              , Seq(
                  CallT(SVar("d_16"), [], [])
                , Seq(
                    Match(Var("y_32"))
                  , Seq(
                      Build(Var("v_32"))
                    , Seq(
                        CallT(SVar("e_16"), [], [])
                      , Seq(
                          Match(Var("z_32"))
                        , Seq(
                            Build(Var("w_32"))
                          , Seq(
                              CallT(SVar("f_16"), [], [])
                            , Seq(
                                Match(Var("a_33"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrIf"
                                    , [Var("y_32"), Var("z_32"), Var("a_33")]
                                    )
                                  , Var("x_32")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrLet_2_0"
        , [ VarDec(
              "g_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_33", "b_33", "c_33", "e_33", "f_33"]
          , Seq(
              Match(
                Anno(
                  Op("ArrLet", [Var("b_33"), Var("c_33")])
                , Var("d_33")
                )
              )
            , Seq(
                Build(Var("b_33"))
              , Seq(
                  CallT(SVar("g_16"), [], [])
                , Seq(
                    Match(Var("e_33"))
                  , Seq(
                      Build(Var("c_33"))
                    , Seq(
                        CallT(SVar("h_16"), [], [])
                      , Seq(
                          Match(Var("f_33"))
                        , Build(
                            Anno(
                              Op("ArrLet", [Var("e_33"), Var("f_33")])
                            , Var("d_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAbs_2_0"
        , [ VarDec(
              "i_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_33", "g_33", "h_33", "j_33", "k_33"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAbs", [Var("g_33"), Var("h_33")])
                , Var("i_33")
                )
              )
            , Seq(
                Build(Var("g_33"))
              , Seq(
                  CallT(SVar("i_16"), [], [])
                , Seq(
                    Match(Var("j_33"))
                  , Seq(
                      Build(Var("h_33"))
                    , Seq(
                        CallT(SVar("j_16"), [], [])
                      , Seq(
                          Match(Var("k_33"))
                        , Build(
                            Anno(
                              Op("ArrAbs", [Var("j_33"), Var("k_33")])
                            , Var("i_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrHigher_2_0"
        , [ VarDec(
              "k_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_33", "l_33", "m_33", "o_33", "p_33"]
          , Seq(
              Match(
                Anno(
                  Op("ArrHigher", [Var("l_33"), Var("m_33")])
                , Var("n_33")
                )
              )
            , Seq(
                Build(Var("l_33"))
              , Seq(
                  CallT(SVar("k_16"), [], [])
                , Seq(
                    Match(Var("o_33"))
                  , Seq(
                      Build(Var("m_33"))
                    , Seq(
                        CallT(SVar("l_16"), [], [])
                      , Seq(
                          Match(Var("p_33"))
                        , Build(
                            Anno(
                              Op("ArrHigher", [Var("o_33"), Var("p_33")])
                            , Var("n_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrFirst_2_0"
        , [ VarDec(
              "m_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_33", "q_33", "r_33", "t_33", "u_33"]
          , Seq(
              Match(
                Anno(
                  Op("ArrFirst", [Var("q_33"), Var("r_33")])
                , Var("s_33")
                )
              )
            , Seq(
                Build(Var("q_33"))
              , Seq(
                  CallT(SVar("m_16"), [], [])
                , Seq(
                    Match(Var("t_33"))
                  , Seq(
                      Build(Var("r_33"))
                    , Seq(
                        CallT(SVar("n_16"), [], [])
                      , Seq(
                          Match(Var("u_33"))
                        , Build(
                            Anno(
                              Op("ArrFirst", [Var("t_33"), Var("u_33")])
                            , Var("s_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Typed_3_0"
        , [ VarDec(
              "o_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_33", "v_33", "w_33", "x_33", "z_33", "a_34", "b_34"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Typed"
                  , [Var("v_33"), Var("w_33"), Var("x_33")]
                  )
                , Var("y_33")
                )
              )
            , Seq(
                Build(Var("v_33"))
              , Seq(
                  CallT(SVar("o_16"), [], [])
                , Seq(
                    Match(Var("z_33"))
                  , Seq(
                      Build(Var("w_33"))
                    , Seq(
                        CallT(SVar("p_16"), [], [])
                      , Seq(
                          Match(Var("a_34"))
                        , Seq(
                            Build(Var("x_33"))
                          , Seq(
                              CallT(SVar("q_16"), [], [])
                            , Seq(
                                Match(Var("b_34"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Typed"
                                    , [Var("z_33"), Var("a_34"), Var("b_34")]
                                    )
                                  , Var("y_33")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OpApp_3_0"
        , [ VarDec(
              "r_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_34", "c_34", "d_34", "e_34", "g_34", "h_34", "i_34"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "OpApp"
                  , [Var("c_34"), Var("d_34"), Var("e_34")]
                  )
                , Var("f_34")
                )
              )
            , Seq(
                Build(Var("c_34"))
              , Seq(
                  CallT(SVar("r_16"), [], [])
                , Seq(
                    Match(Var("g_34"))
                  , Seq(
                      Build(Var("d_34"))
                    , Seq(
                        CallT(SVar("s_16"), [], [])
                      , Seq(
                          Match(Var("h_34"))
                        , Seq(
                            Build(Var("e_34"))
                          , Seq(
                              CallT(SVar("t_16"), [], [])
                            , Seq(
                                Match(Var("i_34"))
                              , Build(
                                  Anno(
                                    Op(
                                      "OpApp"
                                    , [Var("g_34"), Var("h_34"), Var("i_34")]
                                    )
                                  , Var("f_34")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AppBin_2_0"
        , [ VarDec(
              "u_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_34", "j_34", "k_34", "m_34", "n_34"]
          , Seq(
              Match(
                Anno(
                  Op("AppBin", [Var("j_34"), Var("k_34")])
                , Var("l_34")
                )
              )
            , Seq(
                Build(Var("j_34"))
              , Seq(
                  CallT(SVar("u_16"), [], [])
                , Seq(
                    Match(Var("m_34"))
                  , Seq(
                      Build(Var("k_34"))
                    , Seq(
                        CallT(SVar("v_16"), [], [])
                      , Seq(
                          Match(Var("n_34"))
                        , Build(
                            Anno(
                              Op("AppBin", [Var("m_34"), Var("n_34")])
                            , Var("l_34")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Case_2_0"
        , [ VarDec(
              "w_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_34", "o_34", "p_34", "r_34", "s_34"]
          , Seq(
              Match(
                Anno(
                  Op("Case", [Var("o_34"), Var("p_34")])
                , Var("q_34")
                )
              )
            , Seq(
                Build(Var("o_34"))
              , Seq(
                  CallT(SVar("w_16"), [], [])
                , Seq(
                    Match(Var("r_34"))
                  , Seq(
                      Build(Var("p_34"))
                    , Seq(
                        CallT(SVar("x_16"), [], [])
                      , Seq(
                          Match(Var("s_34"))
                        , Build(
                            Anno(
                              Op("Case", [Var("r_34"), Var("s_34")])
                            , Var("q_34")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Do_1_0"
        , [ VarDec(
              "y_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_34", "t_34", "v_34"]
          , Seq(
              Match(
                Anno(Op("Do", [Var("t_34")]), Var("u_34"))
              )
            , Seq(
                Build(Var("t_34"))
              , Seq(
                  CallT(SVar("y_16"), [], [])
                , Seq(
                    Match(Var("v_34"))
                  , Build(
                      Anno(Op("Do", [Var("v_34")]), Var("u_34"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "If_3_0"
        , [ VarDec(
              "z_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_34", "w_34", "x_34", "y_34", "a_35", "b_35", "c_35"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "If"
                  , [Var("w_34"), Var("x_34"), Var("y_34")]
                  )
                , Var("z_34")
                )
              )
            , Seq(
                Build(Var("w_34"))
              , Seq(
                  CallT(SVar("z_16"), [], [])
                , Seq(
                    Match(Var("a_35"))
                  , Seq(
                      Build(Var("x_34"))
                    , Seq(
                        CallT(SVar("a_17"), [], [])
                      , Seq(
                          Match(Var("b_35"))
                        , Seq(
                            Build(Var("y_34"))
                          , Seq(
                              CallT(SVar("b_17"), [], [])
                            , Seq(
                                Match(Var("c_35"))
                              , Build(
                                  Anno(
                                    Op(
                                      "If"
                                    , [Var("a_35"), Var("b_35"), Var("c_35")]
                                    )
                                  , Var("z_34")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Let_2_0"
        , [ VarDec(
              "c_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_35", "d_35", "e_35", "g_35", "h_35"]
          , Seq(
              Match(
                Anno(
                  Op("Let", [Var("d_35"), Var("e_35")])
                , Var("f_35")
                )
              )
            , Seq(
                Build(Var("d_35"))
              , Seq(
                  CallT(SVar("c_17"), [], [])
                , Seq(
                    Match(Var("g_35"))
                  , Seq(
                      Build(Var("e_35"))
                    , Seq(
                        CallT(SVar("d_17"), [], [])
                      , Seq(
                          Match(Var("h_35"))
                        , Build(
                            Anno(
                              Op("Let", [Var("g_35"), Var("h_35")])
                            , Var("f_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Abs_2_0"
        , [ VarDec(
              "e_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_35", "i_35", "j_35", "l_35", "m_35"]
          , Seq(
              Match(
                Anno(
                  Op("Abs", [Var("i_35"), Var("j_35")])
                , Var("k_35")
                )
              )
            , Seq(
                Build(Var("i_35"))
              , Seq(
                  CallT(SVar("e_17"), [], [])
                , Seq(
                    Match(Var("l_35"))
                  , Seq(
                      Build(Var("j_35"))
                    , Seq(
                        CallT(SVar("f_17"), [], [])
                      , Seq(
                          Match(Var("m_35"))
                        , Build(
                            Anno(
                              Op("Abs", [Var("l_35"), Var("m_35")])
                            , Var("k_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "RSection_2_0"
        , [ VarDec(
              "g_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_35", "n_35", "o_35", "q_35", "r_35"]
          , Seq(
              Match(
                Anno(
                  Op("RSection", [Var("n_35"), Var("o_35")])
                , Var("p_35")
                )
              )
            , Seq(
                Build(Var("n_35"))
              , Seq(
                  CallT(SVar("g_17"), [], [])
                , Seq(
                    Match(Var("q_35"))
                  , Seq(
                      Build(Var("o_35"))
                    , Seq(
                        CallT(SVar("h_17"), [], [])
                      , Seq(
                          Match(Var("r_35"))
                        , Build(
                            Anno(
                              Op("RSection", [Var("q_35"), Var("r_35")])
                            , Var("p_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LSection_2_0"
        , [ VarDec(
              "i_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_35", "s_35", "t_35", "v_35", "w_35"]
          , Seq(
              Match(
                Anno(
                  Op("LSection", [Var("s_35"), Var("t_35")])
                , Var("u_35")
                )
              )
            , Seq(
                Build(Var("s_35"))
              , Seq(
                  CallT(SVar("i_17"), [], [])
                , Seq(
                    Match(Var("v_35"))
                  , Seq(
                      Build(Var("t_35"))
                    , Seq(
                        CallT(SVar("j_17"), [], [])
                      , Seq(
                          Match(Var("w_35"))
                        , Build(
                            Anno(
                              Op("LSection", [Var("v_35"), Var("w_35")])
                            , Var("u_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Product_1_0"
        , [ VarDec(
              "k_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_35", "x_35", "z_35"]
          , Seq(
              Match(
                Anno(Op("Product", [Var("x_35")]), Var("y_35"))
              )
            , Seq(
                Build(Var("x_35"))
              , Seq(
                  CallT(SVar("k_17"), [], [])
                , Seq(
                    Match(Var("z_35"))
                  , Build(
                      Anno(Op("Product", [Var("z_35")]), Var("y_35"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Lit_1_0"
        , [ VarDec(
              "l_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_36", "a_36", "c_36"]
          , Seq(
              Match(
                Anno(Op("Lit", [Var("a_36")]), Var("b_36"))
              )
            , Seq(
                Build(Var("a_36"))
              , Seq(
                  CallT(SVar("l_17"), [], [])
                , Seq(
                    Match(Var("c_36"))
                  , Build(
                      Anno(Op("Lit", [Var("c_36")]), Var("b_36"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Var_1_0"
        , [ VarDec(
              "m_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_36", "d_36", "f_36"]
          , Seq(
              Match(
                Anno(Op("Var", [Var("d_36")]), Var("e_36"))
              )
            , Seq(
                Build(Var("d_36"))
              , Seq(
                  CallT(SVar("m_17"), [], [])
                , Seq(
                    Match(Var("f_36"))
                  , Build(
                      Anno(Op("Var", [Var("f_36")]), Var("e_36"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrProcedure_2_0"
        , [ VarDec(
              "n_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_36", "g_36", "h_36", "j_36", "k_36"]
          , Seq(
              Match(
                Anno(
                  Op("ArrProcedure", [Var("g_36"), Var("h_36")])
                , Var("i_36")
                )
              )
            , Seq(
                Build(Var("g_36"))
              , Seq(
                  CallT(SVar("n_17"), [], [])
                , Seq(
                    Match(Var("j_36"))
                  , Seq(
                      Build(Var("h_36"))
                    , Seq(
                        CallT(SVar("o_17"), [], [])
                      , Seq(
                          Match(Var("k_36"))
                        , Build(
                            Anno(
                              Op("ArrProcedure", [Var("j_36"), Var("k_36")])
                            , Var("i_36")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrStmtSeq_2_0"
        , [ VarDec(
              "p_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_36", "l_36", "m_36", "o_36", "p_36"]
          , Seq(
              Match(
                Anno(
                  Op("ArrStmtSeq", [Var("l_36"), Var("m_36")])
                , Var("n_36")
                )
              )
            , Seq(
                Build(Var("l_36"))
              , Seq(
                  CallT(SVar("p_17"), [], [])
                , Seq(
                    Match(Var("o_36"))
                  , Seq(
                      Build(Var("m_36"))
                    , Seq(
                        CallT(SVar("q_17"), [], [])
                      , Seq(
                          Match(Var("p_36"))
                        , Build(
                            Anno(
                              Op("ArrStmtSeq", [Var("o_36"), Var("p_36")])
                            , Var("n_36")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrStmtList_1_0"
        , [ VarDec(
              "r_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_36", "q_36", "s_36"]
          , Seq(
              Match(
                Anno(Op("ArrStmtList", [Var("q_36")]), Var("r_36"))
              )
            , Seq(
                Build(Var("q_36"))
              , Seq(
                  CallT(SVar("r_17"), [], [])
                , Seq(
                    Match(Var("s_36"))
                  , Build(
                      Anno(Op("ArrStmtList", [Var("s_36")]), Var("r_36"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrCmdStmt_1_0"
        , [ VarDec(
              "s_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_36", "t_36", "v_36"]
          , Seq(
              Match(
                Anno(Op("ArrCmdStmt", [Var("t_36")]), Var("u_36"))
              )
            , Seq(
                Build(Var("t_36"))
              , Seq(
                  CallT(SVar("s_17"), [], [])
                , Seq(
                    Match(Var("v_36"))
                  , Build(
                      Anno(Op("ArrCmdStmt", [Var("v_36")]), Var("u_36"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrBindStmt_2_0"
        , [ VarDec(
              "t_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "u_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_36", "w_36", "x_36", "z_36", "a_37"]
          , Seq(
              Match(
                Anno(
                  Op("ArrBindStmt", [Var("w_36"), Var("x_36")])
                , Var("y_36")
                )
              )
            , Seq(
                Build(Var("w_36"))
              , Seq(
                  CallT(SVar("t_17"), [], [])
                , Seq(
                    Match(Var("z_36"))
                  , Seq(
                      Build(Var("x_36"))
                    , Seq(
                        CallT(SVar("u_17"), [], [])
                      , Seq(
                          Match(Var("a_37"))
                        , Build(
                            Anno(
                              Op("ArrBindStmt", [Var("z_36"), Var("a_37")])
                            , Var("y_36")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrLetStmt_1_0"
        , [ VarDec(
              "v_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_37", "b_37", "d_37"]
          , Seq(
              Match(
                Anno(Op("ArrLetStmt", [Var("b_37")]), Var("c_37"))
              )
            , Seq(
                Build(Var("b_37"))
              , Seq(
                  CallT(SVar("v_17"), [], [])
                , Seq(
                    Match(Var("d_37"))
                  , Build(
                      Anno(Op("ArrLetStmt", [Var("d_37")]), Var("c_37"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAltSeq_2_0"
        , [ VarDec(
              "w_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_37", "e_37", "f_37", "h_37", "i_37"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAltSeq", [Var("e_37"), Var("f_37")])
                , Var("g_37")
                )
              )
            , Seq(
                Build(Var("e_37"))
              , Seq(
                  CallT(SVar("w_17"), [], [])
                , Seq(
                    Match(Var("h_37"))
                  , Seq(
                      Build(Var("f_37"))
                    , Seq(
                        CallT(SVar("x_17"), [], [])
                      , Seq(
                          Match(Var("i_37"))
                        , Build(
                            Anno(
                              Op("ArrAltSeq", [Var("h_37"), Var("i_37")])
                            , Var("g_37")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAlt_3_0"
        , [ VarDec(
              "y_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_37", "j_37", "k_37", "l_37", "n_37", "o_37", "p_37"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrAlt"
                  , [Var("j_37"), Var("k_37"), Var("l_37")]
                  )
                , Var("m_37")
                )
              )
            , Seq(
                Build(Var("j_37"))
              , Seq(
                  CallT(SVar("y_17"), [], [])
                , Seq(
                    Match(Var("n_37"))
                  , Seq(
                      Build(Var("k_37"))
                    , Seq(
                        CallT(SVar("z_17"), [], [])
                      , Seq(
                          Match(Var("o_37"))
                        , Seq(
                            Build(Var("l_37"))
                          , Seq(
                              CallT(SVar("a_18"), [], [])
                            , Seq(
                                Match(Var("p_37"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrAlt"
                                    , [Var("n_37"), Var("o_37"), Var("p_37")]
                                    )
                                  , Var("m_37")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SignDecl_3_0"
        , [ VarDec(
              "b_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_37", "q_37", "r_37", "s_37", "u_37", "v_37", "w_37"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "SignDecl"
                  , [Var("q_37"), Var("r_37"), Var("s_37")]
                  )
                , Var("t_37")
                )
              )
            , Seq(
                Build(Var("q_37"))
              , Seq(
                  CallT(SVar("b_18"), [], [])
                , Seq(
                    Match(Var("u_37"))
                  , Seq(
                      Build(Var("r_37"))
                    , Seq(
                        CallT(SVar("c_18"), [], [])
                      , Seq(
                          Match(Var("v_37"))
                        , Seq(
                            Build(Var("s_37"))
                          , Seq(
                              CallT(SVar("d_18"), [], [])
                            , Seq(
                                Match(Var("w_37"))
                              , Build(
                                  Anno(
                                    Op(
                                      "SignDecl"
                                    , [Var("u_37"), Var("v_37"), Var("w_37")]
                                    )
                                  , Var("t_37")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Class_3_0"
        , [ VarDec(
              "e_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_38", "x_37", "y_37", "z_37", "b_38", "c_38", "d_38"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Class"
                  , [Var("x_37"), Var("y_37"), Var("z_37")]
                  )
                , Var("a_38")
                )
              )
            , Seq(
                Build(Var("x_37"))
              , Seq(
                  CallT(SVar("e_18"), [], [])
                , Seq(
                    Match(Var("b_38"))
                  , Seq(
                      Build(Var("y_37"))
                    , Seq(
                        CallT(SVar("f_18"), [], [])
                      , Seq(
                          Match(Var("c_38"))
                        , Seq(
                            Build(Var("z_37"))
                          , Seq(
                              CallT(SVar("g_18"), [], [])
                            , Seq(
                                Match(Var("d_38"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Class"
                                    , [Var("b_38"), Var("c_38"), Var("d_38")]
                                    )
                                  , Var("a_38")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SContext_1_0"
        , [ VarDec(
              "h_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_38", "e_38", "g_38"]
          , Seq(
              Match(
                Anno(Op("SContext", [Var("e_38")]), Var("f_38"))
              )
            , Seq(
                Build(Var("e_38"))
              , Seq(
                  CallT(SVar("h_18"), [], [])
                , Seq(
                    Match(Var("g_38"))
                  , Build(
                      Anno(Op("SContext", [Var("g_38")]), Var("f_38"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Context_1_0"
        , [ VarDec(
              "i_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_38", "h_38", "j_38"]
          , Seq(
              Match(
                Anno(Op("Context", [Var("h_38")]), Var("i_38"))
              )
            , Seq(
                Build(Var("h_38"))
              , Seq(
                  CallT(SVar("i_18"), [], [])
                , Seq(
                    Match(Var("j_38"))
                  , Build(
                      Anno(Op("Context", [Var("j_38")]), Var("i_38"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstArrow_2_0"
        , [ VarDec(
              "j_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_38", "k_38", "l_38", "n_38", "o_38"]
          , Seq(
              Match(
                Anno(
                  Op("InstArrow", [Var("k_38"), Var("l_38")])
                , Var("m_38")
                )
              )
            , Seq(
                Build(Var("k_38"))
              , Seq(
                  CallT(SVar("j_18"), [], [])
                , Seq(
                    Match(Var("n_38"))
                  , Seq(
                      Build(Var("l_38"))
                    , Seq(
                        CallT(SVar("k_18"), [], [])
                      , Seq(
                          Match(Var("o_38"))
                        , Build(
                            Anno(
                              Op("InstArrow", [Var("n_38"), Var("o_38")])
                            , Var("m_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstList_1_0"
        , [ VarDec(
              "l_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_38", "p_38", "r_38"]
          , Seq(
              Match(
                Anno(Op("InstList", [Var("p_38")]), Var("q_38"))
              )
            , Seq(
                Build(Var("p_38"))
              , Seq(
                  CallT(SVar("l_18"), [], [])
                , Seq(
                    Match(Var("r_38"))
                  , Build(
                      Anno(Op("InstList", [Var("r_38")]), Var("q_38"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstTuple_2_0"
        , [ VarDec(
              "m_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_38", "s_38", "t_38", "v_38", "w_38"]
          , Seq(
              Match(
                Anno(
                  Op("InstTuple", [Var("s_38"), Var("t_38")])
                , Var("u_38")
                )
              )
            , Seq(
                Build(Var("s_38"))
              , Seq(
                  CallT(SVar("m_18"), [], [])
                , Seq(
                    Match(Var("v_38"))
                  , Seq(
                      Build(Var("t_38"))
                    , Seq(
                        CallT(SVar("n_18"), [], [])
                      , Seq(
                          Match(Var("w_38"))
                        , Build(
                            Anno(
                              Op("InstTuple", [Var("v_38"), Var("w_38")])
                            , Var("u_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstApp_2_0"
        , [ VarDec(
              "o_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_38", "x_38", "y_38", "a_39", "b_39"]
          , Seq(
              Match(
                Anno(
                  Op("InstApp", [Var("x_38"), Var("y_38")])
                , Var("z_38")
                )
              )
            , Seq(
                Build(Var("x_38"))
              , Seq(
                  CallT(SVar("o_18"), [], [])
                , Seq(
                    Match(Var("a_39"))
                  , Seq(
                      Build(Var("y_38"))
                    , Seq(
                        CallT(SVar("p_18"), [], [])
                      , Seq(
                          Match(Var("b_39"))
                        , Build(
                            Anno(
                              Op("InstApp", [Var("a_39"), Var("b_39")])
                            , Var("z_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstCons_1_0"
        , [ VarDec(
              "q_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_39", "c_39", "e_39"]
          , Seq(
              Match(
                Anno(Op("InstCons", [Var("c_39")]), Var("d_39"))
              )
            , Seq(
                Build(Var("c_39"))
              , Seq(
                  CallT(SVar("q_18"), [], [])
                , Seq(
                    Match(Var("e_39"))
                  , Build(
                      Anno(Op("InstCons", [Var("e_39")]), Var("d_39"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InfixConstr_3_0"
        , [ VarDec(
              "r_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_39", "f_39", "g_39", "h_39", "j_39", "k_39", "l_39"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "InfixConstr"
                  , [Var("f_39"), Var("g_39"), Var("h_39")]
                  )
                , Var("i_39")
                )
              )
            , Seq(
                Build(Var("f_39"))
              , Seq(
                  CallT(SVar("r_18"), [], [])
                , Seq(
                    Match(Var("j_39"))
                  , Seq(
                      Build(Var("g_39"))
                    , Seq(
                        CallT(SVar("s_18"), [], [])
                      , Seq(
                          Match(Var("k_39"))
                        , Seq(
                            Build(Var("h_39"))
                          , Seq(
                              CallT(SVar("t_18"), [], [])
                            , Seq(
                                Match(Var("l_39"))
                              , Build(
                                  Anno(
                                    Op(
                                      "InfixConstr"
                                    , [Var("j_39"), Var("k_39"), Var("l_39")]
                                    )
                                  , Var("i_39")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrDecl_2_0"
        , [ VarDec(
              "u_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_39", "m_39", "n_39", "p_39", "q_39"]
          , Seq(
              Match(
                Anno(
                  Op("ConstrDecl", [Var("m_39"), Var("n_39")])
                , Var("o_39")
                )
              )
            , Seq(
                Build(Var("m_39"))
              , Seq(
                  CallT(SVar("u_18"), [], [])
                , Seq(
                    Match(Var("p_39"))
                  , Seq(
                      Build(Var("n_39"))
                    , Seq(
                        CallT(SVar("v_18"), [], [])
                      , Seq(
                          Match(Var("q_39"))
                        , Build(
                            Anno(
                              Op("ConstrDecl", [Var("p_39"), Var("q_39")])
                            , Var("o_39")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrDecls_1_0"
        , [ VarDec(
              "w_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_39", "r_39", "t_39"]
          , Seq(
              Match(
                Anno(Op("ConstrDecls", [Var("r_39")]), Var("s_39"))
              )
            , Seq(
                Build(Var("r_39"))
              , Seq(
                  CallT(SVar("w_18"), [], [])
                , Seq(
                    Match(Var("t_39"))
                  , Build(
                      Anno(Op("ConstrDecls", [Var("t_39")]), Var("s_39"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NoConstrDecls_0_0"
        , []
        , []
        , Match(Anno(Op("NoConstrDecls", []), Wld()))
        )
      , SDefT(
          "Derive_1_0"
        , [ VarDec(
              "x_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_39", "u_39", "w_39"]
          , Seq(
              Match(
                Anno(Op("Derive", [Var("u_39")]), Var("v_39"))
              )
            , Seq(
                Build(Var("u_39"))
              , Seq(
                  CallT(SVar("x_18"), [], [])
                , Seq(
                    Match(Var("w_39"))
                  , Build(
                      Anno(Op("Derive", [Var("w_39")]), Var("v_39"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NoDeriving_0_0"
        , []
        , []
        , Match(Anno(Op("NoDeriving", []), Wld()))
        )
      , SDefT(
          "TFunBin_2_0"
        , [ VarDec(
              "y_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_39", "x_39", "y_39", "a_40", "b_40"]
          , Seq(
              Match(
                Anno(
                  Op("TFunBin", [Var("x_39"), Var("y_39")])
                , Var("z_39")
                )
              )
            , Seq(
                Build(Var("x_39"))
              , Seq(
                  CallT(SVar("y_18"), [], [])
                , Seq(
                    Match(Var("a_40"))
                  , Seq(
                      Build(Var("y_39"))
                    , Seq(
                        CallT(SVar("z_18"), [], [])
                      , Seq(
                          Match(Var("b_40"))
                        , Build(
                            Anno(
                              Op("TFunBin", [Var("a_40"), Var("b_40")])
                            , Var("z_39")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TAppBin_2_0"
        , [ VarDec(
              "a_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_40", "c_40", "d_40", "f_40", "g_40"]
          , Seq(
              Match(
                Anno(
                  Op("TAppBin", [Var("c_40"), Var("d_40")])
                , Var("e_40")
                )
              )
            , Seq(
                Build(Var("c_40"))
              , Seq(
                  CallT(SVar("a_19"), [], [])
                , Seq(
                    Match(Var("f_40"))
                  , Seq(
                      Build(Var("d_40"))
                    , Seq(
                        CallT(SVar("b_19"), [], [])
                      , Seq(
                          Match(Var("g_40"))
                        , Build(
                            Anno(
                              Op("TAppBin", [Var("f_40"), Var("g_40")])
                            , Var("e_40")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TProd_1_0"
        , [ VarDec(
              "c_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_40", "h_40", "j_40"]
          , Seq(
              Match(
                Anno(Op("TProd", [Var("h_40")]), Var("i_40"))
              )
            , Seq(
                Build(Var("h_40"))
              , Seq(
                  CallT(SVar("c_19"), [], [])
                , Seq(
                    Match(Var("j_40"))
                  , Build(
                      Anno(Op("TProd", [Var("j_40")]), Var("i_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TList_1_0"
        , [ VarDec(
              "d_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_40", "k_40", "m_40"]
          , Seq(
              Match(
                Anno(Op("TList", [Var("k_40")]), Var("l_40"))
              )
            , Seq(
                Build(Var("k_40"))
              , Seq(
                  CallT(SVar("d_19"), [], [])
                , Seq(
                    Match(Var("m_40"))
                  , Build(
                      Anno(Op("TList", [Var("m_40")]), Var("l_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TVar_1_0"
        , [ VarDec(
              "e_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_40", "n_40", "p_40"]
          , Seq(
              Match(
                Anno(Op("TVar", [Var("n_40")]), Var("o_40"))
              )
            , Seq(
                Build(Var("n_40"))
              , Seq(
                  CallT(SVar("e_19"), [], [])
                , Seq(
                    Match(Var("p_40"))
                  , Build(
                      Anno(Op("TVar", [Var("p_40")]), Var("o_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TCon_1_0"
        , [ VarDec(
              "f_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_40", "q_40", "s_40"]
          , Seq(
              Match(
                Anno(Op("TCon", [Var("q_40")]), Var("r_40"))
              )
            , Seq(
                Build(Var("q_40"))
              , Seq(
                  CallT(SVar("f_19"), [], [])
                , Seq(
                    Match(Var("s_40"))
                  , Build(
                      Anno(Op("TCon", [Var("s_40")]), Var("r_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TCons_2_0"
        , [ VarDec(
              "g_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_40", "t_40", "u_40", "w_40", "x_40"]
          , Seq(
              Match(
                Anno(
                  Op("TCons", [Var("t_40"), Var("u_40")])
                , Var("v_40")
                )
              )
            , Seq(
                Build(Var("t_40"))
              , Seq(
                  CallT(SVar("g_19"), [], [])
                , Seq(
                    Match(Var("w_40"))
                  , Seq(
                      Build(Var("u_40"))
                    , Seq(
                        CallT(SVar("h_19"), [], [])
                      , Seq(
                          Match(Var("x_40"))
                        , Build(
                            Anno(
                              Op("TCons", [Var("w_40"), Var("x_40")])
                            , Var("v_40")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TList_0_0"
        , []
        , []
        , Match(Anno(Op("TList", []), Wld()))
        )
      , SDefT(
          "TUnit_0_0"
        , []
        , []
        , Match(Anno(Op("TUnit", []), Wld()))
        )
      , SDefT(
          "TArrow_0_0"
        , []
        , []
        , Match(Anno(Op("TArrow", []), Wld()))
        )
      , SDefT(
          "Hiding_1_0"
        , [ VarDec(
              "i_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_40", "y_40", "a_41"]
          , Seq(
              Match(
                Anno(Op("Hiding", [Var("y_40")]), Var("z_40"))
              )
            , Seq(
                Build(Var("y_40"))
              , Seq(
                  CallT(SVar("i_19"), [], [])
                , Seq(
                    Match(Var("a_41"))
                  , Build(
                      Anno(Op("Hiding", [Var("a_41")]), Var("z_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Impspec_1_0"
        , [ VarDec(
              "j_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_41", "b_41", "d_41"]
          , Seq(
              Match(
                Anno(Op("Impspec", [Var("b_41")]), Var("c_41"))
              )
            , Seq(
                Build(Var("b_41"))
              , Seq(
                  CallT(SVar("j_19"), [], [])
                , Seq(
                    Match(Var("d_41"))
                  , Build(
                      Anno(Op("Impspec", [Var("d_41")]), Var("c_41"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "As_1_0"
        , [ VarDec(
              "k_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_41", "e_41", "g_41"]
          , Seq(
              Match(
                Anno(Op("As", [Var("e_41")]), Var("f_41"))
              )
            , Seq(
                Build(Var("e_41"))
              , Seq(
                  CallT(SVar("k_19"), [], [])
                , Seq(
                    Match(Var("g_41"))
                  , Build(
                      Anno(Op("As", [Var("g_41")]), Var("f_41"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Qualified_0_0"
        , []
        , []
        , Match(Anno(Op("Qualified", []), Wld()))
        )
      , SDefT(
          "SOURCE_0_0"
        , []
        , []
        , Match(Anno(Op("SOURCE", []), Wld()))
        )
      , SDefT(
          "Import_5_0"
        , [ VarDec(
              "l_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            [ "m_41"
            , "h_41"
            , "i_41"
            , "j_41"
            , "k_41"
            , "l_41"
            , "n_41"
            , "o_41"
            , "p_41"
            , "q_41"
            , "r_41"
            ]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Import"
                  , [ Var("h_41")
                    , Var("i_41")
                    , Var("j_41")
                    , Var("k_41")
                    , Var("l_41")
                    ]
                  )
                , Var("m_41")
                )
              )
            , Seq(
                Build(Var("h_41"))
              , Seq(
                  CallT(SVar("l_19"), [], [])
                , Seq(
                    Match(Var("n_41"))
                  , Seq(
                      Build(Var("i_41"))
                    , Seq(
                        CallT(SVar("m_19"), [], [])
                      , Seq(
                          Match(Var("o_41"))
                        , Seq(
                            Build(Var("j_41"))
                          , Seq(
                              CallT(SVar("n_19"), [], [])
                            , Seq(
                                Match(Var("p_41"))
                              , Seq(
                                  Build(Var("k_41"))
                                , Seq(
                                    CallT(SVar("o_19"), [], [])
                                  , Seq(
                                      Match(Var("q_41"))
                                    , Seq(
                                        Build(Var("l_41"))
                                      , Seq(
                                          CallT(SVar("p_19"), [], [])
                                        , Seq(
                                            Match(Var("r_41"))
                                          , Build(
                                              Anno(
                                                Op(
                                                  "Import"
                                                , [ Var("n_41")
                                                  , Var("o_41")
                                                  , Var("p_41")
                                                  , Var("q_41")
                                                  , Var("r_41")
                                                  ]
                                                )
                                              , Var("m_41")
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Exports_1_0"
        , [ VarDec(
              "q_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_41", "s_41", "u_41"]
          , Seq(
              Match(
                Anno(Op("Exports", [Var("s_41")]), Var("t_41"))
              )
            , Seq(
                Build(Var("s_41"))
              , Seq(
                  CallT(SVar("q_19"), [], [])
                , Seq(
                    Match(Var("u_41"))
                  , Build(
                      Anno(Op("Exports", [Var("u_41")]), Var("t_41"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Exportlist_1_0"
        , [ VarDec(
              "r_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_41", "v_41", "x_41"]
          , Seq(
              Match(
                Anno(Op("Exportlist", [Var("v_41")]), Var("w_41"))
              )
            , Seq(
                Build(Var("v_41"))
              , Seq(
                  CallT(SVar("r_19"), [], [])
                , Seq(
                    Match(Var("x_41"))
                  , Build(
                      Anno(Op("Exportlist", [Var("x_41")]), Var("w_41"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Body_2_0"
        , [ VarDec(
              "s_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_42", "y_41", "z_41", "b_42", "c_42"]
          , Seq(
              Match(
                Anno(
                  Op("Body", [Var("y_41"), Var("z_41")])
                , Var("a_42")
                )
              )
            , Seq(
                Build(Var("y_41"))
              , Seq(
                  CallT(SVar("s_19"), [], [])
                , Seq(
                    Match(Var("b_42"))
                  , Seq(
                      Build(Var("z_41"))
                    , Seq(
                        CallT(SVar("t_19"), [], [])
                      , Seq(
                          Match(Var("c_42"))
                        , Build(
                            Anno(
                              Op("Body", [Var("b_42"), Var("c_42")])
                            , Var("a_42")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Empty_0_0"
        , []
        , []
        , Match(Anno(Op("Empty", []), Wld()))
        )
      , SDefT(
          "FlexibleInstance_4_0"
        , [ VarDec(
              "u_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "w_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_42", "d_42", "e_42", "f_42", "g_42", "i_42", "j_42", "k_42", "l_42"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "FlexibleInstance"
                  , [Var("d_42"), Var("e_42"), Var("f_42"), Var("g_42")]
                  )
                , Var("h_42")
                )
              )
            , Seq(
                Build(Var("d_42"))
              , Seq(
                  CallT(SVar("u_19"), [], [])
                , Seq(
                    Match(Var("i_42"))
                  , Seq(
                      Build(Var("e_42"))
                    , Seq(
                        CallT(SVar("v_19"), [], [])
                      , Seq(
                          Match(Var("j_42"))
                        , Seq(
                            Build(Var("f_42"))
                          , Seq(
                              CallT(SVar("w_19"), [], [])
                            , Seq(
                                Match(Var("k_42"))
                              , Seq(
                                  Build(Var("g_42"))
                                , Seq(
                                    CallT(SVar("x_19"), [], [])
                                  , Seq(
                                      Match(Var("l_42"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "FlexibleInstance"
                                          , [Var("i_42"), Var("j_42"), Var("k_42"), Var("l_42")]
                                          )
                                        , Var("h_42")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Default_1_0"
        , [ VarDec(
              "y_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_42", "m_42", "o_42"]
          , Seq(
              Match(
                Anno(Op("Default", [Var("m_42")]), Var("n_42"))
              )
            , Seq(
                Build(Var("m_42"))
              , Seq(
                  CallT(SVar("y_19"), [], [])
                , Seq(
                    Match(Var("o_42"))
                  , Build(
                      Anno(Op("Default", [Var("o_42")]), Var("n_42"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Instance_4_0"
        , [ VarDec(
              "z_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_42", "p_42", "q_42", "r_42", "s_42", "u_42", "v_42", "w_42", "x_42"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Instance"
                  , [Var("p_42"), Var("q_42"), Var("r_42"), Var("s_42")]
                  )
                , Var("t_42")
                )
              )
            , Seq(
                Build(Var("p_42"))
              , Seq(
                  CallT(SVar("z_19"), [], [])
                , Seq(
                    Match(Var("u_42"))
                  , Seq(
                      Build(Var("q_42"))
                    , Seq(
                        CallT(SVar("a_20"), [], [])
                      , Seq(
                          Match(Var("v_42"))
                        , Seq(
                            Build(Var("r_42"))
                          , Seq(
                              CallT(SVar("b_20"), [], [])
                            , Seq(
                                Match(Var("w_42"))
                              , Seq(
                                  Build(Var("s_42"))
                                , Seq(
                                    CallT(SVar("c_20"), [], [])
                                  , Seq(
                                      Match(Var("x_42"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Instance"
                                          , [Var("u_42"), Var("v_42"), Var("w_42"), Var("x_42")]
                                          )
                                        , Var("t_42")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Class_4_0"
        , [ VarDec(
              "d_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_43", "y_42", "z_42", "a_43", "b_43", "d_43", "e_43", "f_43", "g_43"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Class"
                  , [Var("y_42"), Var("z_42"), Var("a_43"), Var("b_43")]
                  )
                , Var("c_43")
                )
              )
            , Seq(
                Build(Var("y_42"))
              , Seq(
                  CallT(SVar("d_20"), [], [])
                , Seq(
                    Match(Var("d_43"))
                  , Seq(
                      Build(Var("z_42"))
                    , Seq(
                        CallT(SVar("e_20"), [], [])
                      , Seq(
                          Match(Var("e_43"))
                        , Seq(
                            Build(Var("a_43"))
                          , Seq(
                              CallT(SVar("f_20"), [], [])
                            , Seq(
                                Match(Var("f_43"))
                              , Seq(
                                  Build(Var("b_43"))
                                , Seq(
                                    CallT(SVar("g_20"), [], [])
                                  , Seq(
                                      Match(Var("g_43"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Class"
                                          , [Var("d_43"), Var("e_43"), Var("f_43"), Var("g_43")]
                                          )
                                        , Var("c_43")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Data_4_0"
        , [ VarDec(
              "h_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_43", "h_43", "i_43", "j_43", "k_43", "m_43", "n_43", "o_43", "p_43"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Data"
                  , [Var("h_43"), Var("i_43"), Var("j_43"), Var("k_43")]
                  )
                , Var("l_43")
                )
              )
            , Seq(
                Build(Var("h_43"))
              , Seq(
                  CallT(SVar("h_20"), [], [])
                , Seq(
                    Match(Var("m_43"))
                  , Seq(
                      Build(Var("i_43"))
                    , Seq(
                        CallT(SVar("i_20"), [], [])
                      , Seq(
                          Match(Var("n_43"))
                        , Seq(
                            Build(Var("j_43"))
                          , Seq(
                              CallT(SVar("j_20"), [], [])
                            , Seq(
                                Match(Var("o_43"))
                              , Seq(
                                  Build(Var("k_43"))
                                , Seq(
                                    CallT(SVar("k_20"), [], [])
                                  , Seq(
                                      Match(Var("p_43"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Data"
                                          , [Var("m_43"), Var("n_43"), Var("o_43"), Var("p_43")]
                                          )
                                        , Var("l_43")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TypeDecl_3_0"
        , [ VarDec(
              "l_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_43", "q_43", "r_43", "s_43", "u_43", "v_43", "w_43"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "TypeDecl"
                  , [Var("q_43"), Var("r_43"), Var("s_43")]
                  )
                , Var("t_43")
                )
              )
            , Seq(
                Build(Var("q_43"))
              , Seq(
                  CallT(SVar("l_20"), [], [])
                , Seq(
                    Match(Var("u_43"))
                  , Seq(
                      Build(Var("r_43"))
                    , Seq(
                        CallT(SVar("m_20"), [], [])
                      , Seq(
                          Match(Var("v_43"))
                        , Seq(
                            Build(Var("s_43"))
                          , Seq(
                              CallT(SVar("n_20"), [], [])
                            , Seq(
                                Match(Var("w_43"))
                              , Build(
                                  Anno(
                                    Op(
                                      "TypeDecl"
                                    , [Var("u_43"), Var("v_43"), Var("w_43")]
                                    )
                                  , Var("t_43")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Program_1_0"
        , [ VarDec(
              "o_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_43", "x_43", "z_43"]
          , Seq(
              Match(
                Anno(Op("Program", [Var("x_43")]), Var("y_43"))
              )
            , Seq(
                Build(Var("x_43"))
              , Seq(
                  CallT(SVar("o_20"), [], [])
                , Seq(
                    Match(Var("z_43"))
                  , Build(
                      Anno(Op("Program", [Var("z_43")]), Var("y_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Module_2_0"
        , [ VarDec(
              "p_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_44", "a_44", "b_44", "d_44", "e_44"]
          , Seq(
              Match(
                Anno(
                  Op("Module", [Var("a_44"), Var("b_44")])
                , Var("c_44")
                )
              )
            , Seq(
                Build(Var("a_44"))
              , Seq(
                  CallT(SVar("p_20"), [], [])
                , Seq(
                    Match(Var("d_44"))
                  , Seq(
                      Build(Var("b_44"))
                    , Seq(
                        CallT(SVar("q_20"), [], [])
                      , Seq(
                          Match(Var("e_44"))
                        , Build(
                            Anno(
                              Op("Module", [Var("d_44"), Var("e_44")])
                            , Var("c_44")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ModuleDec_2_0"
        , [ VarDec(
              "r_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_44", "f_44", "g_44", "i_44", "j_44"]
          , Seq(
              Match(
                Anno(
                  Op("ModuleDec", [Var("f_44"), Var("g_44")])
                , Var("h_44")
                )
              )
            , Seq(
                Build(Var("f_44"))
              , Seq(
                  CallT(SVar("r_20"), [], [])
                , Seq(
                    Match(Var("i_44"))
                  , Seq(
                      Build(Var("g_44"))
                    , Seq(
                        CallT(SVar("s_20"), [], [])
                      , Seq(
                          Match(Var("j_44"))
                        , Build(
                            Anno(
                              Op("ModuleDec", [Var("i_44"), Var("j_44")])
                            , Var("h_44")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CLitLit_1_0"
        , [ VarDec(
              "t_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_44", "k_44", "m_44"]
          , Seq(
              Match(
                Anno(Op("CLitLit", [Var("k_44")]), Var("l_44"))
              )
            , Seq(
                Build(Var("k_44"))
              , Seq(
                  CallT(SVar("t_20"), [], [])
                , Seq(
                    Match(Var("m_44"))
                  , Build(
                      Anno(Op("CLitLit", [Var("m_44")]), Var("l_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimDouble_1_0"
        , [ VarDec(
              "u_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_44", "n_44", "p_44"]
          , Seq(
              Match(
                Anno(Op("PrimDouble", [Var("n_44")]), Var("o_44"))
              )
            , Seq(
                Build(Var("n_44"))
              , Seq(
                  CallT(SVar("u_20"), [], [])
                , Seq(
                    Match(Var("p_44"))
                  , Build(
                      Anno(Op("PrimDouble", [Var("p_44")]), Var("o_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimFloat_1_0"
        , [ VarDec(
              "v_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_44", "q_44", "s_44"]
          , Seq(
              Match(
                Anno(Op("PrimFloat", [Var("q_44")]), Var("r_44"))
              )
            , Seq(
                Build(Var("q_44"))
              , Seq(
                  CallT(SVar("v_20"), [], [])
                , Seq(
                    Match(Var("s_44"))
                  , Build(
                      Anno(Op("PrimFloat", [Var("s_44")]), Var("r_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimString_1_0"
        , [ VarDec(
              "w_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_44", "t_44", "v_44"]
          , Seq(
              Match(
                Anno(Op("PrimString", [Var("t_44")]), Var("u_44"))
              )
            , Seq(
                Build(Var("t_44"))
              , Seq(
                  CallT(SVar("w_20"), [], [])
                , Seq(
                    Match(Var("v_44"))
                  , Build(
                      Anno(Op("PrimString", [Var("v_44")]), Var("u_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimChar_1_0"
        , [ VarDec(
              "x_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_44", "w_44", "y_44"]
          , Seq(
              Match(
                Anno(Op("PrimChar", [Var("w_44")]), Var("x_44"))
              )
            , Seq(
                Build(Var("w_44"))
              , Seq(
                  CallT(SVar("x_20"), [], [])
                , Seq(
                    Match(Var("y_44"))
                  , Build(
                      Anno(Op("PrimChar", [Var("y_44")]), Var("x_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimInt_1_0"
        , [ VarDec(
              "y_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_45", "z_44", "b_45"]
          , Seq(
              Match(
                Anno(Op("PrimInt", [Var("z_44")]), Var("a_45"))
              )
            , Seq(
                Build(Var("z_44"))
              , Seq(
                  CallT(SVar("y_20"), [], [])
                , Seq(
                    Match(Var("b_45"))
                  , Build(
                      Anno(Op("PrimInt", [Var("b_45")]), Var("a_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Float_1_0"
        , [ VarDec(
              "z_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_45", "c_45", "e_45"]
          , Seq(
              Match(
                Anno(Op("Float", [Var("c_45")]), Var("d_45"))
              )
            , Seq(
                Build(Var("c_45"))
              , Seq(
                  CallT(SVar("z_20"), [], [])
                , Seq(
                    Match(Var("e_45"))
                  , Build(
                      Anno(Op("Float", [Var("e_45")]), Var("d_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Int_1_0"
        , [ VarDec(
              "a_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_45", "f_45", "h_45"]
          , Seq(
              Match(
                Anno(Op("Int", [Var("f_45")]), Var("g_45"))
              )
            , Seq(
                Build(Var("f_45"))
              , Seq(
                  CallT(SVar("a_21"), [], [])
                , Seq(
                    Match(Var("h_45"))
                  , Build(
                      Anno(Op("Int", [Var("h_45")]), Var("g_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "HexadecimalEsc_1_0"
        , [ VarDec(
              "b_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_45", "i_45", "k_45"]
          , Seq(
              Match(
                Anno(Op("HexadecimalEsc", [Var("i_45")]), Var("j_45"))
              )
            , Seq(
                Build(Var("i_45"))
              , Seq(
                  CallT(SVar("b_21"), [], [])
                , Seq(
                    Match(Var("k_45"))
                  , Build(
                      Anno(Op("HexadecimalEsc", [Var("k_45")]), Var("j_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OctalEsc_1_0"
        , [ VarDec(
              "c_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_45", "l_45", "n_45"]
          , Seq(
              Match(
                Anno(Op("OctalEsc", [Var("l_45")]), Var("m_45"))
              )
            , Seq(
                Build(Var("l_45"))
              , Seq(
                  CallT(SVar("c_21"), [], [])
                , Seq(
                    Match(Var("n_45"))
                  , Build(
                      Anno(Op("OctalEsc", [Var("n_45")]), Var("m_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DecimalEsc_1_0"
        , [ VarDec(
              "d_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_45", "o_45", "q_45"]
          , Seq(
              Match(
                Anno(Op("DecimalEsc", [Var("o_45")]), Var("p_45"))
              )
            , Seq(
                Build(Var("o_45"))
              , Seq(
                  CallT(SVar("d_21"), [], [])
                , Seq(
                    Match(Var("q_45"))
                  , Build(
                      Anno(Op("DecimalEsc", [Var("q_45")]), Var("p_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ASCIIEsc_1_0"
        , [ VarDec(
              "e_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_45", "r_45", "t_45"]
          , Seq(
              Match(
                Anno(Op("ASCIIEsc", [Var("r_45")]), Var("s_45"))
              )
            , Seq(
                Build(Var("r_45"))
              , Seq(
                  CallT(SVar("e_21"), [], [])
                , Seq(
                    Match(Var("t_45"))
                  , Build(
                      Anno(Op("ASCIIEsc", [Var("t_45")]), Var("s_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CharEsc_1_0"
        , [ VarDec(
              "f_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_45", "u_45", "w_45"]
          , Seq(
              Match(
                Anno(Op("CharEsc", [Var("u_45")]), Var("v_45"))
              )
            , Seq(
                Build(Var("u_45"))
              , Seq(
                  CallT(SVar("f_21"), [], [])
                , Seq(
                    Match(Var("w_45"))
                  , Build(
                      Anno(Op("CharEsc", [Var("w_45")]), Var("v_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Gap_1_0"
        , [ VarDec(
              "g_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_45", "x_45", "z_45"]
          , Seq(
              Match(
                Anno(Op("Gap", [Var("x_45")]), Var("y_45"))
              )
            , Seq(
                Build(Var("x_45"))
              , Seq(
                  CallT(SVar("g_21"), [], [])
                , Seq(
                    Match(Var("z_45"))
                  , Build(
                      Anno(Op("Gap", [Var("z_45")]), Var("y_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Escape_1_0"
        , [ VarDec(
              "h_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_46", "a_46", "c_46"]
          , Seq(
              Match(
                Anno(Op("Escape", [Var("a_46")]), Var("b_46"))
              )
            , Seq(
                Build(Var("a_46"))
              , Seq(
                  CallT(SVar("h_21"), [], [])
                , Seq(
                    Match(Var("c_46"))
                  , Build(
                      Anno(Op("Escape", [Var("c_46")]), Var("b_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "String_1_0"
        , [ VarDec(
              "i_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_46", "d_46", "f_46"]
          , Seq(
              Match(
                Anno(Op("String", [Var("d_46")]), Var("e_46"))
              )
            , Seq(
                Build(Var("d_46"))
              , Seq(
                  CallT(SVar("i_21"), [], [])
                , Seq(
                    Match(Var("f_46"))
                  , Build(
                      Anno(Op("String", [Var("f_46")]), Var("e_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Char_1_0"
        , [ VarDec(
              "j_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_46", "g_46", "i_46"]
          , Seq(
              Match(
                Anno(Op("Char", [Var("g_46")]), Var("h_46"))
              )
            , Seq(
                Build(Var("g_46"))
              , Seq(
                  CallT(SVar("j_21"), [], [])
                , Seq(
                    Match(Var("i_46"))
                  , Build(
                      Anno(Op("Char", [Var("i_46")]), Var("h_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QModId_2_0"
        , [ VarDec(
              "k_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_46", "j_46", "k_46", "m_46", "n_46"]
          , Seq(
              Match(
                Anno(
                  Op("QModId", [Var("j_46"), Var("k_46")])
                , Var("l_46")
                )
              )
            , Seq(
                Build(Var("j_46"))
              , Seq(
                  CallT(SVar("k_21"), [], [])
                , Seq(
                    Match(Var("m_46"))
                  , Seq(
                      Build(Var("k_46"))
                    , Seq(
                        CallT(SVar("l_21"), [], [])
                      , Seq(
                          Match(Var("n_46"))
                        , Build(
                            Anno(
                              Op("QModId", [Var("m_46"), Var("n_46")])
                            , Var("l_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QConSym_2_0"
        , [ VarDec(
              "m_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_46", "o_46", "p_46", "r_46", "s_46"]
          , Seq(
              Match(
                Anno(
                  Op("QConSym", [Var("o_46"), Var("p_46")])
                , Var("q_46")
                )
              )
            , Seq(
                Build(Var("o_46"))
              , Seq(
                  CallT(SVar("m_21"), [], [])
                , Seq(
                    Match(Var("r_46"))
                  , Seq(
                      Build(Var("p_46"))
                    , Seq(
                        CallT(SVar("n_21"), [], [])
                      , Seq(
                          Match(Var("s_46"))
                        , Build(
                            Anno(
                              Op("QConSym", [Var("r_46"), Var("s_46")])
                            , Var("q_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QVarSym_2_0"
        , [ VarDec(
              "o_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_46", "t_46", "u_46", "w_46", "x_46"]
          , Seq(
              Match(
                Anno(
                  Op("QVarSym", [Var("t_46"), Var("u_46")])
                , Var("v_46")
                )
              )
            , Seq(
                Build(Var("t_46"))
              , Seq(
                  CallT(SVar("o_21"), [], [])
                , Seq(
                    Match(Var("w_46"))
                  , Seq(
                      Build(Var("u_46"))
                    , Seq(
                        CallT(SVar("p_21"), [], [])
                      , Seq(
                          Match(Var("x_46"))
                        , Build(
                            Anno(
                              Op("QVarSym", [Var("w_46"), Var("x_46")])
                            , Var("v_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QConId_2_0"
        , [ VarDec(
              "q_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_47", "y_46", "z_46", "b_47", "c_47"]
          , Seq(
              Match(
                Anno(
                  Op("QConId", [Var("y_46"), Var("z_46")])
                , Var("a_47")
                )
              )
            , Seq(
                Build(Var("y_46"))
              , Seq(
                  CallT(SVar("q_21"), [], [])
                , Seq(
                    Match(Var("b_47"))
                  , Seq(
                      Build(Var("z_46"))
                    , Seq(
                        CallT(SVar("r_21"), [], [])
                      , Seq(
                          Match(Var("c_47"))
                        , Build(
                            Anno(
                              Op("QConId", [Var("b_47"), Var("c_47")])
                            , Var("a_47")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QVarId_2_0"
        , [ VarDec(
              "s_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_47", "d_47", "e_47", "g_47", "h_47"]
          , Seq(
              Match(
                Anno(
                  Op("QVarId", [Var("d_47"), Var("e_47")])
                , Var("f_47")
                )
              )
            , Seq(
                Build(Var("d_47"))
              , Seq(
                  CallT(SVar("s_21"), [], [])
                , Seq(
                    Match(Var("g_47"))
                  , Seq(
                      Build(Var("e_47"))
                    , Seq(
                        CallT(SVar("t_21"), [], [])
                      , Seq(
                          Match(Var("h_47"))
                        , Build(
                            Anno(
                              Op("QVarId", [Var("g_47"), Var("h_47")])
                            , Var("f_47")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinCon_1_0"
        , [ VarDec(
              "u_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_47", "i_47", "k_47"]
          , Seq(
              Match(
                Anno(Op("BinCon", [Var("i_47")]), Var("j_47"))
              )
            , Seq(
                Build(Var("i_47"))
              , Seq(
                  CallT(SVar("u_21"), [], [])
                , Seq(
                    Match(Var("k_47"))
                  , Build(
                      Anno(Op("BinCon", [Var("k_47")]), Var("j_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConsOp_1_0"
        , [ VarDec(
              "v_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_47", "l_47", "n_47"]
          , Seq(
              Match(
                Anno(Op("ConsOp", [Var("l_47")]), Var("m_47"))
              )
            , Seq(
                Build(Var("l_47"))
              , Seq(
                  CallT(SVar("v_21"), [], [])
                , Seq(
                    Match(Var("n_47"))
                  , Build(
                      Anno(Op("ConsOp", [Var("n_47")]), Var("m_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrefCon_1_0"
        , [ VarDec(
              "w_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_47", "o_47", "q_47"]
          , Seq(
              Match(
                Anno(Op("PrefCon", [Var("o_47")]), Var("p_47"))
              )
            , Seq(
                Build(Var("o_47"))
              , Seq(
                  CallT(SVar("w_21"), [], [])
                , Seq(
                    Match(Var("q_47"))
                  , Build(
                      Anno(Op("PrefCon", [Var("q_47")]), Var("p_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrefOp_1_0"
        , [ VarDec(
              "x_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_47", "r_47", "t_47"]
          , Seq(
              Match(
                Anno(Op("PrefOp", [Var("r_47")]), Var("s_47"))
              )
            , Seq(
                Build(Var("r_47"))
              , Seq(
                  CallT(SVar("x_21"), [], [])
                , Seq(
                    Match(Var("t_47"))
                  , Build(
                      Anno(Op("PrefOp", [Var("t_47")]), Var("s_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConOp_1_0"
        , [ VarDec(
              "y_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_47", "u_47", "w_47"]
          , Seq(
              Match(
                Anno(Op("ConOp", [Var("u_47")]), Var("v_47"))
              )
            , Seq(
                Build(Var("u_47"))
              , Seq(
                  CallT(SVar("y_21"), [], [])
                , Seq(
                    Match(Var("w_47"))
                  , Build(
                      Anno(Op("ConOp", [Var("w_47")]), Var("v_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Op_1_0"
        , [ VarDec(
              "z_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_47", "x_47", "z_47"]
          , Seq(
              Match(
                Anno(Op("Op", [Var("x_47")]), Var("y_47"))
              )
            , Seq(
                Build(Var("x_47"))
              , Seq(
                  CallT(SVar("z_21"), [], [])
                , Seq(
                    Match(Var("z_47"))
                  , Build(
                      Anno(Op("Op", [Var("z_47")]), Var("y_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinOp_1_0"
        , [ VarDec(
              "a_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_48", "a_48", "c_48"]
          , Seq(
              Match(
                Anno(Op("BinOp", [Var("a_48")]), Var("b_48"))
              )
            , Seq(
                Build(Var("a_48"))
              , Seq(
                  CallT(SVar("a_22"), [], [])
                , Seq(
                    Match(Var("c_48"))
                  , Build(
                      Anno(Op("BinOp", [Var("c_48")]), Var("b_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "EmptyList_0_0"
        , []
        , []
        , Match(Anno(Op("EmptyList", []), Wld()))
        )
      , SDefT(
          "Unit_0_0"
        , []
        , []
        , Match(Anno(Op("Unit", []), Wld()))
        )
      , SDefT(
          "Ins_1_0"
        , [ VarDec(
              "b_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_48", "d_48", "f_48"]
          , Seq(
              Match(
                Anno(Op("Ins", [Var("d_48")]), Var("e_48"))
              )
            , Seq(
                Build(Var("d_48"))
              , Seq(
                  CallT(SVar("b_22"), [], [])
                , Seq(
                    Match(Var("f_48"))
                  , Build(
                      Anno(Op("Ins", [Var("f_48")]), Var("e_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Snoc_2_0"
        , [ VarDec(
              "c_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_48", "g_48", "h_48", "j_48", "k_48"]
          , Seq(
              Match(
                Anno(
                  Op("Snoc", [Var("g_48"), Var("h_48")])
                , Var("i_48")
                )
              )
            , Seq(
                Build(Var("g_48"))
              , Seq(
                  CallT(SVar("c_22"), [], [])
                , Seq(
                    Match(Var("j_48"))
                  , Seq(
                      Build(Var("h_48"))
                    , Seq(
                        CallT(SVar("d_22"), [], [])
                      , Seq(
                          Match(Var("k_48"))
                        , Build(
                            Anno(
                              Op("Snoc", [Var("j_48"), Var("k_48")])
                            , Var("i_48")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DR__UNDEFINE_1_0"
        , [ VarDec(
              "e_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_48", "l_48", "n_48"]
          , Seq(
              Match(
                Anno(Op("DR_UNDEFINE", [Var("l_48")]), Var("m_48"))
              )
            , Seq(
                Build(Var("l_48"))
              , Seq(
                  CallT(SVar("e_22"), [], [])
                , Seq(
                    Match(Var("n_48"))
                  , Build(
                      Anno(Op("DR_UNDEFINE", [Var("n_48")]), Var("m_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DR__DUMMY_0_0"
        , []
        , []
        , Match(Anno(Op("DR_DUMMY", []), Wld()))
        )
      ]
    )
  ]
)
