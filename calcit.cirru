
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1626777497473) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584780923771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |or) (:type :leaf) (:at 1627849325504) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1584780925829) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780926681) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780923944
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584780994497) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780993270
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780991636
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780921790
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1584780889620) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1627849327831) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1584780894689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780900314) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780894090
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1584780901408) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:inputs) (:type :leaf) (:at 1627973658629) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1627973660060) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627973659865
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1584780901741
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1584780901014
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780889933
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780887905
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1627970834143) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/column) (:type :leaf) (:at 1627970816412) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |q $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627970820809) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627970821363) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627970823219) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1627973278233) (:by |rJG4IHzWf)
                                      |T $ {} (:text |ui/expand) (:type :leaf) (:at 1627970825153) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |{})
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |:padding)
                                              |j $ {} (:text |40) (:type :leaf) (:at 1627977104784) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627973279013
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |:font-size)
                                              |j $ {} (:text |32) (:type :leaf) (:at 1627973288557) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627973279013
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627973279013
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627973275994
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970822280
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970821032
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627932319042) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |->)
                                  |b $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975062060) (:text |:inputs)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975062060) (:text |state)
                                    :type :expr
                                    :at 1627975062060
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |or)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627975058589)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |[])
                                    :type :expr
                                    :at 1627975058589
                                    :by |rJG4IHzWf
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627975058589)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |map)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |markup-tone)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975058589) (:text |.join-str)
                                      |j $ {} (:text "|\" ") (:type :leaf) (:at 1627975088508) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627975058589
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627975058589
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627932318600
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627970820101
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627970820809) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627970821363) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627970823219) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1627973278233) (:by |rJG4IHzWf)
                                      |T $ {} (:text |ui/expand) (:type :leaf) (:at 1627970825153) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |{})
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627973279013)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |:padding)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |16)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973279013) (:text |:font-size)
                                              |j $ {} (:text |32) (:type :leaf) (:at 1627973288557) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627973279013
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627973279013
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627973275994
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970822280
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970821032
                            :by |rJG4IHzWf
                          |f $ {}
                            :data $ {}
                              |T $ {} (:text |input) (:type :leaf) (:at 1627977071146) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627977071729) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:value) (:type :leaf) (:at 1627977077594) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1627977077876) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627977073202
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1627977088083) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/input) (:type :leaf) (:at 1627977089421) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627977085988
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:placeholder) (:type :leaf) (:at 1627977119593) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"TODO") (:type :leaf) (:at 1627977120845) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627977116680
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627977071430
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627977068561
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627970820101
                        :by |rJG4IHzWf
                      |t $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627970838667) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627970839247) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627970842183) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1627970848165) (:by |rJG4IHzWf)
                                      |T $ {} (:text |ui/row-center) (:type :leaf) (:at 1627970877578) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1627970849050) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1627970851271) (:by |rJG4IHzWf)
                                              |j $ {} (:text |16) (:type :leaf) (:at 1627970851819) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627970849329
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627970848715
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627970847022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970839544
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970838900
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-keyboard) (:type :leaf) (:at 1627970100043) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |>>) (:type :leaf) (:at 1627970115415) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627970117330) (:by |rJG4IHzWf)
                                  |r $ {} (:text |:keyboard) (:type :leaf) (:at 1627970121801) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627970114822
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627970727376) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |input) (:type :leaf) (:at 1627972895263) (:by |rJG4IHzWf)
                                      |r $ {} (:text |d!) (:type :leaf) (:at 1627970736357) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627970727631
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |case-default) (:type :leaf) (:at 1627973895687) (:by |rJG4IHzWf)
                                      |H $ {} (:text |input) (:type :leaf) (:at 1627973897011) (:by |rJG4IHzWf)
                                      |L $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |d!)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |cursor)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |update) (:type :leaf) (:at 1627973904456) (:by |rJG4IHzWf)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |state)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |:inputs)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |fn)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627973904456)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |inputs)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |conj) (:type :leaf) (:at 1627973904456) (:by |rJG4IHzWf)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text |inputs)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.join-str) (:type :leaf) (:at 1627973904456) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |input) (:type :leaf) (:at 1627974103710) (:by |rJG4IHzWf)
                                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627973904456) (:text "|\"")
                                                        :type :expr
                                                        :at 1627973904456
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627973904456
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627973904456
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627973904456
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627973904456
                                        :by |rJG4IHzWf
                                      |N $ {}
                                        :data $ {}
                                          |T $ {} (:text |nil) (:type :leaf) (:at 1627974117727) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |raise) (:type :leaf) (:at 1627974124412) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"Unknown input") (:type :leaf) (:at 1627974127744) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627974119100
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627974115735
                                        :by |rJG4IHzWf
                                      |P $ {}
                                        :data $ {}
                                          |D $ {} (:text |-1) (:type :leaf) (:at 1627973899624) (:by |rJG4IHzWf)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1627973647423) (:by |rJG4IHzWf)
                                              |j $ {} (:text |cursor) (:type :leaf) (:at 1627973703598) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |update) (:type :leaf) (:at 1627973705319) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1627974564630) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |:inputs) (:type :leaf) (:at 1627973707488) (:by |rJG4IHzWf)
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627973708533) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |inputs) (:type :leaf) (:at 1627973709774) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1627973708723
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |or) (:type :leaf) (:at 1627973710813) (:by |rJG4IHzWf)
                                                          |b $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |butlast) (:type :leaf) (:at 1627973715959) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |inputs) (:type :leaf) (:at 1627973718532) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1627973714242
                                                            :by |rJG4IHzWf
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1627973711332) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1627973712467
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1627973710266
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627973708205
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627973703829
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627973645526
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627973898198
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627973639009
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970726256
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970097423
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627970838001
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1584780611347) (:by |rJG4IHzWf)
                                  |T $ {} (:text |states) (:type :leaf) (:at 1509727101297) (:by |root)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1584780613268) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780610581
                                :by |rJG4IHzWf
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root)
                                :type :expr
                                :at 1507461840980
                                :by |root
                            :type :expr
                            :at 1507461809635
                            :by |root
                        :type :expr
                        :at 1521954055333
                        :by |root
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |style-keystroke $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627970923411) (:by |rJG4IHzWf)
              |j $ {} (:text |style-keystroke) (:type :leaf) (:at 1627970923411) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |merge)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |ui/center)
                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |{})
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:width)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |60)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:height)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |60)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:border)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |str)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text "|\"1px solid ")
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |hsl)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |0)
                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |0)
                                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |90)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:margin)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text "|\"4px")
                      |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:cursor)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:pointer)
                      |yT $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:user-select)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:none)
                      |yj $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970924133)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |:font-size)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970924133) (:text |20)
                :type :expr
                :at 1627970924133
                :by |rJG4IHzWf
            :type :expr
            :at 1627970923411
            :by |rJG4IHzWf
          |comp-keyboard $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627970105929) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-keyboard) (:type :leaf) (:at 1627970104167) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1627970129839) (:by |rJG4IHzWf)
                  |j $ {} (:text |on-input) (:type :leaf) (:at 1627973618395) (:by |rJG4IHzWf)
                :type :expr
                :at 1627970104167
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1627970141994) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1627972057053) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1627972060757) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1627972061659) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627972057337
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627972055409
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1627970199809) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1627970201113) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1627970203128) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627970204258) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627970201365
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627970205000) (:by |rJG4IHzWf)
                                  |b $ {}
                                    :data $ {}
                                      |T $ {} (:text |:buffer) (:type :leaf) (:at 1627972317636) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1627972363768) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627972363532
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627972315783
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970204700
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970200089
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627970197589
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627970197460
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1627972816990) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627972818208) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972821706) (:text |:style)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972821706) (:text |merge)
                                  |j $ {} (:text |ui/center) (:type :leaf) (:at 1627973077877) (:by |rJG4IHzWf)
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627972821706)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972821706) (:text |{})
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627972821706)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972821706) (:text |:font-family)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972821706) (:text "|\"Yomogi, cursive")
                                :type :expr
                                :at 1627972821706
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627972821706
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627972817212
                        :by |rJG4IHzWf
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627972838454) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627972839136) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627973100318) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627973092918) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627973094496) (:by |rJG4IHzWf)
                                          |j $ {} (:text |40) (:type :leaf) (:at 1627973109256) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627973093288
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627973091383
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627973082853
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627972838542
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627972852701) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |.join-str) (:type :leaf) (:at 1627972856122) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:buffer) (:type :leaf) (:at 1627972858658) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1627972859889) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627972857489
                                    :by |rJG4IHzWf
                                  |r $ {} (:text "|\"") (:type :leaf) (:at 1627973120249) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627972853205
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627972849136
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627972837845
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627970107247) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627970107850) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627972824139) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/row-center) (:type :leaf) (:at 1627972830779) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627972822781
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970107491
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |list->) (:type :leaf) (:at 1627970326449) (:by |rJG4IHzWf)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627970327195) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627970326785
                                :by |rJG4IHzWf
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1627970241047) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |case-default) (:type :leaf) (:at 1627972541165) (:by |rJG4IHzWf)
                                      |H $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972541900) (:text |count)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627972541900)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972541900) (:text |:buffer)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972541900) (:text |state)
                                        :type :expr
                                        :at 1627972541900
                                        :by |rJG4IHzWf
                                      |J $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1627972545791) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627972545532
                                        :by |rJG4IHzWf
                                      |M $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972556827) (:text |0)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972556827) (:text |initial-keyboard)
                                        :type :expr
                                        :at 1627972556827
                                        :by |rJG4IHzWf
                                      |P $ {}
                                        :data $ {}
                                          |D $ {} (:text |1) (:type :leaf) (:at 1627972550324) (:by |rJG4IHzWf)
                                          |T $ {} (:text |vowel-keyboard) (:type :leaf) (:at 1627970294475) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627972548312
                                        :by |rJG4IHzWf
                                      |h $ {}
                                        :data $ {}
                                          |D $ {} (:text |2) (:type :leaf) (:at 1627972560979) (:by |rJG4IHzWf)
                                          |T $ {} (:text |tone-keyboard) (:type :leaf) (:at 1627972569224) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627972548312
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627970270714
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |map-indexed) (:type :leaf) (:at 1627970302605) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1627970303155) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |idx) (:type :leaf) (:at 1627970303911) (:by |rJG4IHzWf)
                                              |j $ {} (:text |row) (:type :leaf) (:at 1627970319655) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627970303398
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1627970331354) (:by |rJG4IHzWf)
                                              |j $ {} (:text |idx) (:type :leaf) (:at 1627970332113) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |list->) (:type :leaf) (:at 1627970335281) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627970430672) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1627970433208) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |ui/row) (:type :leaf) (:at 1627970436131) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1627970430888
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627970335704
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |->) (:type :leaf) (:at 1627970338495) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |row) (:type :leaf) (:at 1627970343001) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |map-indexed) (:type :leaf) (:at 1627970345691) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |fn) (:type :leaf) (:at 1627970346467) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |j) (:type :leaf) (:at 1627970349220) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |key) (:type :leaf) (:at 1627970351890) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1627970346730
                                                                :by |rJG4IHzWf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627970352935) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |j) (:type :leaf) (:at 1627970353627) (:by |rJG4IHzWf)
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |div) (:type :leaf) (:at 1627970355402) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1627970356083) (:by |rJG4IHzWf)
                                                                          |b $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1627970521188) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text "|\"keystroke") (:type :leaf) (:at 1627970524686) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1627970519484
                                                                            :by |rJG4IHzWf
                                                                          |j $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |:style) (:type :leaf) (:at 1627970440548) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |style-keystroke) (:type :leaf) (:at 1627970922611) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1627970439777
                                                                            :by |rJG4IHzWf
                                                                          |r $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1627970620139) (:by |rJG4IHzWf)
                                                                              |j $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627970621811) (:by |rJG4IHzWf)
                                                                                  |j $ {}
                                                                                    :data $ {}
                                                                                      |T $ {} (:text |e) (:type :leaf) (:at 1627970622210) (:by |rJG4IHzWf)
                                                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1627970622890) (:by |rJG4IHzWf)
                                                                                    :type :expr
                                                                                    :at 1627970622027
                                                                                    :by |rJG4IHzWf
                                                                                  |r $ {}
                                                                                    :data $ {}
                                                                                      |D $ {} (:text |when) (:type :leaf) (:at 1627972030048) (:by |rJG4IHzWf)
                                                                                      |L $ {}
                                                                                        :data $ {}
                                                                                          |D $ {} (:text |not=) (:type :leaf) (:at 1627970688000) (:by |rJG4IHzWf)
                                                                                          |T $ {} (:text |key) (:type :leaf) (:at 1627970685865) (:by |rJG4IHzWf)
                                                                                          |j $ {} (:text "|\".") (:type :leaf) (:at 1627972960760) (:by |rJG4IHzWf)
                                                                                        :type :expr
                                                                                        :at 1627970685471
                                                                                        :by |rJG4IHzWf
                                                                                      |f $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |let) (:type :leaf) (:at 1627972619256) (:by |rJG4IHzWf)
                                                                                          |j $ {}
                                                                                            :data $ {}
                                                                                              |T $ {}
                                                                                                :data $ {}
                                                                                                  |T $ {} (:text |chunk) (:type :leaf) (:at 1627972627013) (:by |rJG4IHzWf)
                                                                                                  |j $ {}
                                                                                                    :data $ {}
                                                                                                      |T $ {} (:text |conj) (:type :leaf) (:at 1627972632279) (:by |rJG4IHzWf)
                                                                                                      |j $ {}
                                                                                                        :data $ {}
                                                                                                          |T $ {} (:text |:buffer) (:type :leaf) (:at 1627972635737) (:by |rJG4IHzWf)
                                                                                                          |j $ {} (:text |state) (:type :leaf) (:at 1627972636758) (:by |rJG4IHzWf)
                                                                                                        :type :expr
                                                                                                        :at 1627972632638
                                                                                                        :by |rJG4IHzWf
                                                                                                      |r $ {} (:text |key) (:type :leaf) (:at 1627972639000) (:by |rJG4IHzWf)
                                                                                                    :type :expr
                                                                                                    :at 1627972627537
                                                                                                    :by |rJG4IHzWf
                                                                                                :type :expr
                                                                                                :at 1627972620668
                                                                                                :by |rJG4IHzWf
                                                                                            :type :expr
                                                                                            :at 1627972619456
                                                                                            :by |rJG4IHzWf
                                                                                          |r $ {}
                                                                                            :data $ {}
                                                                                              |T $ {} (:text |if) (:type :leaf) (:at 1627972642295) (:by |rJG4IHzWf)
                                                                                              |j $ {}
                                                                                                :data $ {}
                                                                                                  |D $ {} (:text |>=) (:type :leaf) (:at 1627972655325) (:by |rJG4IHzWf)
                                                                                                  |T $ {}
                                                                                                    :data $ {}
                                                                                                      |T $ {} (:text |count) (:type :leaf) (:at 1627972644881) (:by |rJG4IHzWf)
                                                                                                      |j $ {} (:text |chunk) (:type :leaf) (:at 1627972649622) (:by |rJG4IHzWf)
                                                                                                    :type :expr
                                                                                                    :at 1627972642500
                                                                                                    :by |rJG4IHzWf
                                                                                                  |j $ {} (:text |3) (:type :leaf) (:at 1627972652684) (:by |rJG4IHzWf)
                                                                                                :type :expr
                                                                                                :at 1627972650140
                                                                                                :by |rJG4IHzWf
                                                                                              |r $ {}
                                                                                                :data $ {}
                                                                                                  |D $ {} (:text |do) (:type :leaf) (:at 1627972666476) (:by |rJG4IHzWf)
                                                                                                  |T $ {}
                                                                                                    :data $ {}
                                                                                                      |T $ {} (:text |on-input) (:type :leaf) (:at 1627973623450) (:by |rJG4IHzWf)
                                                                                                      |j $ {} (:text |chunk) (:type :leaf) (:at 1627972660995) (:by |rJG4IHzWf)
                                                                                                      |r $ {} (:text |d!) (:type :leaf) (:at 1627972664360) (:by |rJG4IHzWf)
                                                                                                    :type :expr
                                                                                                    :at 1627972655865
                                                                                                    :by |rJG4IHzWf
                                                                                                  |j $ {}
                                                                                                    :data $ {}
                                                                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1627972670140) (:by |rJG4IHzWf)
                                                                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1627972673980) (:by |rJG4IHzWf)
                                                                                                      |r $ {}
                                                                                                        :data $ {}
                                                                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1627972675092) (:by |rJG4IHzWf)
                                                                                                          |j $ {} (:text |state) (:type :leaf) (:at 1627972675827) (:by |rJG4IHzWf)
                                                                                                          |r $ {} (:text |:buffer) (:type :leaf) (:at 1627972678367) (:by |rJG4IHzWf)
                                                                                                          |v $ {}
                                                                                                            :data $ {}
                                                                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1627972679939) (:by |rJG4IHzWf)
                                                                                                            :type :expr
                                                                                                            :at 1627972678874
                                                                                                            :by |rJG4IHzWf
                                                                                                        :type :expr
                                                                                                        :at 1627972674239
                                                                                                        :by |rJG4IHzWf
                                                                                                    :type :expr
                                                                                                    :at 1627972667212
                                                                                                    :by |rJG4IHzWf
                                                                                                :type :expr
                                                                                                :at 1627972665862
                                                                                                :by |rJG4IHzWf
                                                                                              |v $ {}
                                                                                                :data $ {}
                                                                                                  |T $ {} (:text |do) (:type :leaf) (:at 1627972683100) (:by |rJG4IHzWf)
                                                                                                  |j $ {}
                                                                                                    :data $ {}
                                                                                                      |D $ {} (:text |d!) (:type :leaf) (:at 1627973044113) (:by |rJG4IHzWf)
                                                                                                      |L $ {} (:text |cursor) (:type :leaf) (:at 1627973045188) (:by |rJG4IHzWf)
                                                                                                      |T $ {}
                                                                                                        :data $ {}
                                                                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1627972685070) (:by |rJG4IHzWf)
                                                                                                          |j $ {} (:text |state) (:type :leaf) (:at 1627972687591) (:by |rJG4IHzWf)
                                                                                                          |r $ {} (:text |:buffer) (:type :leaf) (:at 1627972689028) (:by |rJG4IHzWf)
                                                                                                          |v $ {} (:text |chunk) (:type :leaf) (:at 1627972690575) (:by |rJG4IHzWf)
                                                                                                        :type :expr
                                                                                                        :at 1627972683735
                                                                                                        :by |rJG4IHzWf
                                                                                                    :type :expr
                                                                                                    :at 1627973043399
                                                                                                    :by |rJG4IHzWf
                                                                                                :type :expr
                                                                                                :at 1627972681457
                                                                                                :by |rJG4IHzWf
                                                                                            :type :expr
                                                                                            :at 1627972641718
                                                                                            :by |rJG4IHzWf
                                                                                        :type :expr
                                                                                        :at 1627972618662
                                                                                        :by |rJG4IHzWf
                                                                                    :type :expr
                                                                                    :at 1627970684685
                                                                                    :by |rJG4IHzWf
                                                                                :type :expr
                                                                                :at 1627970621048
                                                                                :by |rJG4IHzWf
                                                                            :type :expr
                                                                            :at 1627970618502
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1627970355788
                                                                        :by |rJG4IHzWf
                                                                      |r $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |<>) (:type :leaf) (:at 1627970361163) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |key) (:type :leaf) (:at 1627970364363) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1627970361747
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1627970354443
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1627970352466
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1627970346234
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1627970343452
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627970337876
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627970332512
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627970331109
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627970302858
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627970267978
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970240611
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970324377
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |list->)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627970992598) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627970992598
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |->)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |[])
                                      |j $ {} (:text "|\"⌫") (:type :leaf) (:at 1627972466387) (:by |rJG4IHzWf)
                                      |r $ {} (:text "|\".") (:type :leaf) (:at 1627972469624) (:by |rJG4IHzWf)
                                      |v $ {} (:text "|\".") (:type :leaf) (:at 1627972471176) (:by |rJG4IHzWf)
                                      |x $ {} (:text "|\"⚁") (:type :leaf) (:at 1627976641615) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627970992598
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |map-indexed)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |fn)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970992598)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |idx)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |key)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |[])
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |idx)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |div)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |{})
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970992598)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |:style)
                                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |style-keystroke)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1627972205762) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |fn) (:type :leaf) (:at 1627972206396) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |e) (:type :leaf) (:at 1627972206714) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |d!) (:type :leaf) (:at 1627972207847) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1627972206506
                                                                :by |rJG4IHzWf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627976653348) (:by |rJG4IHzWf)
                                                                  |b $ {} (:text |key) (:type :leaf) (:at 1627976648206) (:by |rJG4IHzWf)
                                                                  |l $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |println) (:type :leaf) (:at 1627976662675) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text "|\"TODO") (:type :leaf) (:at 1627976663771) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1627976661953
                                                                    :by |rJG4IHzWf
                                                                  |v $ {}
                                                                    :data $ {}
                                                                      |D $ {} (:text "|\"⌫") (:type :leaf) (:at 1627976667309) (:by |rJG4IHzWf)
                                                                      |T $ {}
                                                                        :data $ {}
                                                                          |D $ {} (:text |if) (:type :leaf) (:at 1627973596167) (:by |rJG4IHzWf)
                                                                          |L $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |empty?) (:type :leaf) (:at 1627973598049) (:by |rJG4IHzWf)
                                                                              |j $ {}
                                                                                :data $ {}
                                                                                  |D $ {} (:text |:buffer) (:type :leaf) (:at 1627973604684) (:by |rJG4IHzWf)
                                                                                  |T $ {} (:text |state) (:type :leaf) (:at 1627973601124) (:by |rJG4IHzWf)
                                                                                :type :expr
                                                                                :at 1627973602574
                                                                                :by |rJG4IHzWf
                                                                            :type :expr
                                                                            :at 1627973596764
                                                                            :by |rJG4IHzWf
                                                                          |P $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |on-input) (:type :leaf) (:at 1627973625535) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |-1) (:type :leaf) (:at 1627973629721) (:by |rJG4IHzWf)
                                                                              |r $ {} (:text |d!) (:type :leaf) (:at 1627973631102) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1627973605577
                                                                            :by |rJG4IHzWf
                                                                          |T $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972208855) (:text |d!)
                                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972208855) (:text |cursor)
                                                                              |r $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972208855) (:text |update)
                                                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972208855) (:text |state)
                                                                                  |r $ {} (:text |:buffer) (:type :leaf) (:at 1627972724629) (:by |rJG4IHzWf)
                                                                                  |v $ {}
                                                                                    :data $ {}
                                                                                      |D $ {} (:text |fn) (:type :leaf) (:at 1627972752936) (:by |rJG4IHzWf)
                                                                                      |L $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |x) (:type :leaf) (:at 1627972753621) (:by |rJG4IHzWf)
                                                                                        :type :expr
                                                                                        :at 1627972753452
                                                                                        :by |rJG4IHzWf
                                                                                      |T $ {}
                                                                                        :data $ {}
                                                                                          |D $ {} (:text |or) (:type :leaf) (:at 1627972756805) (:by |rJG4IHzWf)
                                                                                          |T $ {}
                                                                                            :data $ {}
                                                                                              |T $ {} (:text |butlast) (:type :leaf) (:at 1627972735617) (:by |rJG4IHzWf)
                                                                                              |j $ {} (:text |x) (:type :leaf) (:at 1627972755772) (:by |rJG4IHzWf)
                                                                                            :type :expr
                                                                                            :at 1627972754425
                                                                                            :by |rJG4IHzWf
                                                                                          |j $ {}
                                                                                            :data $ {}
                                                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1627972758492) (:by |rJG4IHzWf)
                                                                                            :type :expr
                                                                                            :at 1627972758458
                                                                                            :by |rJG4IHzWf
                                                                                        :type :expr
                                                                                        :at 1627972756201
                                                                                        :by |rJG4IHzWf
                                                                                    :type :expr
                                                                                    :at 1627972752323
                                                                                    :by |rJG4IHzWf
                                                                                :type :expr
                                                                                :at 1627972208855
                                                                                :by |rJG4IHzWf
                                                                            :type :expr
                                                                            :at 1627972208855
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1627973595432
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1627976665143
                                                                    :by |rJG4IHzWf
                                                                  |x $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text "|\"⚁") (:type :leaf) (:at 1627976703568) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |js/document.body.requestFullscreen) (:type :leaf) (:at 1627976712173) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1627976672368
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1627976657352
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1627972208855
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1627972206046
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1627972204115
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627970992598
                                                    :by |rJG4IHzWf
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627970992598)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |<>)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627970992598) (:text |key)
                                                :type :expr
                                                :at 1627970992598
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627970992598
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627970992598
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627970992598
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627970992598
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627970992598
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627970106706
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627972816316
                    :by |rJG4IHzWf
                :type :expr
                :at 1627970140654
                :by |rJG4IHzWf
            :type :expr
            :at 1627970104167
            :by |rJG4IHzWf
          |markup-tone $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627974682783) (:by |rJG4IHzWf)
              |j $ {} (:text |markup-tone) (:type :leaf) (:at 1627974680837) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1627974684320) (:by |rJG4IHzWf)
                :type :expr
                :at 1627974680837
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |uT $ {}
                    :data $ {}
                      |D $ {} (:text |.!replace) (:type :leaf) (:at 1627974724688) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |new) (:type :leaf) (:at 1627974893678) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627975076663) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"([aoeiuü])r([→↗↺↘])$") (:type :leaf) (:at 1627976044202) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627974890091
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |fn) (:type :leaf) (:at 1627975020508) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1627975021787) (:by |rJG4IHzWf)
                              |X $ {} (:text |b) (:type :leaf) (:at 1627975132291) (:by |rJG4IHzWf)
                              |Z $ {} (:text |c) (:type :leaf) (:at 1627975133608) (:by |rJG4IHzWf)
                              |b $ {} (:text |&) (:type :leaf) (:at 1627975026282) (:by |rJG4IHzWf)
                              |j $ {} (:text |args) (:type :leaf) (:at 1627975024841) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975021145
                            :by |rJG4IHzWf
                          |N $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1627975893480) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |mark-vowel) (:type :leaf) (:at 1627975689538) (:by |rJG4IHzWf)
                                  |j $ {} (:text |b) (:type :leaf) (:at 1627975694045) (:by |rJG4IHzWf)
                                  |r $ {} (:text |c) (:type :leaf) (:at 1627975694427) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975678417
                                :by |rJG4IHzWf
                              |j $ {} (:text "|\"r") (:type :leaf) (:at 1627975986813) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975892802
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975015211
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627974719358
                    :by |rJG4IHzWf
                  |T $ {} (:text |->) (:type :leaf) (:at 1627974688829) (:by |rJG4IHzWf)
                  |j $ {} (:text |x) (:type :leaf) (:at 1627974689243) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |.!replace) (:type :leaf) (:at 1627974724688) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |new) (:type :leaf) (:at 1627974893678) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627975076663) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"([aoeiuü])(ng?)([→↗↺↘])$") (:type :leaf) (:at 1627976041890) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627974890091
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |fn) (:type :leaf) (:at 1627975020508) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1627975021787) (:by |rJG4IHzWf)
                              |X $ {} (:text |b) (:type :leaf) (:at 1627975132291) (:by |rJG4IHzWf)
                              |Y $ {} (:text |b2) (:type :leaf) (:at 1627975909714) (:by |rJG4IHzWf)
                              |Z $ {} (:text |c) (:type :leaf) (:at 1627975133608) (:by |rJG4IHzWf)
                              |b $ {} (:text |&) (:type :leaf) (:at 1627975026282) (:by |rJG4IHzWf)
                              |j $ {} (:text |args) (:type :leaf) (:at 1627975024841) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975021145
                            :by |rJG4IHzWf
                          |N $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1627975896981) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |mark-vowel) (:type :leaf) (:at 1627975689538) (:by |rJG4IHzWf)
                                  |j $ {} (:text |b) (:type :leaf) (:at 1627975694045) (:by |rJG4IHzWf)
                                  |r $ {} (:text |c) (:type :leaf) (:at 1627975694427) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975678417
                                :by |rJG4IHzWf
                              |j $ {} (:text |b2) (:type :leaf) (:at 1627975912191) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975896284
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975015211
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627974719358
                    :by |rJG4IHzWf
                  |u $ {}
                    :data $ {}
                      |D $ {} (:text |.!replace) (:type :leaf) (:at 1627974724688) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |new) (:type :leaf) (:at 1627974893678) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627975076663) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"([aoeiuü])([aoeiuü])([→↗↺↘])$") (:type :leaf) (:at 1627976047840) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627974890091
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |fn) (:type :leaf) (:at 1627975020508) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1627975021787) (:by |rJG4IHzWf)
                              |X $ {} (:text |b) (:type :leaf) (:at 1627975132291) (:by |rJG4IHzWf)
                              |Y $ {} (:text |b2) (:type :leaf) (:at 1627976013847) (:by |rJG4IHzWf)
                              |Z $ {} (:text |c) (:type :leaf) (:at 1627975133608) (:by |rJG4IHzWf)
                              |b $ {} (:text |&) (:type :leaf) (:at 1627975026282) (:by |rJG4IHzWf)
                              |j $ {} (:text |args) (:type :leaf) (:at 1627975024841) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975021145
                            :by |rJG4IHzWf
                          |N $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1627975893480) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |mark-vowel) (:type :leaf) (:at 1627975689538) (:by |rJG4IHzWf)
                                  |j $ {} (:text |b) (:type :leaf) (:at 1627975694045) (:by |rJG4IHzWf)
                                  |r $ {} (:text |c) (:type :leaf) (:at 1627975694427) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975678417
                                :by |rJG4IHzWf
                              |j $ {} (:text |b2) (:type :leaf) (:at 1627976017775) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975892802
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975015211
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627974719358
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |.!replace) (:type :leaf) (:at 1627974724688) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |new) (:type :leaf) (:at 1627974893678) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/RegExp) (:type :leaf) (:at 1627975076663) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"([aoeiuü])([→↗↺↘])$") (:type :leaf) (:at 1627976046177) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627974890091
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |fn) (:type :leaf) (:at 1627975020508) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1627975021787) (:by |rJG4IHzWf)
                              |X $ {} (:text |b) (:type :leaf) (:at 1627975132291) (:by |rJG4IHzWf)
                              |Z $ {} (:text |c) (:type :leaf) (:at 1627975133608) (:by |rJG4IHzWf)
                              |b $ {} (:text |&) (:type :leaf) (:at 1627975026282) (:by |rJG4IHzWf)
                              |j $ {} (:text |args) (:type :leaf) (:at 1627975024841) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975021145
                            :by |rJG4IHzWf
                          |M $ {}
                            :data $ {}
                              |T $ {} (:text |js/console.log) (:type :leaf) (:at 1627975712251) (:by |rJG4IHzWf)
                              |j $ {} (:text |b) (:type :leaf) (:at 1627975712660) (:by |rJG4IHzWf)
                              |r $ {} (:text |c) (:type :leaf) (:at 1627975713126) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975709342
                            :by |rJG4IHzWf
                          |N $ {}
                            :data $ {}
                              |T $ {} (:text |mark-vowel) (:type :leaf) (:at 1627975689538) (:by |rJG4IHzWf)
                              |j $ {} (:text |b) (:type :leaf) (:at 1627975694045) (:by |rJG4IHzWf)
                              |r $ {} (:text |c) (:type :leaf) (:at 1627975694427) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627975678417
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975015211
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627974719358
                    :by |rJG4IHzWf
                :type :expr
                :at 1627974687401
                :by |rJG4IHzWf
            :type :expr
            :at 1627974680837
            :by |rJG4IHzWf
          |mark-vowel $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627975640475) (:by |rJG4IHzWf)
              |j $ {} (:text |mark-vowel) (:type :leaf) (:at 1627975246172) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |vowel) (:type :leaf) (:at 1627975252112) (:by |rJG4IHzWf)
                  |j $ {} (:text |tone) (:type :leaf) (:at 1627975284231) (:by |rJG4IHzWf)
                :type :expr
                :at 1627975246172
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1627975561181) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |x) (:type :leaf) (:at 1627975561911) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975562481) (:text |[])
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975562481) (:text |vowel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975562481) (:text |tone)
                            :type :expr
                            :at 1627975562481
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975561622
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627975561437
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1627975721692) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"vvvv") (:type :leaf) (:at 1627975726823) (:by |rJG4IHzWf)
                      |r $ {} (:text |x) (:type :leaf) (:at 1627975728474) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627975720817
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |yyT $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |5 $ {} (:text |=) (:type :leaf) (:at 1627975591592) (:by |rJG4IHzWf)
                              |D $ {} (:text |x) (:type :leaf) (:at 1627975590091) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"i") (:type :leaf) (:at 1627975503692) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975847854) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975589512
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǐ") (:type :leaf) (:at 1627975381359) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyj $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975594046) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975594389) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"i") (:type :leaf) (:at 1627975502734) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975792276) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975593464
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ì") (:type :leaf) (:at 1627975385198) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyr $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975596006) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975596519) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"o") (:type :leaf) (:at 1627975500276) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975307810) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975595373
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ō") (:type :leaf) (:at 1627975390829) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyv $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975598789) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975599120) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"o") (:type :leaf) (:at 1627975499311) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975829993) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975597562
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ó") (:type :leaf) (:at 1627975396128) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyx $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975601429) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975601738) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"o") (:type :leaf) (:at 1627975498221) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975852902) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975600826
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǒ") (:type :leaf) (:at 1627975399754) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyy $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975604131) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975604604) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"o") (:type :leaf) (:at 1627975496722) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975789698) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975602719
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ò") (:type :leaf) (:at 1627975404583) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyT $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975606480) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975606857) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"u") (:type :leaf) (:at 1627975492768) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975307810) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975605886
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ū") (:type :leaf) (:at 1627975411453) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyj $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975609349) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975609571) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"u") (:type :leaf) (:at 1627975490955) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975763362) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975608742
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ú") (:type :leaf) (:at 1627975415758) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyr $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975611590) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975611969) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"u") (:type :leaf) (:at 1627975490067) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975856879) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975610649
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǔ") (:type :leaf) (:at 1627975420115) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyv $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975613785) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975614250) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"u") (:type :leaf) (:at 1627975488740) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975786645) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975613194
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ù") (:type :leaf) (:at 1627975424436) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyx $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975618061) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975618543) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"ü") (:type :leaf) (:at 1627975486829) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975307810) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975615664
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǖ") (:type :leaf) (:at 1627975470582) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyy $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975620888) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975621331) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"ü") (:type :leaf) (:at 1627975486061) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975774816) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975620257
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǘ") (:type :leaf) (:at 1627975441919) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyyT $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975622830) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975623063) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"ü") (:type :leaf) (:at 1627975484611) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975859962) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975622189
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǚ") (:type :leaf) (:at 1627975446909) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyyj $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975625629) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975626008) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"ü") (:type :leaf) (:at 1627975483016) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975782600) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975624044
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǜ") (:type :leaf) (:at 1627975452081) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yyyyr $ {}
                        :data $ {}
                          |D $ {} (:text |true) (:type :leaf) (:at 1627975557283) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975554299) (:text |str)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975554299) (:text |vowel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627975554299) (:text |tone)
                            :type :expr
                            :at 1627975554299
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627975552896
                        :by |rJG4IHzWf
                      |yT $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975572429) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975572716) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"a") (:type :leaf) (:at 1627975525064) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975807887) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975571890
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"à") (:type :leaf) (:at 1627975343166) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yj $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975574159) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975574622) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"e") (:type :leaf) (:at 1627975509570) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975811531) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975573613
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ē") (:type :leaf) (:at 1627975348133) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yr $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975576735) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975577297) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"e") (:type :leaf) (:at 1627975508796) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975753512) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975576179
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"é") (:type :leaf) (:at 1627975352087) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yv $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975579530) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975579923) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"e") (:type :leaf) (:at 1627975507559) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975845174) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975578968
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ě") (:type :leaf) (:at 1627975366632) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yw $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975583150) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975583489) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"e") (:type :leaf) (:at 1627975507559) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↘") (:type :leaf) (:at 1627975817458) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975582586
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"è") (:type :leaf) (:at 1627975523634) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yx $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975585191) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975585555) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"i") (:type :leaf) (:at 1627975506559) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975822056) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975584616
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ī") (:type :leaf) (:at 1627975372111) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |yy $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975588112) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975588625) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"i") (:type :leaf) (:at 1627975505627) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975766657) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975587543
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"í") (:type :leaf) (:at 1627975376924) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |T $ {} (:text |cond) (:type :leaf) (:at 1627975544867) (:by |rJG4IHzWf)
                      |v $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975564102) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975566105) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"a") (:type :leaf) (:at 1627975296989) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"→") (:type :leaf) (:at 1627975307810) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975563582
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ā") (:type :leaf) (:at 1627975326552) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975567972) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975568424) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"a") (:type :leaf) (:at 1627975296989) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627975746989) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975567185
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"á") (:type :leaf) (:at 1627975331252) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |=) (:type :leaf) (:at 1627975570553) (:by |rJG4IHzWf)
                              |L $ {} (:text |x) (:type :leaf) (:at 1627975570824) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627975293090) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"a") (:type :leaf) (:at 1627975296989) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"↺") (:type :leaf) (:at 1627975843629) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627975292680
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627975569307
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"ǎ") (:type :leaf) (:at 1627975335708) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627975294380
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627975253023
                    :by |rJG4IHzWf
                :type :expr
                :at 1627975560619
                :by |rJG4IHzWf
            :type :expr
            :at 1627975246172
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                        |r $ {} (:text |initial-keyboard) (:type :leaf) (:at 1627970254185) (:by |rJG4IHzWf)
                        |v $ {} (:text |vowel-keyboard) (:type :leaf) (:at 1627970261862) (:by |rJG4IHzWf)
                        |x $ {} (:text |tone-keyboard) (:type :leaf) (:at 1627972572679) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |t $ {}
                  :data $ {}
                    |T $ {} (:text |respo-ui.core) (:type :leaf) (:at 1627970482085) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627970483105) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1627970485453) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627970483352
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627970479446
                  :by |rJG4IHzWf
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |o $ {} (:text |list->) (:type :leaf) (:at 1627970374835) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627849233602) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |l $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1627849235639) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627849236652) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown op:") (:type :leaf) (:at 1627849247340) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1627849241947) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627849235881
                        :by |rJG4IHzWf
                      |r $ {} (:text |store) (:type :leaf) (:at 1627849245294) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627849235240
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1624469436438) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1623915174985) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.!setItem) (:type :leaf) (:at 1623915179125) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1624469402829) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.!querySelector) (:type :leaf) (:at 1624469553191) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610792986987) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||k) (:type :leaf) (:at 1624007376825) (:by |rJG4IHzWf)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972792984) (:text |;)
                  |T $ {} (:text |.!addEventListener) (:type :leaf) (:at 1624469377233) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1612344222204) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |event) (:type :leaf) (:at 1612344223520) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344222530
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344224533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1612344221583
                    :by |rJG4IHzWf
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972791997) (:text |;)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627972791005) (:text |;)
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!getItem) (:type :leaf) (:at 1623915188297) (:by |rJG4IHzWf)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1624469412598) (:by |rJG4IHzWf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1612280609284) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612280610651) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1627974478634) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626201153853) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626201157449) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626201163076
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626201192115) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1626201534497) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201194806) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201192626
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1626201161775) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1614750747553
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1507461702453) (:by |root)
                        :type :expr
                        :at 1507461699387
                        :by |root
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1612280627439
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1612280627439
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1507461706990) (:by |root)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1507461708965) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1507461730190) (:by |root)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1507461719097) (:by |root)
                              |r $ {} (:text |schema/store) (:type :leaf) (:at 1507461721870) (:by |root)
                              |v $ {} (:text |updater) (:type :leaf) (:at 1507461722724) (:by |root)
                            :type :expr
                            :at 1507461710020
                            :by |root
                        :type :expr
                        :at 1507461704162
                        :by |root
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626777542168
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1626201164538
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1626290831868) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\"error") (:type :leaf) (:at 1626290930377) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201209903) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201203433
                    :by |rJG4IHzWf
                :type :expr
                :at 1626201191606
                :by |rJG4IHzWf
            :type :expr
            :at 1626201152815
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610793047914) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610793055850) (:by |rJG4IHzWf)
                :type :expr
                :at 1610793045335
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610793066184) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610793079545) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610793080160
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610793091010) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793090420
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610793083422) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                              |j $ {} (:text |1000) (:type :leaf) (:at 1610794467961) (:by |rJG4IHzWf)
                              |r $ {} (:text |duration) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610794352418
                            :by |rJG4IHzWf
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610794361837) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793080941
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793079106
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |*) (:type :leaf) (:at 1610793072002) (:by |rJG4IHzWf)
                      |L $ {} (:text |1000) (:type :leaf) (:at 1610794470143) (:by |rJG4IHzWf)
                      |T $ {} (:text |duration) (:type :leaf) (:at 1610793071233) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610793071391
                    :by |rJG4IHzWf
                :type :expr
                :at 1610793056606
                :by |rJG4IHzWf
            :type :expr
            :at 1610793045335
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626201180939) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626201183958) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1626201187310) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626201173819
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626290810913) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626290816153) (:by |rJG4IHzWf)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1626290825711) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626290808117
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |5 $ {} (:text |=) (:type :leaf) (:at 1624469715390) (:by |rJG4IHzWf)
                  |D $ {} (:text "|\"dev") (:type :leaf) (:at 1624469714304) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |get-env) (:type :leaf) (:at 1624469706777) (:by |rJG4IHzWf)
                      |T $ {} (:text "|\"mode") (:type :leaf) (:at 1624469708397) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1624469701389
                    :by |rJG4IHzWf
                :type :expr
                :at 1624469709435
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"proto-shuangpin") (:type :leaf) (:at 1627932304687) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
          |vowel-keyboard $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627969667332) (:by |rJG4IHzWf)
              |j $ {} (:text |vowel-keyboard) (:type :leaf) (:at 1627968892703) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |[]) (:type :leaf) (:at 1627969705834) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"ü") (:type :leaf) (:at 1627969906484) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"uan") (:type :leaf) (:at 1627976367295) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\"ian") (:type :leaf) (:at 1627976370175) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969669417) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"a") (:type :leaf) (:at 1627969786325) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"o") (:type :leaf) (:at 1627969788021) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"e") (:type :leaf) (:at 1627969788925) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"i") (:type :leaf) (:at 1627969792144) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"u") (:type :leaf) (:at 1627969794231) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627968892703
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"iu") (:type :leaf) (:at 1627969933132) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"uo") (:type :leaf) (:at 1627976399560) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\"uai") (:type :leaf) (:at 1627976171052) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969715503) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"ai") (:type :leaf) (:at 1627969924785) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"ei") (:type :leaf) (:at 1627969925888) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"ui") (:type :leaf) (:at 1627969927282) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"ao") (:type :leaf) (:at 1627969929270) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"ou") (:type :leaf) (:at 1627969930904) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969715120
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"ie") (:type :leaf) (:at 1627969978971) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"üe") (:type :leaf) (:at 1627969977730) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\"er") (:type :leaf) (:at 1627969981528) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969725449) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"an") (:type :leaf) (:at 1627969938653) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"en") (:type :leaf) (:at 1627969946685) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"in") (:type :leaf) (:at 1627969948200) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"un") (:type :leaf) (:at 1627969949496) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"ün") (:type :leaf) (:at 1627969952987) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969724624
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"uang") (:type :leaf) (:at 1627976143574) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"iong") (:type :leaf) (:at 1627976360990) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\"ua") (:type :leaf) (:at 1627976434812) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969740223) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"ang") (:type :leaf) (:at 1627969958716) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"eng") (:type :leaf) (:at 1627969960244) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"ing") (:type :leaf) (:at 1627969965425) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"ong") (:type :leaf) (:at 1627969963813) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"iang") (:type :leaf) (:at 1627976141745) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969739807
                    :by |rJG4IHzWf
                :type :expr
                :at 1627969705333
                :by |rJG4IHzWf
            :type :expr
            :at 1627968892703
            :by |rJG4IHzWf
          |tone-keyboard $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627972573358) (:by |rJG4IHzWf)
              |j $ {} (:text |tone-keyboard) (:type :leaf) (:at 1627972573358) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |[]) (:type :leaf) (:at 1627972575772) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |yT $ {} (:text "|\".") (:type :leaf) (:at 1627973184074) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627972576661) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\".") (:type :leaf) (:at 1627973180555) (:by |rJG4IHzWf)
                      |f $ {} (:text "|\".") (:type :leaf) (:at 1627973182111) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"→") (:type :leaf) (:at 1627973501293) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"↗") (:type :leaf) (:at 1627973492316) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"↺") (:type :leaf) (:at 1627973562189) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"↘") (:type :leaf) (:at 1627973506008) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\".") (:type :leaf) (:at 1627973183579) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627972576450
                    :by |rJG4IHzWf
                :type :expr
                :at 1627972573358
                :by |rJG4IHzWf
            :type :expr
            :at 1627972573358
            :by |rJG4IHzWf
          |initial-keyboard $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627969780626) (:by |rJG4IHzWf)
              |j $ {} (:text |initial-keyboard) (:type :leaf) (:at 1627968880626) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |[]) (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"t") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"n") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\"l") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"b") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"p") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"m") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"f") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"d") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969781395
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"x") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"g") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"k") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"h") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"j") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"q") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969781395
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |yT $ {} (:text "|\"c") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\"s") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |T $ {} (:text |[]) (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"zh") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"ch") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"sh") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\"r") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\"z") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969781395
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |yT $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yj $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |yr $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627969781395) (:text |[])
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627969781395) (:text "|\"y")
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627969781395) (:text "|\"w")
                      |v $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |x $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                      |y $ {} (:text "|\".") (:type :leaf) (:at 1627969781395) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627969781395
                    :by |rJG4IHzWf
                :type :expr
                :at 1627969781395
                :by |rJG4IHzWf
            :type :expr
            :at 1627968880626
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
