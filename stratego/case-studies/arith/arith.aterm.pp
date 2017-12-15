Specification(
  [ Signature(
      [ Constructors(
          [ OpDecl("Zero", ConstType(SortNoArgs("Exp")))
          , OpDecl(
              "Succ"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Mult"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Add"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl("Nil", ConstType(Sort("List", [SortVar("a")])))
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortVar("a")), ConstType(Sort("List", [SortVar("a")]))]
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
          ]
        )
      ]
    )
  , Strategies(
      [ SDefT(
          "eval_0_0"
        , []
        , []
        , GuardedLChoice(
            Seq(
              Match(
                Anno(
                  Op(
                    "Mult"
                  , [Anno(Op("Zero", []), Wld()), Wld()]
                  )
                , Wld()
                )
              )
            , Build(Anno(Op("Zero", []), Op("Nil", [])))
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["m_1", "n_1"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        "Mult"
                      , [Anno(Op("Succ", [Var("m_1")]), Wld()), Var("n_1")]
                      )
                    , Wld()
                    )
                  )
                , Seq(
                    Build(
                      Anno(
                        Op(
                          "Add"
                        , [ Anno(
                              Op("Mult", [Var("m_1"), Var("n_1")])
                            , Op("Nil", [])
                            )
                          , Var("n_1")
                          ]
                        )
                      , Op("Nil", [])
                      )
                    )
                  , CallT(SVar("eval_0_0"), [], [])
                  )
                )
              )
            , Id()
            , GuardedLChoice(
                Scope(
                  ["g_1", "h_1", "i_1", "k_1", "j_1", "l_1"]
                , Seq(
                    Match(
                      Anno(
                        Op("Mult", [Var("g_1"), Var("h_1")])
                      , Wld()
                      )
                    )
                  , Seq(
                      Match(Var("k_1"))
                    , Seq(
                        Build(Var("g_1"))
                      , Seq(
                          CallT(SVar("eval_0_0"), [], [])
                        , Seq(
                            Match(Var("i_1"))
                          , Seq(
                              Build(Var("k_1"))
                            , Seq(
                                Match(Var("l_1"))
                              , Seq(
                                  Build(Var("h_1"))
                                , Seq(
                                    CallT(SVar("eval_0_0"), [], [])
                                  , Seq(
                                      Match(Var("j_1"))
                                    , Seq(
                                        Build(Var("l_1"))
                                      , Seq(
                                          Build(
                                            Anno(
                                              Op("Mult", [Var("i_1"), Var("j_1")])
                                            , Op("Nil", [])
                                            )
                                          )
                                        , CallT(SVar("eval_0_0"), [], [])
                                        )
                                      )
                                    )
                                  )
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
                    ["f_1"]
                  , Seq(
                      Match(
                        Anno(
                          Op(
                            "Add"
                          , [Anno(Op("Zero", []), Wld()), Var("f_1")]
                          )
                        , Wld()
                        )
                      )
                    , Seq(
                        Build(Var("f_1"))
                      , CallT(SVar("eval_0_0"), [], [])
                      )
                    )
                  )
                , Id()
                , GuardedLChoice(
                    Scope(
                      ["b_1", "c_1", "d_1", "e_1"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              "Add"
                            , [Anno(Op("Succ", [Var("b_1")]), Wld()), Var("c_1")]
                            )
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("e_1"))
                        , Seq(
                            Build(
                              Anno(
                                Op("Add", [Var("b_1"), Var("c_1")])
                              , Op("Nil", [])
                              )
                            )
                          , Seq(
                              CallT(SVar("eval_0_0"), [], [])
                            , Seq(
                                Match(Var("d_1"))
                              , Seq(
                                  Build(Var("e_1"))
                                , Build(
                                    Anno(
                                      Op("Succ", [Var("d_1")])
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
                  , Id()
                  , Scope(
                      ["v_0", "w_0", "x_0", "z_0", "y_0", "a_1"]
                    , Seq(
                        Match(
                          Anno(
                            Op("Add", [Var("v_0"), Var("w_0")])
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("z_0"))
                        , Seq(
                            Build(Var("v_0"))
                          , Seq(
                              CallT(SVar("eval_0_0"), [], [])
                            , Seq(
                                Match(Var("x_0"))
                              , Seq(
                                  Build(Var("z_0"))
                                , Seq(
                                    Match(Var("a_1"))
                                  , Seq(
                                      Build(Var("w_0"))
                                    , Seq(
                                        CallT(SVar("eval_0_0"), [], [])
                                      , Seq(
                                          Match(Var("y_0"))
                                        , Seq(
                                            Build(Var("a_1"))
                                          , Seq(
                                              Build(
                                                Anno(
                                                  Op("Add", [Var("x_0"), Var("y_0")])
                                                , Op("Nil", [])
                                                )
                                              )
                                            , CallT(SVar("eval_0_0"), [], [])
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
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
              "s_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_1", "p_1", "q_1", "r_1"]
          , Seq(
              Match(Anno(Var("o_1"), Var("p_1")))
            , Seq(
                Build(Var("o_1"))
              , Seq(
                  CallT(SVar("s_1"), [], [])
                , Seq(
                    Match(Var("q_1"))
                  , Seq(
                      Build(Var("p_1"))
                    , Seq(
                        CallT(SVar("t_1"), [], [])
                      , Seq(
                          Match(Var("r_1"))
                        , Build(Anno(Var("q_1"), Var("r_1")))
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
          "Zero_0_0"
        , []
        , []
        , Match(Anno(Op("Zero", []), Wld()))
        )
      , SDefT(
          "Succ_1_0"
        , [ VarDec(
              "u_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_2", "i_2", "k_2"]
          , Seq(
              Match(
                Anno(Op("Succ", [Var("i_2")]), Var("j_2"))
              )
            , Seq(
                Build(Var("i_2"))
              , Seq(
                  CallT(SVar("u_1"), [], [])
                , Seq(
                    Match(Var("k_2"))
                  , Build(
                      Anno(Op("Succ", [Var("k_2")]), Var("j_2"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Mult_2_0"
        , [ VarDec(
              "v_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "w_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_2", "l_2", "m_2", "o_2", "p_2"]
          , Seq(
              Match(
                Anno(
                  Op("Mult", [Var("l_2"), Var("m_2")])
                , Var("n_2")
                )
              )
            , Seq(
                Build(Var("l_2"))
              , Seq(
                  CallT(SVar("v_1"), [], [])
                , Seq(
                    Match(Var("o_2"))
                  , Seq(
                      Build(Var("m_2"))
                    , Seq(
                        CallT(SVar("w_1"), [], [])
                      , Seq(
                          Match(Var("p_2"))
                        , Build(
                            Anno(
                              Op("Mult", [Var("o_2"), Var("p_2")])
                            , Var("n_2")
                            )
                          )
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
          "Add_2_0"
        , [ VarDec(
              "x_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_2", "q_2", "r_2", "t_2", "u_2"]
          , Seq(
              Match(
                Anno(
                  Op("Add", [Var("q_2"), Var("r_2")])
                , Var("s_2")
                )
              )
            , Seq(
                Build(Var("q_2"))
              , Seq(
                  CallT(SVar("x_1"), [], [])
                , Seq(
                    Match(Var("t_2"))
                  , Seq(
                      Build(Var("r_2"))
                    , Seq(
                        CallT(SVar("y_1"), [], [])
                      , Seq(
                          Match(Var("u_2"))
                        , Build(
                            Anno(
                              Op("Add", [Var("t_2"), Var("u_2")])
                            , Var("s_2")
                            )
                          )
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
              "z_1"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_2", "v_2", "w_2", "y_2", "z_2"]
          , Seq(
              Match(
                Anno(
                  Op("Cons", [Var("v_2"), Var("w_2")])
                , Var("x_2")
                )
              )
            , Seq(
                Build(Var("v_2"))
              , Seq(
                  CallT(SVar("z_1"), [], [])
                , Seq(
                    Match(Var("y_2"))
                  , Seq(
                      Build(Var("w_2"))
                    , Seq(
                        CallT(SVar("a_2"), [], [])
                      , Seq(
                          Match(Var("z_2"))
                        , Build(
                            Anno(
                              Op("Cons", [Var("y_2"), Var("z_2")])
                            , Var("x_2")
                            )
                          )
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
          "_1_0"
        , [ VarDec(
              "b_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_3", "a_3", "c_3"]
          , Seq(
              Match(
                Anno(Op("", [Var("a_3")]), Var("b_3"))
              )
            , Seq(
                Build(Var("a_3"))
              , Seq(
                  CallT(SVar("b_2"), [], [])
                , Seq(
                    Match(Var("c_3"))
                  , Build(
                      Anno(Op("", [Var("c_3")]), Var("b_3"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_2_0"
        , [ VarDec(
              "c_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_3", "d_3", "e_3", "g_3", "h_3"]
          , Seq(
              Match(
                Anno(
                  Op("", [Var("d_3"), Var("e_3")])
                , Var("f_3")
                )
              )
            , Seq(
                Build(Var("d_3"))
              , Seq(
                  CallT(SVar("c_2"), [], [])
                , Seq(
                    Match(Var("g_3"))
                  , Seq(
                      Build(Var("e_3"))
                    , Seq(
                        CallT(SVar("d_2"), [], [])
                      , Seq(
                          Match(Var("h_3"))
                        , Build(
                            Anno(
                              Op("", [Var("g_3"), Var("h_3")])
                            , Var("f_3")
                            )
                          )
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
              "e_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_3", "i_3", "j_3", "k_3", "m_3", "n_3", "o_3"]
          , Seq(
              Match(
                Anno(
                  Op(
                    ""
                  , [Var("i_3"), Var("j_3"), Var("k_3")]
                  )
                , Var("l_3")
                )
              )
            , Seq(
                Build(Var("i_3"))
              , Seq(
                  CallT(SVar("e_2"), [], [])
                , Seq(
                    Match(Var("m_3"))
                  , Seq(
                      Build(Var("j_3"))
                    , Seq(
                        CallT(SVar("f_2"), [], [])
                      , Seq(
                          Match(Var("n_3"))
                        , Seq(
                            Build(Var("k_3"))
                          , Seq(
                              CallT(SVar("g_2"), [], [])
                            , Seq(
                                Match(Var("o_3"))
                              , Build(
                                  Anno(
                                    Op(
                                      ""
                                    , [Var("m_3"), Var("n_3"), Var("o_3")]
                                    )
                                  , Var("l_3")
                                  )
                                )
                              )
                            )
                          )
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
              "h_2"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_3", "p_3", "r_3"]
          , Seq(
              Match(
                Anno(Op("DR_UNDEFINE", [Var("p_3")]), Var("q_3"))
              )
            , Seq(
                Build(Var("p_3"))
              , Seq(
                  CallT(SVar("h_2"), [], [])
                , Seq(
                    Match(Var("r_3"))
                  , Build(
                      Anno(Op("DR_UNDEFINE", [Var("r_3")]), Var("q_3"))
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
