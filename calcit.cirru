
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'FullscreenHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FullscreenHost
            .request-fullscreen! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/FullscreenHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :request-fullscreen! |requestFullscreen
          :schema $ :: 'Trait
        'RegexHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegexHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'StringHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StringHost
            .replace3 $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/StringHost 'app.comp.container/RegexHost $ :: 'Fn
                {} (:return 'String) (:rest 'Dynamic)
                  :args $ [] 'String 'String 'String 'String
              :return 'String
            .replace2 $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/StringHost 'app.comp.container/RegexHost $ :: 'Fn
                {} (:return 'String) (:rest 'Dynamic)
                  :args $ [] 'String 'String 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:replace2 |replace) (:replace3 |replace)
          :schema $ :: 'Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ decode-map-as (&map:get reel :store) app.schema/Store
                states store.:states
                cursor $ assert-type (&map:get states :cursor) (:: 'List 'Dynamic)
                state $ assert-type
                  option:unwrap-or (get states :data)
                    {} $ :inputs $ []
                  :: 'Map 'Tag 'Dynamic
                inputs $ assert-type (&map:get state :inputs) (:: 'List 'String)
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                div
                  {} $ :style $ merge ui/expand
                    {} (:padding 40) (:font-size 32)
                  <> $ -> inputs (map markup-tone) (join-str "| ")
                div
                  {} $ :style $ merge ui/expand
                    {} (:padding 16) (:font-size 32)
                  input $ {} (:value |) (:style ui/input) (:placeholder |TODO)
                div
                  {} $ :style $ merge ui/row-center
                    {} $ :padding 16
                  comp-keyboard
                    assert-type (>> states :keyboard) (:: 'Map 'Tag 'Dynamic)
                    fn (input-action)
                      match input-action
                        (:append chunk)
                          Op :states cursor $ assoc state :inputs $ conj inputs (join-str chunk |)
                        (:backspace)
                          Op :states cursor $ assoc state :inputs $ butlast inputs
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Reel
        'comp-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-keyboard (states on-input)
            let
                cursor $ assert-type (&map:get states :cursor) (:: 'List 'Dynamic)
                state $ assert-type
                  option:unwrap-or (get states :data)
                    {} $ :buffer $ []
                  :: 'Map 'Tag 'Dynamic
                buffer $ assert-type (&map:get state :buffer) (:: 'List 'String)
                keyboard $ assert-type
                  case-default (count buffer) ([]) (0 initial-keyboard) (1 vowel-keyboard) (2 tone-keyboard)
                  :: 'List $ :: 'List 'String
              div
                {} $ :style $ merge ui/center
                  {} $ :font-family "|Yomogi, cursive"
                div
                  {} $ :style $ {} (:font-size 40)
                  <> $ join-str buffer |
                div
                  {} $ :style ui/row-center
                  list-> ({})
                    -> keyboard $ map-indexed $ fn (idx row)
                      [] idx $ list->
                        {} $ :style ui/row
                        -> row $ map-indexed $ fn (j key)
                          [] j $ div
                            {} (:class-name |keystroke) (:style style-keystroke)
                              :on-click $ fn (e d!)
                                when (not= key |.)
                                  let
                                      chunk $ conj buffer key
                                    if
                                      >= (count chunk) 3
                                      do
                                        d! $ on-input $ KeyboardInput :append chunk
                                        d! $ Op :states cursor $ assoc state :buffer ([])
                                      d! $ Op :states cursor $ assoc state :buffer chunk
                            <> key
                  list-> ({})
                    -> ([] "|⌫" |. |. "|⚁")
                      map-indexed $ fn (idx key)
                        [] idx $ div
                          {} (:style style-keystroke)
                            :on-click $ fn (e d!)
                              case-default key (println |TODO)
                                "|⌫" $ if (empty? buffer)
                                  d! $ on-input $ KeyboardInput :backspace
                                  d! $ Op :states cursor $ assoc state :buffer (butlast buffer)
                                "|⚁" $ request-fullscreen!
                          <> key
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Fn $ {} (:return 'app.schema/Op)
                :args $ [] 'app.schema/KeyboardInput
        'make-regex $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-regex (pattern)
            unsafe-coerce (new js/RegExp pattern) RegexHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.container/RegexHost)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'mark-vowel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mark-vowel (vowel tone)
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
        'markup-tone $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn markup-tone (x)
            let
                x1 $ .replace3 (unsafe-coerce x StringHost) (make-regex "|([aoeiuü])(ng?)([→↗↺↘])$")
                  fn (a b b2 c & args)
                    str (mark-vowel b c) b2
                x2 $ .replace3 (unsafe-coerce x1 StringHost) (make-regex "|([aoeiuü])([aoeiuü])([→↗↺↘])$")
                  fn (a b b2 c & args)
                    str (mark-vowel b c) b2
                x3 $ .replace2 (unsafe-coerce x2 StringHost) (make-regex "|([aoeiuü])r([→↗↺↘])$")
                  fn (a b c & args)
                    str (mark-vowel b c) |r
              .replace2 (unsafe-coerce x3 StringHost) (make-regex "|([aoeiuü])([→↗↺↘])$")
                fn (a b c & args) (mark-vowel b c)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'request-fullscreen! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn request-fullscreen! ()
            .request-fullscreen! $ unsafe-coerce js/document.body FullscreenHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'style-keystroke $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-keystroke
            merge ui/center $ {} (:width 60) (:height 60)
              :border $ str "|1px solid " $ hsl 0 0 90
              :margin |4px
              :cursor :pointer
              :user-select :none
              :font-size 20
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require ([] respo-ui.core :as ui)
            [] respo-ui.core :refer $ [] hsl
            [] respo.core :refer $ [] defcomp defeffect list-> <> >> div button textarea span input
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] app.config :refer $ [] dev? initial-keyboard vowel-keyboard tone-keyboard
            [] app.schema :refer $ [] Op KeyboardInput
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'initial-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-keyboard
            []
              [] |b |p |m |f |d |t |n |l
              [] |g |k |h |j |q |x |. |.
              [] |zh |ch |sh |r |z |c |s |.
              [] |y |w |. |. |. |. |. |.
          :examples $ []
          :schema $ :: 'List $ :: 'List 'String
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |proto-shuangpin
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'tone-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tone-keyboard
            [] $ [] |. |. "|→" "|↗" "|↺" "|↘" |. |.
          :examples $ []
          :schema $ :: 'List $ :: 'List 'String
        'vowel-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def vowel-keyboard
            []
              [] |a |o |e |i |u "|ü" |uan |ian
              [] |ai |ei |ui |ao |ou |iu |uo |uai
              [] |an |en |in |un "|ün" |ie "|üe" |er
              [] |ang |eng |ing |ong |iang |uang |iong |ua
          :examples $ []
          :schema $ :: 'List $ :: 'List 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base app.schema/store) (assoc :store app.schema/store)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Reel
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ assert-type (reel-updater updater @*reel op) 'app.schema/Reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            repeat! 60 persist-storage!
            match
              storage-get $ config/site :storage-key
              (:some raw)
                dispatch! $ app.schema/Op :hydrate-storage $ decode-map-as (parse-cirru-edn raw) app.schema/Store
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set! (config/site :storage-key)
              format-cirru-edn $ decode-map-as (&map:get @*reel :store) app.schema/Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel app.schema/store updater) 'app.schema/Reel
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            [] respo.core :refer $ [] render! clear-cache!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] app.config :as config
            [] |./calcit.build-errors :default build-errors
            [] |bottom-tip :default hud!
            [] js-ffi.browser :refer $ [] query-selector add-event-listener! set-interval! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'KeyboardInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum KeyboardInput
            :append $ :: 'List 'String
            :backspace
          :examples $ []
          :schema $ :: 'EnumDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :hydrate-storage 'app.schema/Store
            :reel/toggle
            :reel/recall 'Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove 'Number
          :examples $ []
          :schema $ :: 'EnumDef
        'Reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def Reel &unit
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                decode-map-as (update-states store cursor data) app.schema/Store
              (:hydrate-storage data) (decode-map-as data app.schema/Store)
              _ $ do (println "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
