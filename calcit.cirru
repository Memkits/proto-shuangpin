
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'RegexHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegexHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'StringHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StringHost
            .replace3 $ Fn app.comp.container/StringHost app.comp.container/RegexHost
              Fn String String String String Number String $ -> String
              -> String
            .replace2 $ Fn app.comp.container/StringHost app.comp.container/RegexHost
              Fn String String String Number String $ -> String
              -> String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:replace2 |replace) (:replace3 |replace)
          :schema $ quote Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
            let
                store $ :store reel
                states store.:states
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ decode-map-as
                  .unwrap-or (get states :data)
                    {} $ :inputs $ []
                  , app.schema/InputState
                inputs $ :inputs state
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/column
                div
                  {} $ :style $ .merge ui/expand
                    {} (:padding |40px) (:font-size |32px)
                  <> $ -> inputs (map markup-tone) (join-string "| ")
                div
                  {} $ :style $ .merge ui/expand
                    {} (:padding |16px) (:font-size |32px)
                  input $ {} (:value |) (:style ui/input) (:placeholder |TODO)
                div
                  {} $ :style $ .merge ui/row-center
                    {} $ :padding |16px
                  comp-keyboard (>> states :keyboard)
                    fn (input-action)
                      match input-action
                        (:append chunk)
                          Op :edit-state cursor $ app.schema/InputState :inputs $ conj inputs (join-string chunk |)
                        (:backspace)
                          Op :edit-state cursor $ app.schema/InputState :inputs $ butlast inputs
                if dev?
                  Option :some $ comp-typed-reel (>> states :reel) reel ({}) on-control!
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-keyboard (states on-input)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ decode-map-as
                  .unwrap-or (get states :data)
                    {} $ :buffer $ []
                  , app.schema/KeyboardState
                buffer $ :buffer state
                keyboard $ match (.len buffer) (0 initial-keyboard) (1 vowel-keyboard) (2 tone-keyboard)
                  _ $ []
              div
                {} $ :style $ .merge ui/center
                  {} $ :font-family "|Yomogi, cursive"
                div
                  {} $ :style $ {} (:font-size |40px)
                  <> $ join-string buffer |
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
                                      >= (.len chunk) 3
                                      do
                                        d! $ on-input $ KeyboardInput :append chunk
                                        d! $ Op :edit-state cursor $ app.schema/KeyboardState :buffer ([])
                                      d! $ Op :edit-state cursor $ app.schema/KeyboardState :buffer chunk
                            <> key
                  list-> ({})
                    -> ([] "|⌫" |. |. "|⚁")
                      map-indexed $ fn (idx key)
                        [] idx $ div
                          {} (:style style-keystroke)
                            :on-click $ fn (e d!)
                              match key
                                "|⌫" $ if (empty? buffer)
                                  d! $ on-input $ KeyboardInput :backspace
                                  d! $ Op :edit-state cursor $ app.schema/KeyboardState :buffer (butlast buffer)
                                "|⚁" $ request-fullscreen!
                                _ $ println |TODO
                          <> key
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic)
            Fn app.schema/KeyboardInput $ -> app.schema/Op
            -> respo.schema/Component
        'make-regex $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-regex (pattern)
            unsafe-coerce (new js/RegExp pattern) RegexHost
          :examples $ []
          :schema $ quote $ Fn String (-> app.comp.container/RegexHost) (:features :js-ffi)
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
          :schema $ quote $ Fn String String (-> String)
        'markup-tone $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn markup-tone (x)
            let
                x1 $ .replace3 (unsafe-coerce x StringHost) (make-regex "|([aoeiuü])(ng?)([→↗↺↘])$")
                  fn (_match b b2 c _offset _input)
                    str (mark-vowel b c) b2
                x2 $ .replace3 (unsafe-coerce x1 StringHost) (make-regex "|([aoeiuü])([aoeiuü])([→↗↺↘])$")
                  fn (_match b b2 c _offset _input)
                    str (mark-vowel b c) b2
                x3 $ .replace2 (unsafe-coerce x2 StringHost) (make-regex "|([aoeiuü])r([→↗↺↘])$")
                  fn (_match b c _offset _input)
                    str (mark-vowel b c) |r
              .replace2 (unsafe-coerce x3 StringHost) (make-regex "|([aoeiuü])([→↗↺↘])$")
                fn (_match b c _offset _input) (mark-vowel b c)
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'request-fullscreen! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn request-fullscreen! ()
            browser/element-request-fullscreen! $ .unwrap $ browser/document-body
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'style-keystroke $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-keystroke
            .merge ui/center $ {} (:width |60px) (:height |60px)
              :border $ str "|1px solid " $ hsl 0 0 90
              :margin |4px
              :cursor |pointer
              :user-select |none
              :font-size |20px
          :examples $ []
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev? initial-keyboard vowel-keyboard tone-keyboard
            app.schema :refer $ Op KeyboardInput
            js-ffi.browser :as browser
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'initial-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-keyboard
            []
              [] |b |p |m |f |d |t |n |l
              [] |g |k |h |j |q |x |. |.
              [] |zh |ch |sh |r |z |c |s |.
              [] |y |w |. |. |. |. |. |.
          :examples $ []
          :schema $ quote $ List (List String)
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |proto-shuangpin
          :examples $ []
          :schema $ quote $ Map Tag String
        'tone-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tone-keyboard
            [] $ [] |. |. "|→" "|↗" "|↺" "|↘" |. |.
          :examples $ []
          :schema $ quote $ List (List String)
        'vowel-keyboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def vowel-keyboard
            []
              [] |a |o |e |i |u "|ü" |uan |ian
              [] |ai |ei |ui |ao |ou |iu |uo |uai
              [] |an |en |in |un "|ün" |ie "|üe" |er
              [] |ang |eng |ing |ong |iang |uang |iong |ua
          :examples $ []
          :schema $ quote $ List (List String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel app.schema/store)
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State app.schema/Op app.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            dispatch-resolved! op
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit) (:features :js-ffi)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (host/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            match
              storage-get $
                get config/site :storage-key
                , .unwrap
              (:some raw)
                dispatch! $ app.schema/Op :hydrate-storage $ app.schema/decode-store (parse-cirru-edn raw)
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k on-control!
            add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            repeat! 60 persist-storage!
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch-resolved! control)
          :examples $ []
          :schema $ quote $ Fn reel.typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel app.schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            app.schema :as app.schema
            js-ffi.shared :as host
            respo.ffi.browser :as dom
            app.config :as config
            |./calcit.build-errors.mjs :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ add-event-listener! set-interval! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'InputState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InputState
            :inputs $ List String
          :examples $ []
          :schema $ quote StructDef
        'KeyboardInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum KeyboardInput
            :append $ List String
            :backspace
          :examples $ []
          :schema $ quote EnumDef
        'KeyboardState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct KeyboardState
            :buffer $ List String
          :examples $ []
          :schema $ quote StructDef
        'LocalState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion LocalState InputState KeyboardState
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :hydrate-storage app.schema/Store
            :edit-state (List respo.schema/CoordKey) app.schema/LocalState
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Tag Dynamic
          :examples $ []
          :schema $ quote StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (raw)
            decode-map-as
              {} $ :states $ .unwrap (get raw :states)
              , Store
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.schema/Store)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ quote app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                assoc store :states $ decode-map-as
                  assoc-in (:states store) (conj cursor :data) data
                  Map Tag Dynamic
              (:hydrate-storage data) data
              (:edit-state cursor data)
                assoc store :states $ decode-map-as
                  assoc-in (:states store) (conj cursor :data)
                    match data
                      (app.schema/InputState input)
                        {} $ :inputs $ :inputs input
                      (app.schema/KeyboardState keyboard)
                        {} $ :buffer $ :buffer keyboard
                  Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
