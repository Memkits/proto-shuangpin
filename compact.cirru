
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev? initial-keyboard vowel-keyboard tone-keyboard
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ or (:cursor states) ([])
                state $ or (:data states)
                  {} $ :inputs ([])
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                div
                  {} $ :style
                    merge ui/expand $ {} (:padding 40) (:font-size 32)
                  <> $ -> (:inputs state)
                    or $ []
                    map markup-tone
                    .join-str "\" "
                div
                  {} $ :style
                    merge ui/expand $ {} (:padding 16) (:font-size 32)
                  input $ {} (:value "\"") (:style ui/input) (:placeholder "\"TODO")
                div
                  {} $ :style
                    merge ui/row-center $ {} (:padding 16)
                  comp-keyboard (>> states :keyboard)
                    fn (input d!)
                      case-default input
                        d! cursor $ update state :inputs
                          fn (inputs)
                            conj inputs $ .join-str input "\""
                        nil $ raise "\"Unknown input"
                        -1 $ d! cursor
                          update state :inputs $ fn (inputs)
                            or (butlast inputs) ([])
                when dev? $ comp-reel (>> states :reel) reel ({})
        |style-keystroke $ quote
          def style-keystroke $ merge ui/center
            {} (:width 60) (:height 60)
              :border $ str "\"1px solid " (hsl 0 0 90)
              :margin "\"4px"
              :cursor :pointer
              :user-select :none
              :font-size 20
        |comp-keyboard $ quote
          defcomp comp-keyboard (states on-input)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :buffer ([])
              div
                {} $ :style
                  merge ui/center $ {} (:font-family "\"Yomogi, cursive")
                div
                  {} $ :style
                    {} $ :font-size 40
                  <> $ .join-str (:buffer state) "\""
                div
                  {} $ :style ui/row-center
                  list-> ({})
                    ->
                      case-default
                        count $ :buffer state
                        []
                        0 initial-keyboard
                        1 vowel-keyboard
                        2 tone-keyboard
                      map-indexed $ fn (idx row)
                        [] idx $ list->
                          {} $ :style ui/row
                          -> row $ map-indexed
                            fn (j key)
                              [] j $ div
                                {} (:class-name "\"keystroke") (:style style-keystroke)
                                  :on-click $ fn (e d!)
                                    when (not= key "\".")
                                      let
                                          chunk $ conj (:buffer state) key
                                        if
                                          >= (count chunk) 3
                                          do (on-input chunk d!)
                                            d! cursor $ assoc state :buffer ([])
                                          do $ d! cursor (assoc state :buffer chunk)
                                <> key
                  list-> ({})
                    -> ([] "\"⌫" "\"." "\"." "\"⚁")
                      map-indexed $ fn (idx key)
                        [] idx $ div
                          {} (:style style-keystroke)
                            :on-click $ fn (e d!)
                              case-default key (println "\"TODO")
                                "\"⌫" $ if
                                  empty? $ :buffer state
                                  on-input -1 d!
                                  d! cursor $ update state :buffer
                                    fn (x)
                                      or (butlast x) ([])
                                "\"⚁" $ js/document.body.requestFullscreen
                          <> key
        |markup-tone $ quote
          defn markup-tone (x)
            -> x
              .!replace (new js/RegExp "\"([aoeiuü])(ng?)([→↗↺↘])$")
                fn (a b b2 c & args)
                  str (mark-vowel b c) b2
              .!replace (new js/RegExp "\"([aoeiuü])([aoeiuü])([→↗↺↘])$")
                fn (a b b2 c & args)
                  str (mark-vowel b c) b2
              .!replace (new js/RegExp "\"([aoeiuü])r([→↗↺↘])$")
                fn (a b c & args)
                  str (mark-vowel b c) "\"r"
              .!replace (new js/RegExp "\"([aoeiuü])([→↗↺↘])$")
                fn (a b c & args) (js/console.log b c) (mark-vowel b c)
        |mark-vowel $ quote
          defn mark-vowel (vowel tone)
            let
                x $ [] vowel tone
              println "\"vvvv" x
              cond
                  = x $ [] "\"a" "\"→"
                  , "\"ā"
                (= x ([] "\"a" "\"↗"))
                  , "\"á"
                (= x ([] "\"a" "\"↺"))
                  , "\"ǎ"
                (= x ([] "\"a" "\"↘"))
                  , "\"à"
                (= x ([] "\"e" "\"→"))
                  , "\"ē"
                (= x ([] "\"e" "\"↗"))
                  , "\"é"
                (= x ([] "\"e" "\"↺"))
                  , "\"ě"
                (= x ([] "\"e" "\"↘"))
                  , "\"è"
                (= x ([] "\"i" "\"→"))
                  , "\"ī"
                (= x ([] "\"i" "\"↗"))
                  , "\"í"
                (= x ([] "\"i" "\"↺"))
                  , "\"ǐ"
                (= x ([] "\"i" "\"↘"))
                  , "\"ì"
                (= x ([] "\"o" "\"→"))
                  , "\"ō"
                (= x ([] "\"o" "\"↗"))
                  , "\"ó"
                (= x ([] "\"o" "\"↺"))
                  , "\"ǒ"
                (= x ([] "\"o" "\"↘"))
                  , "\"ò"
                (= x ([] "\"u" "\"→"))
                  , "\"ū"
                (= x ([] "\"u" "\"↗"))
                  , "\"ú"
                (= x ([] "\"u" "\"↺"))
                  , "\"ǔ"
                (= x ([] "\"u" "\"↘"))
                  , "\"ù"
                (= x ([] "\"ü" "\"→"))
                  , "\"ǖ"
                (= x ([] "\"ü" "\"↗"))
                  , "\"ǘ"
                (= x ([] "\"ü" "\"↺"))
                  , "\"ǚ"
                (= x ([] "\"ü" "\"↘"))
                  , "\"ǜ"
                true $ str vowel tone
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site)
            format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            ; .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            ; repeat! 60 persist-storage!
            ; let
                raw $ .!getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"proto-shuangpin")
        |vowel-keyboard $ quote
          def vowel-keyboard $ [] ([] "\"a" "\"o" "\"e" "\"i" "\"u" "\"ü" "\"uan" "\"ian") ([] "\"ai" "\"ei" "\"ui" "\"ao" "\"ou" "\"iu" "\"uo" "\"uai") ([] "\"an" "\"en" "\"in" "\"un" "\"ün" "\"ie" "\"üe" "\"er") ([] "\"ang" "\"eng" "\"ing" "\"ong" "\"iang" "\"uang" "\"iong" "\"ua")
        |tone-keyboard $ quote
          def tone-keyboard $ [] ([] "\"." "\"." "\"→" "\"↗" "\"↺" "\"↘" "\"." "\".")
        |initial-keyboard $ quote
          def initial-keyboard $ [] ([] "\"b" "\"p" "\"m" "\"f" "\"d" "\"t" "\"n" "\"l") ([] "\"g" "\"k" "\"h" "\"j" "\"q" "\"x" "\"." "\".") ([] "\"zh" "\"ch" "\"sh" "\"r" "\"z" "\"c" "\"s" "\".") ([] "\"y" "\"w" "\"." "\"." "\"." "\"." "\"." "\".")
