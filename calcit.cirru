
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  reel-map $ unsafe-coerce reel 'Map
                  store $ unsafe-coerce (&map:get reel-map :store) 'Map
                  states $ unsafe-coerce (&map:get store :states) 'Map
                  cursor $ or (&map:get states :cursor) ([])
                  state $ unsafe-coerce
                    or (&map:get states :data)
                      {} $ :inputs ([])
                    , 'Map
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  div
                    {} $ :style
                      merge ui/expand $ {} (:padding 40) (:font-size 32)
                    <> $ -> (&map:get state :inputs)
                      or $ []
                      map markup-tone
                      join-str "| "
                  div
                    {} $ :style
                      merge ui/expand $ {} (:padding 16) (:font-size 32)
                    input $ {} (:value |) (:style ui/input) (:placeholder |TODO)
                  div
                    {} $ :style
                      merge ui/row-center $ unsafe-coerce
                        {} $ :padding 16
                        , 'Map
                    comp-keyboard (>> states :keyboard)
                      fn (input d!)
                        case-default input
                          d! cursor $ update state :inputs
                            fn (inputs)
                              conj inputs $ join-str input |
                          nil $ raise "|Unknown input"
                          -1 $ d! cursor
                            update state :inputs $ fn (inputs)
                              or (butlast inputs) ([])
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-keyboard (states on-input)
              let
                  states-map $ unsafe-coerce states 'Map
                  cursor $ &map:get states-map :cursor
                  state $ unsafe-coerce
                    or (&map:get states-map :data)
                      {} $ :buffer ([])
                    , 'Map
                div
                  {} $ :style
                    merge ui/center $ {} (:font-family "|Yomogi, cursive")
                  div
                    {} $ :style
                      {} $ :font-size 40
                    <> $ join-str (&map:get state :buffer) |
                  div
                    {} $ :style ui/row-center
                    list-> ({})
                      ->
                        case-default
                          count $ &map:get state :buffer
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
                                  {} (:class-name |keystroke) (:style style-keystroke)
                                    :on-click $ fn (e d!)
                                      when (not= key |.)
                                        let
                                            chunk $ conj (&map:get state :buffer) key
                                          if
                                            >= (count chunk) 3
                                            do (on-input chunk d!)
                                              d! cursor $ assoc state :buffer ([])
                                            do $ d! cursor (assoc state :buffer chunk)
                                  <> key
                    list-> ({})
                      -> ([] "|⌫" |. |. "|⚁")
                        map-indexed $ fn (idx key)
                          [] idx $ div
                            {} (:style style-keystroke)
                              :on-click $ fn (e d!)
                                case-default key (println |TODO)
                                  "|⌫" $ if
                                    empty? $ &map:get state :buffer
                                    on-input -1 d!
                                    d! cursor $ update state :buffer
                                      fn (x)
                                        or (butlast x) ([])
                                  "|⚁" $ js/document.body.requestFullscreen
                            <> key
          :examples $ []
          :schema $ :: 'Dynamic
        'mark-vowel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn mark-vowel (vowel tone)
              let
                  x $ [] vowel tone
                println |vvvv x
                cond
                    = x $ [] |a "|→"
                    , "|ā"
                  (= x ([] |a "|↗"))
                    , "|á"
                  (= x ([] |a "|↺"))
                    , "|ǎ"
                  (= x ([] |a "|↘"))
                    , "|à"
                  (= x ([] |e "|→"))
                    , "|ē"
                  (= x ([] |e "|↗"))
                    , "|é"
                  (= x ([] |e "|↺"))
                    , "|ě"
                  (= x ([] |e "|↘"))
                    , "|è"
                  (= x ([] |i "|→"))
                    , "|ī"
                  (= x ([] |i "|↗"))
                    , "|í"
                  (= x ([] |i "|↺"))
                    , "|ǐ"
                  (= x ([] |i "|↘"))
                    , "|ì"
                  (= x ([] |o "|→"))
                    , "|ō"
                  (= x ([] |o "|↗"))
                    , "|ó"
                  (= x ([] |o "|↺"))
                    , "|ǒ"
                  (= x ([] |o "|↘"))
                    , "|ò"
                  (= x ([] |u "|→"))
                    , "|ū"
                  (= x ([] |u "|↗"))
                    , "|ú"
                  (= x ([] |u "|↺"))
                    , "|ǔ"
                  (= x ([] |u "|↘"))
                    , "|ù"
                  (= x ([] "|ü" "|→"))
                    , "|ǖ"
                  (= x ([] "|ü" "|↗"))
                    , "|ǘ"
                  (= x ([] "|ü" "|↺"))
                    , "|ǚ"
                  (= x ([] "|ü" "|↘"))
                    , "|ǜ"
                  true $ str vowel tone
          :examples $ []
          :schema $ :: 'Dynamic
        'markup-tone $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn markup-tone (x)
              let
                  x1 $ .!replace (unsafe-coerce x 'JsObject) (new js/RegExp "|([aoeiuü])(ng?)([→↗↺↘])$")
                    fn (a b b2 c & args)
                      str (mark-vowel b c) b2
                  x2 $ .!replace (unsafe-coerce x1 'JsObject) (new js/RegExp "|([aoeiuü])([aoeiuü])([→↗↺↘])$")
                    fn (a b b2 c & args)
                      str (mark-vowel b c) b2
                  x3 $ .!replace (unsafe-coerce x2 'JsObject) (new js/RegExp "|([aoeiuü])r([→↗↺↘])$")
                    fn (a b c & args)
                      str (mark-vowel b c) |r
                .!replace (unsafe-coerce x3 'JsObject) (new js/RegExp "|([aoeiuü])([→↗↺↘])$")
                  fn (a b c & args) (js/console.log b c) (mark-vowel b c)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-keystroke $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-keystroke $ merge ui/center
              {} (:width 60) (:height 60)
                :border $ str "|1px solid " (hsl 0 0 90)
                :margin |4px
                :cursor :pointer
                :user-select :none
                :font-size 20
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev? initial-keyboard vowel-keyboard tone-keyboard
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-keyboard $ [] ([] |b |p |m |f |d |t |n |l) ([] |g |k |h |j |q |x |. |.) ([] |zh |ch |sh |r |z |c |s |.) ([] |y |w |. |. |. |. |. |.)
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key |proto-shuangpin)
          :examples $ []
          :schema $ :: 'Dynamic
        'tone-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def tone-keyboard $ [] ([] |. |. "|→" "|↗" "|↺" "|↘" |. |.)
          :examples $ []
          :schema $ :: 'Dynamic
        'vowel-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def vowel-keyboard $ [] ([] |a |o |e |i |u "|ü" |uan |ian) ([] |ai |ei |ui |ao |ou |iu |uo |uai) ([] |an |en |in |un "|ün" |ie "|üe" |er) ([] |ang |eng |ing |ong |iang |uang |iong |ua)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data)
              when
                and config/dev? $ not= op :states
                println |Dispatch: op op-data
              reset! *reel $ reel-updater updater @*reel (:: op op-data)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              ; .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
              ; repeat! 60 persist-storage!
              ; let
                (raw (.!getItem js/localStorage (:storage-key config/site)))
                when (some? raw)
                  dispatch! :hydrate-storage $ parse-cirru-edn raw
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .!querySelector (unsafe-coerce js/document 'JsObject) |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ .!setItem (unsafe-coerce js/localStorage 'JsObject) (:storage-key config/site)
              format-cirru-edn $ &map:get (unsafe-coerce @*reel 'Map) :store
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor data) (update-states store cursor data)
                (:hydrate-storage data) data
                _ $ do (println "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
