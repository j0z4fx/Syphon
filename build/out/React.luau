type Object__DARKLUA_TYPE_a={[string]:any}

type Array__DARKLUA_TYPE_b<T> ={[number]:T}

type Function__DARKLUA_TYPE_c=(...any)->...any

type Table__DARKLUA_TYPE_d<T,V> ={[T]:V}

type Tuple__DARKLUA_TYPE_e<T,V> =Array__DARKLUA_TYPE_b<T|V>

type mapCallbackFn__DARKLUA_TYPE_f<K,V> =(element:V,key:K,map:Map__DARKLUA_TYPE_h<K,V>)->()

type mapCallbackFnWithThisArg__DARKLUA_TYPE_g<K,V> =(thisArg:Object__DARKLUA_TYPE_a,value:V,key:K,map:Map__DARKLUA_TYPE_h<K,V>)->()

type Map__DARKLUA_TYPE_h<K,V> =typeof(setmetatable(
{}::{
size:number,

set:(self:Map__DARKLUA_TYPE_h<K,V>,K,V)->Map__DARKLUA_TYPE_h<K,V>,
get:(self:Map__DARKLUA_TYPE_h<K,V>,K)->V|nil,
clear:(self:Map__DARKLUA_TYPE_h<K,V>)->(),
delete:(self:Map__DARKLUA_TYPE_h<K,V>,K)->boolean,
forEach:(
self:Map__DARKLUA_TYPE_h<K,V>,
callback:mapCallbackFn__DARKLUA_TYPE_f<K,V>|mapCallbackFnWithThisArg__DARKLUA_TYPE_g<K,V>,
thisArg:Object__DARKLUA_TYPE_a?
)->(),
[K]:V,
has:(self:Map__DARKLUA_TYPE_h<K,V>,K)->boolean,
keys:(self:Map__DARKLUA_TYPE_h<K,V>)->Array__DARKLUA_TYPE_b<K>,
values:(self:Map__DARKLUA_TYPE_h<K,V>)->Array__DARKLUA_TYPE_b<V>,
entries:(self:Map__DARKLUA_TYPE_h<K,V>)->Array__DARKLUA_TYPE_b<Tuple__DARKLUA_TYPE_e<K,V>>,
ipairs:(self:Map__DARKLUA_TYPE_h<K,V>)->any,
_map:{[K]:V},
_array:{[number]:K},
__index:(self:Map__DARKLUA_TYPE_h<K,V>,key:K)->V,
__iter:(self:Map__DARKLUA_TYPE_h<K,V>)->(<K,V>({[K]:V},K?)->(K?,V),V),
__newindex:(self:Map__DARKLUA_TYPE_h<K,V>,key:K,value:V)->(),
},
{}::{
__index:Map__DARKLUA_TYPE_h<K,V>,
__iter:(self:Map__DARKLUA_TYPE_h<K,V>)->(<K,V>({[K]:V},K?)->(K,V),V),
__newindex:(self:Map__DARKLUA_TYPE_h<K,V>,key:K,value:V)->(),
}
))

type WeakMap__DARKLUA_TYPE_i<K,V> ={

get:(self:WeakMap__DARKLUA_TYPE_i<K,V>,K)->V,
set:(self:WeakMap__DARKLUA_TYPE_i<K,V>,K,V)->WeakMap__DARKLUA_TYPE_i<K,V>,
has:(self:WeakMap__DARKLUA_TYPE_i<K,V>,K)->boolean,
}

type setCallbackFn__DARKLUA_TYPE_j<T> =(value:T,key:T,set:Set__DARKLUA_TYPE_l<T>)->()

type setCallbackFnWithThisArg__DARKLUA_TYPE_k<T> =(thisArg:Object__DARKLUA_TYPE_a,value:T,key:T,set:Set__DARKLUA_TYPE_l<T>)->()

type Set__DARKLUA_TYPE_l<T> =typeof(setmetatable(
{}::{
size:number,

add:(self:Set__DARKLUA_TYPE_l<T>,T)->Set__DARKLUA_TYPE_l<T>,
clear:(self:Set__DARKLUA_TYPE_l<T>)->(),
delete:(self:Set__DARKLUA_TYPE_l<T>,T)->boolean,
forEach:(self:Set__DARKLUA_TYPE_l<T>,callback:setCallbackFn__DARKLUA_TYPE_j<T>|setCallbackFnWithThisArg__DARKLUA_TYPE_k<T>,thisArg:Object__DARKLUA_TYPE_a?)->(),
has:(self:Set__DARKLUA_TYPE_l<T>,T)->boolean,
ipairs:(self:Set__DARKLUA_TYPE_l<T>)->any,
},
{}::{
__index:Set__DARKLUA_TYPE_l<T>,
__iter:(self:Set__DARKLUA_TYPE_l<T>)->(<K,V>({[K]:V},K?)->(K,V),T),
}
))

type Array__DARKLUA_TYPE_m<T> =types.Array<T>

type Array__DARKLUA_TYPE_n<T> =types.Array<T>

type Object__DARKLUA_TYPE_o=types.Object

type callbackFn__DARKLUA_TYPE_p<T> =(element:T,index:number,array:Array__DARKLUA_TYPE_n<T>)->boolean

type callbackFnWithThisArg__DARKLUA_TYPE_q<T,U> =(self:U,element:T,index:number,array:Array__DARKLUA_TYPE_n<T>)->boolean

type Array__DARKLUA_TYPE_r<T> =types.Array<T>

type Object__DARKLUA_TYPE_s=types.Object

type callbackFn__DARKLUA_TYPE_t<T> =(element:T,index:number,array:Array__DARKLUA_TYPE_r<T>)->boolean

type callbackFnWithThisArg__DARKLUA_TYPE_u<T,U> =(thisArg:U,element:T,index:number,array:Array__DARKLUA_TYPE_r<T>)->boolean

type Array__DARKLUA_TYPE_v<T> =types.Array<T>

type PredicateFunction__DARKLUA_TYPE_w<T> =(value:T,index:number,array:Array__DARKLUA_TYPE_v<T>)->boolean

type Array__DARKLUA_TYPE_x<T> =types.Array<T>

type PredicateFunction__DARKLUA_TYPE_y<T> =(T,number,Array__DARKLUA_TYPE_x<T>)->boolean

type Array__DARKLUA_TYPE_z<T> =types.Array<T>

type Array__DARKLUA_TYPE_A<T> =types.Array<T>

type Object__DARKLUA_TYPE_B=types.Object

type callbackFn__DARKLUA_TYPE_C<T,U> =(element:T,index:number,array:Array__DARKLUA_TYPE_A<T>)->U

type callbackFnWithThisArg__DARKLUA_TYPE_D<T,U,V> =(thisArg:V,element:T,index:number,array:Array__DARKLUA_TYPE_A<T>)->U

type Array__DARKLUA_TYPE_E<T> =types.Array<T>

type callbackFn__DARKLUA_TYPE_F<T,U> =(element:T,index:number,array:Array__DARKLUA_TYPE_E<T>)->U

type callbackFnWithThisArg__DARKLUA_TYPE_G<T,U,V> =(thisArg:V,element:T,index:number,array:Array__DARKLUA_TYPE_E<T>)->U

type Array__DARKLUA_TYPE_H<T> =types.Array<T>

type Object__DARKLUA_TYPE_I=types.Object

type callbackFn__DARKLUA_TYPE_J<T> =(element:T,index:number,array:Array__DARKLUA_TYPE_H<T>)->()

type callbackFnWithThisArg__DARKLUA_TYPE_K<T,U> =(thisArg:U,element:T,index:number,array:Array__DARKLUA_TYPE_H<T>)->()

type Array__DARKLUA_TYPE_L<T> =ES7Types.Array<T>

type InspectOptions__DARKLUA_TYPE_M={
depth:number?,
}

type FormatOptions__DARKLUA_TYPE_N={
depth:number,
}

type Object__DARKLUA_TYPE_O=types.Object

type Array__DARKLUA_TYPE_P<T> =types.Array<T>

type mapFn__DARKLUA_TYPE_Q<T,U> =(element:T,index:number)->U

type mapFnWithThisArg__DARKLUA_TYPE_R<T,U> =(thisArg:any,element:T,index:number)->U

type Array__DARKLUA_TYPE_S<T> =types.Array<T>

type Object__DARKLUA_TYPE_T=types.Object

type setCallbackFn__DARKLUA_TYPE_U<T> =types.setCallbackFn<T>

type setCallbackFnWithThisArg__DARKLUA_TYPE_V<T> =types.setCallbackFnWithThisArg<T>

type Set__DARKLUA_TYPE_W<T> =types.Set<T>

type Set_Statics__DARKLUA_TYPE_X={
new:<T>(iterable:Array__DARKLUA_TYPE_S<T>|Set__DARKLUA_TYPE_W<T>|string|nil)->Set__DARKLUA_TYPE_W<T>,
}

type Object__DARKLUA_TYPE_Y=types.Object

type Array__DARKLUA_TYPE_Z<T> =types.Array<T>

type Table__DARKLUA_TYPE__<T,V> =types.Table<T,V>

type Tuple__DARKLUA_TYPE_0<T,V> =types.Tuple<T,V>

type mapCallbackFn__DARKLUA_TYPE_1<K,V> =types.mapCallbackFn<K,V>

type mapCallbackFnWithThisArg__DARKLUA_TYPE_2<K,V> =types.mapCallbackFnWithThisArg<K,V>

type Map__DARKLUA_TYPE_3<K,V> =types.Map<K,V>

type Map_Statics__DARKLUA_TYPE_4={
new:<K,V>(iterable:Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>?)->Map__DARKLUA_TYPE_3<K,V>,
}

type Object__DARKLUA_TYPE_5=types.Object

type Array__DARKLUA_TYPE_6<T> =types.Array<T>

type Set__DARKLUA_TYPE_7<T> =types.Set<T>

type mapFn__DARKLUA_TYPE_8<T,U> =(element:T,index:number)->U

type mapFnWithThisArg__DARKLUA_TYPE_9<T,U> =(thisArg:any,element:T,index:number)->U

type Object__DARKLUA_TYPE_aa=types.Object

type Array__DARKLUA_TYPE_ab<T> =types.Array<T>

type Map__DARKLUA_TYPE_ac<K,V> =types.Map<K,V>

type mapFn__DARKLUA_TYPE_ad<T,U> =(element:T,index:number)->U

type mapFnWithThisArg__DARKLUA_TYPE_ae<T,U> =(thisArg:any,element:T,index:number)->U

type Object__DARKLUA_TYPE_af=types.Object

type Array__DARKLUA_TYPE_ag<T> =types.Array<T>

type mapFn__DARKLUA_TYPE_ah<T,U> =(element:T,index:number)->U

type mapFnWithThisArg__DARKLUA_TYPE_ai<T,U> =(thisArg:any,element:T,index:number)->U

type Array__DARKLUA_TYPE_aj<T> =types.Array<T>

type Object__DARKLUA_TYPE_ak=types.Object

type Set__DARKLUA_TYPE_al<T> =types.Set<T>

type Map__DARKLUA_TYPE_am<K,V> =types.Map<K,V>

type mapFn__DARKLUA_TYPE_an<T,U> =(element:T,index:number)->U

type mapFnWithThisArg__DARKLUA_TYPE_ao<T,U> =(thisArg:any,element:T,index:number)->U

type Array__DARKLUA_TYPE_ap<T> =types.Array<T>

type Array__DARKLUA_TYPE_aq<T> =types.Array<T>

type Array__DARKLUA_TYPE_ar<T> =types.Array<T>

type Array__DARKLUA_TYPE_as<T> =types.Array<T>

type reduceFn__DARKLUA_TYPE_at<T,U> =(previousValue:U,currentValue:T,currentIndex:number,array:Array__DARKLUA_TYPE_as<T>)->U

type Array__DARKLUA_TYPE_au<T> =types.Array<T>

type Array__DARKLUA_TYPE_av<T> =types.Array<T>

type Array__DARKLUA_TYPE_aw<T> =types.Array<T>

type Array__DARKLUA_TYPE_ax<T> =types.Array<T>

type Object__DARKLUA_TYPE_ay=types.Object

type callbackFn__DARKLUA_TYPE_az<T> =(element:T,index:number,array:Array__DARKLUA_TYPE_ax<T>)->boolean

type callbackFnWithThisArg__DARKLUA_TYPE_aA<T,U> =(thisArg:U,element:T,index:number,array:Array__DARKLUA_TYPE_ax<T>)->boolean

type Array__DARKLUA_TYPE_aB<T> =types.Array<T>

type Comparable__DARKLUA_TYPE_aC=(any,any)->number

type Array__DARKLUA_TYPE_aD<T> =types.Array<T>

type Array__DARKLUA_TYPE_aE<T> =types.Array<T>

type Array__DARKLUA_TYPE_aF<T> =ES7Types.Array<T>

type Object__DARKLUA_TYPE_aG=types.Object

type Array__DARKLUA_TYPE_aH<T> =types.Array<T>

type Map__DARKLUA_TYPE_aI<K,V> =types.Map<K,V>

type Tuple__DARKLUA_TYPE_aJ<T,V> =types.Tuple<T,V>

type Array__DARKLUA_TYPE_aK<T> =types.Array<T>

type Object__DARKLUA_TYPE_aL=types.Object

type Array__DARKLUA_TYPE_aM<T> =types.Array<T>

type Object__DARKLUA_TYPE_aN=types.Object

type Array__DARKLUA_TYPE_aO<T> =types.Array<T>

type Set__DARKLUA_TYPE_aP<T> =types.Set<T>

type Table__DARKLUA_TYPE_aQ={[any]:any}

type Array__DARKLUA_TYPE_aR<T> =types.Array<T>

type Object__DARKLUA_TYPE_aS=types.Object

type Array__DARKLUA_TYPE_aT<T> =types.Array<T>

type Object__DARKLUA_TYPE_aU=types.Object

type Array__DARKLUA_TYPE_aV<T> =types.Array<T>

type Map__DARKLUA_TYPE_aW<K,V> =types.Map<K,V>

type Table__DARKLUA_TYPE_aX<K,V> =types.Table<K,V>

type Map__DARKLUA_TYPE_aY<K,V> =types.Map<K,V>

type Table__DARKLUA_TYPE_aZ<K,V> =types.Table<K,V>

type Map__DARKLUA_TYPE_a_<K,V> =ES7Types.Map<K,V>

type WeakMap__DARKLUA_TYPE_a0<K,V> =ES7Types.WeakMap<K,V>

type WeakMapPrivate__DARKLUA_TYPE_a1<K,V> ={
_weakMap:{[K]:V},

get:(self:WeakMapPrivate__DARKLUA_TYPE_a1<K,V>,K)->V,
set:(self:WeakMapPrivate__DARKLUA_TYPE_a1<K,V>,K,V)->WeakMapPrivate__DARKLUA_TYPE_a1<K,V>,
has:(self:WeakMapPrivate__DARKLUA_TYPE_a1<K,V>,K)->boolean,
}

type WeakMap_Statics__DARKLUA_TYPE_a2={
new:<K,V>()->WeakMap__DARKLUA_TYPE_a0<K,V>,
}

type Array__DARKLUA_TYPE_a3<T> =types.Array<T>

type Map__DARKLUA_TYPE_a4<T,V> =types.Map<T,V>

type Object__DARKLUA_TYPE_a5=types.Object

type Set__DARKLUA_TYPE_a6<T> =types.Set<T>

type WeakMap__DARKLUA_TYPE_a7<T,V> =types.WeakMap<T,V>

type Match__DARKLUA_TYPE_a8={
index:number,
match:string,
}

type Array__DARKLUA_TYPE_a9<T> =types.Array<T>

type Pattern__DARKLUA_TYPE_ba=string|Array__DARKLUA_TYPE_a9<string>

type Symbol__DARKLUA_TYPE_bb=typeof(newproxy(true))&{[string]:any}

type Symbol__DARKLUA_TYPE_bc=Symbol__DARKLUA_TYPE_bb
type TaskStatus__DARKLUA_TYPE_bd=number

type Timeout__DARKLUA_TYPE_be={[typeof(Status)]:TaskStatus__DARKLUA_TYPE_bd}

type TaskStatus__DARKLUA_TYPE_bf=number

type Interval__DARKLUA_TYPE_bg={[typeof(Status)]:TaskStatus__DARKLUA_TYPE_bf}

type Timeout__DARKLUA_TYPE_bh=Timeout__DARKLUA_TYPE_be
type Interval__DARKLUA_TYPE_bi=Interval__DARKLUA_TYPE_bg
type Function__DARKLUA_TYPE_bj=types.Function

type Error__DARKLUA_TYPE_bk={name:string,message:string,stack:string?}

type Error_private__DARKLUA_TYPE_bl=Error__DARKLUA_TYPE_bk&{__stack:string?}

type Error__DARKLUA_TYPE_bm=Error__DARKLUA_TYPE_bk
type Error__DARKLUA_TYPE_bn=Error__DARKLUA_TYPE_bm
type Array__DARKLUA_TYPE_bo<T> =types.Array<T>

type Object__DARKLUA_TYPE_bp=types.Object

type Function__DARKLUA_TYPE_bq=types.Function

type AssertionError__DARKLUA_TYPE_br=Error__DARKLUA_TYPE_bn&{
actual:any,
expected:any,
operator:string?,
generatedMessage:boolean,
code:"ERR_ASSERTION",
toString:(self:AssertionError__DARKLUA_TYPE_br)->any,


}

type AssertionErrorStatics__DARKLUA_TYPE_bs={
new:(options:AssertionErrorOptions__DARKLUA_TYPE_bt)->AssertionError__DARKLUA_TYPE_br,
__index:AssertionError__DARKLUA_TYPE_br,
__tostring:(self:AssertionError__DARKLUA_TYPE_br)->string,
}

type AssertionErrorOptions__DARKLUA_TYPE_bt={
message:string?,
actual:any?,
expected:any?,

operator:string?,
stackStartFn:Function__DARKLUA_TYPE_bq?,
}

type AssertionError__DARKLUA_TYPE_bu=AssertionError__DARKLUA_TYPE_br
type PromiseLike__DARKLUA_TYPE_bv<T> ={
andThen:(
self:PromiseLike__DARKLUA_TYPE_bv<T>,
resolve:((T)->...(nil|T|PromiseLike__DARKLUA_TYPE_bv<T>))?,
reject:((any)->...(nil|T|PromiseLike__DARKLUA_TYPE_bv<T>))?
)->PromiseLike__DARKLUA_TYPE_bv<T>,
}

type PromiseStatus__DARKLUA_TYPE_bw="Started"|"Resolved"|"Rejected"|"Cancelled"

type Promise__DARKLUA_TYPE_bx<T> ={
andThen:(
self:Promise__DARKLUA_TYPE_bx<T>,
resolve:((T)->...(nil|T|PromiseLike__DARKLUA_TYPE_bv<T>))?,
reject:((any)->...(nil|T|PromiseLike__DARKLUA_TYPE_bv<T>))?
)->Promise__DARKLUA_TYPE_bx<T>,

catch:(Promise__DARKLUA_TYPE_bx<T>,((any)->...(nil|T|PromiseLike__DARKLUA_TYPE_bv<nil>)))->Promise__DARKLUA_TYPE_bx<T>,

onCancel:(Promise__DARKLUA_TYPE_bx<T>,(()->())?)->boolean,

expect:(Promise__DARKLUA_TYPE_bx<T>)->...T,


await:(Promise__DARKLUA_TYPE_bx<T>)->(boolean,...(T|any)),

getStatus:(self:Promise__DARKLUA_TYPE_bx<T>)->PromiseStatus__DARKLUA_TYPE_bw,

awaitStatus:(self:Promise__DARKLUA_TYPE_bx<T>)->(PromiseStatus__DARKLUA_TYPE_bw,...(T|any)),
}

type Array__DARKLUA_TYPE_by<T> =types.Array<T>

type AssertionError__DARKLUA_TYPE_bz=AssertionError__DARKLUA_TYPE_bu
type Error__DARKLUA_TYPE_bA=Error__DARKLUA_TYPE_bm
type Map__DARKLUA_TYPE_bB<T,V> =types.Map<T,V>

type Object__DARKLUA_TYPE_bC=types.Object

type PromiseLike__DARKLUA_TYPE_bD<T> =PromiseLike__DARKLUA_TYPE_bv<T>

type Promise__DARKLUA_TYPE_bE<T> =Promise__DARKLUA_TYPE_bx<T>

type Set__DARKLUA_TYPE_bF<T> =types.Set<T>

type Symbol__DARKLUA_TYPE_bG=Symbol.Symbol

type Timeout__DARKLUA_TYPE_bH=Timers.Timeout

type Interval__DARKLUA_TYPE_bI=Timers.Interval

type WeakMap__DARKLUA_TYPE_bJ<T,V> =Collections.WeakMap<T,V>

type Error__DARKLUA_TYPE_bK=LuauPolyfill.Error

type Array__DARKLUA_TYPE_bL<T> =LuauPolyfill.Array<T>

type Object__DARKLUA_TYPE_bM={[string]:any}

type Source__DARKLUA_TYPE_bN={
fileName:string,
lineNumber:number,
}

type React_Node__DARKLUA_TYPE_bO=
nil
|boolean
|number
|string
|React_Element__DARKLUA_TYPE_bP<any>


|Array__DARKLUA_TYPE_bL<React_Node__DARKLUA_TYPE_bO?>

|{[string]:React_Node__DARKLUA_TYPE_bO?,UNIQUE_TAG:any?}

type React_Element__DARKLUA_TYPE_bP<ElementType> ={
type:ElementType,
props:React_ElementProps__DARKLUA_TYPE_b_<ElementType>?,
key:React_Key__DARKLUA_TYPE_b4|nil,
ref:any,
}

type React_PureComponent__DARKLUA_TYPE_bQ<Props,State=nil> =React_Component__DARKLUA_TYPE_bW<Props,State>

type React_AbstractComponent__DARKLUA_TYPE_bR<Config,T> =
React_ForwardRefComponent__DARKLUA_TYPE_bT<Config,T>
|React_MemoComponent__DARKLUA_TYPE_bU<Config,T>

type React_BaseAbstractComponent__DARKLUA_TYPE_bS<Config,T> ={
[





























































































































































































































































































































































































































"$$typeof"]:number,displayName:string?,defaultProps:Config?,name:string?,}type React_ForwardRefComponent__DARKLUA_TYPE_bT<Config,Instance> =React_BaseAbstractComponent__DARKLUA_TYPE_bS<Config,Instance>&{render:(props:Config,ref:React_Ref__DARKLUA_TYPE_b1<Instance>)->React_Node__DARKLUA_TYPE_bO,[string]:any,}type React_MemoComponent__DARKLUA_TYPE_bU<Config,T> =React_BaseAbstractComponent__DARKLUA_TYPE_bS<Config,T>&{type:React_StatelessFunctionalComponent__DARKLUA_TYPE_bX<Config>,compare:((oldProps:Config,newProps:Config)->boolean)?,}type React_ElementConfig__DARKLUA_TYPE_bV<C> =Object__DARKLUA_TYPE_bM type React_Component__DARKLUA_TYPE_bW<Props,State=nil> ={props:Props,state:State,setState:(self:React_Component__DARKLUA_TYPE_bW<Props,State>,partialState:State|((State,Props)->State?),callback:(()->())?)->(),forceUpdate:(self:React_Component__DARKLUA_TYPE_bW<Props,State>,callback:(()->())?)->(),init:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,props:Props,context:any?)->())?,render:(self:React_Component__DARKLUA_TYPE_bW<Props,State>)->React_Node__DARKLUA_TYPE_bO,componentWillMount:((self:React_Component__DARKLUA_TYPE_bW<Props,State>)->())?,UNSAFE_componentWillMount:((self:React_Component__DARKLUA_TYPE_bW<Props,State>)->())?,componentDidMount:((self:React_Component__DARKLUA_TYPE_bW<Props,State>)->())?,componentWillReceiveProps:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,nextProps:Props,nextContext:any)->())?,UNSAFE_componentWillReceiveProps:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,nextProps:Props,nextContext:any)->())?,shouldComponentUpdate:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,nextProps:Props,nextState:State,nextContext:any)->boolean)?,componentWillUpdate:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,nextProps:Props,nextState:State,nextContext:any)->())?,UNSAFE_componentWillUpdate:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,nextProps:Props,nextState:State,nextContext:any)->())?,componentDidUpdate:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,prevProps:Props,prevState:State,prevContext:any)->())?,componentWillUnmount:((self:React_Component__DARKLUA_TYPE_bW<Props,State>)->())?,componentDidCatch:((self:React_Component__DARKLUA_TYPE_bW<Props,State>,error:Error__DARKLUA_TYPE_bK,info:{componentStack:string,})->())?,getDerivedStateFromProps:((props:Props,state:State)->State?)?,getDerivedStateFromError:((error:Error__DARKLUA_TYPE_bK)->State?)?,getSnapshotBeforeUpdate:((props:Props,state:State)->any)?,__refs:Object__DARKLUA_TYPE_bM,__updater:any,context:any,getChildContext:(self:React_Component__DARKLUA_TYPE_bW<Props,State>)->any,__componentName:string,displayName:string?,name:string?,childContextTypes:any?,contextTypes:any?,propTypes:any?,validateProps:((Props)->(boolean,string?))?,defaultProps:Props?,[string]:any,}type React_StatelessFunctionalComponent__DARKLUA_TYPE_bX<Props> =(props:Props,context:any)->React_Node__DARKLUA_TYPE_bO type React_ComponentType__DARKLUA_TYPE_bY<Config> =React_Component__DARKLUA_TYPE_bW<Config,any>type React_ElementType__DARKLUA_TYPE_bZ=string|React_Component__DARKLUA_TYPE_bW<any,any>type React_ElementProps__DARKLUA_TYPE_b_<ElementType> ={ref:React_Ref__DARKLUA_TYPE_b1<ElementType>?,key:React_Key__DARKLUA_TYPE_b4?,__source:Source__DARKLUA_TYPE_bN?,children:any?,}type React_ElementRef__DARKLUA_TYPE_b0<C> =C type React_Ref__DARKLUA_TYPE_b1<ElementType> ={current:React_ElementRef__DARKLUA_TYPE_b0<ElementType>|nil}|((React_ElementRef__DARKLUA_TYPE_b0<ElementType>|nil)->())type React_Context__DARKLUA_TYPE_b2<T> ={Provider:React_ComponentType__DARKLUA_TYPE_bY<{value:T,children:React_Node__DARKLUA_TYPE_bO?}>,Consumer:React_ComponentType__DARKLUA_TYPE_bY<{children:(value:T)->React_Node__DARKLUA_TYPE_bO?}>,}type React_Portal__DARKLUA_TYPE_b3=any type React_Key__DARKLUA_TYPE_b4=string|number type Array__DARKLUA_TYPE_b5<T> =LuauPolyfill.Array<T>type Object__DARKLUA_TYPE_b6=LuauPolyfill.Object type void__DARKLUA_TYPE_b7=nil type NonMaybeType__DARKLUA_TYPE_b8<T> =T type React_Element__DARKLUA_TYPE_b9<T> =React_Element__DARKLUA_TYPE_bP<T>type React_Node__DARKLUA_TYPE_ca=React_Node__DARKLUA_TYPE_bO type SimpleMap__DARKLUA_TYPE_cb<K,V> ={[K]:V}type Iterable__DARKLUA_TYPE_cc<T> =SimpleMap__DARKLUA_TYPE_cb<string|number,T>|Array__DARKLUA_TYPE_b5<T>type ReactNode__DARKLUA_TYPE_cd<T=any> =React_Element__DARKLUA_TYPE_b9<T>|ReactPortal__DARKLUA_TYPE_cl|ReactFragment__DARKLUA_TYPE_cf|ReactProvider__DARKLUA_TYPE_ch<T>|ReactConsumer__DARKLUA_TYPE_cj<T>type ReactEmpty__DARKLUA_TYPE_ce=nil|void__DARKLUA_TYPE_b7|boolean type ReactFragment__DARKLUA_TYPE_cf=ReactEmpty__DARKLUA_TYPE_ce|Iterable__DARKLUA_TYPE_cc<React_Node__DARKLUA_TYPE_ca>type ReactNodeList__DARKLUA_TYPE_cg=ReactEmpty__DARKLUA_TYPE_ce|React_Node__DARKLUA_TYPE_ca type ReactProvider__DARKLUA_TYPE_ch<T> ={[







































































































































































































































































































































































































"$$typeof"]:number,type:ReactProviderType__DARKLUA_TYPE_ci<T>,key:nil|string,ref:nil,props:{value:T,children:ReactNodeList__DARKLUA_TYPE_cg?,},}type ReactProviderType__DARKLUA_TYPE_ci<T> ={[
















"$$typeof"]:number,_context:ReactContext__DARKLUA_TYPE_ck<T>,}type ReactConsumer__DARKLUA_TYPE_cj<T> ={[







"$$typeof"]:number,type:ReactContext__DARKLUA_TYPE_ck<T>,key:nil|string,ref:nil,props:{children:(value:T)->ReactNodeList__DARKLUA_TYPE_cg,unstable_observedBits:number?,},}type ReactContext__DARKLUA_TYPE_ck<T> ={[
















"$$typeof"]:number,Consumer:ReactContext__DARKLUA_TYPE_ck<T>,Provider:ReactProviderType__DARKLUA_TYPE_ci<T>,_calculateChangedBits:((T,T)->number)?,_currentValue:T,_currentValue2:T,_threadCount:number,_currentRenderer:Object__DARKLUA_TYPE_b6|nil,_currentRenderer2:Object__DARKLUA_TYPE_b6|nil,displayName:string?,}type ReactPortal__DARKLUA_TYPE_cl={[


















"$$typeof"]:number,key:nil|string,containerInfo:any,children:ReactNodeList__DARKLUA_TYPE_cg,implementation:any,}type RefObject__DARKLUA_TYPE_cm={current:any}type EventPriority__DARKLUA_TYPE_cn=number type ReactFundamentalComponentInstance__DARKLUA_TYPE_co<C,H> ={currentFiber:Object__DARKLUA_TYPE_b6,instance:any,prevProps:Object__DARKLUA_TYPE_b6?,props:Object__DARKLUA_TYPE_b6,impl:ReactFundamentalImpl__DARKLUA_TYPE_cp<C,H>,state:Object__DARKLUA_TYPE_b6,}type ReactFundamentalImpl__DARKLUA_TYPE_cp<C,H> ={displayName:string,reconcileChildren:boolean,getInitialState:nil|((Object__DARKLUA_TYPE_b6)->(Object__DARKLUA_TYPE_b6)),getInstance:(C,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->(H),getServerSideString:nil|((C,Object__DARKLUA_TYPE_b6)->(string)),getServerSideStringClose:nil|((C,Object__DARKLUA_TYPE_b6)->(string)),onMount:(C,any,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->(),shouldUpdate:nil|((C,Object__DARKLUA_TYPE_b6?,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->(boolean)),onUpdate:nil|((C,any,Object__DARKLUA_TYPE_b6?,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->()),onUnmount:nil|((C,any,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->()),onHydrate:nil|((C,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->boolean),onFocus:nil|((C,Object__DARKLUA_TYPE_b6,Object__DARKLUA_TYPE_b6)->boolean),}type ReactFundamentalComponent__DARKLUA_TYPE_cq<C,H> ={[
































"$$typeof"]:number,impl:ReactFundamentalImpl__DARKLUA_TYPE_cp<C,H>,}type ReactScope__DARKLUA_TYPE_cr={[




"$$typeof"]:number,}type ReactScopeQuery__DARKLUA_TYPE_cs=(type:string,props:{[string]:any?},instance:any)->boolean type ReactScopeInstance__DARKLUA_TYPE_ct={DO_NOT_USE_queryAllNodes:(ReactScopeQuery__DARKLUA_TYPE_cs)->nil|Array__DARKLUA_TYPE_b5<Object__DARKLUA_TYPE_b6>,DO_NOT_USE_queryFirstNode:(ReactScopeQuery__DARKLUA_TYPE_cs)->nil|Object__DARKLUA_TYPE_b6,containsNode:(Object__DARKLUA_TYPE_b6)->boolean,getChildContextValues:<T>(context:ReactContext__DARKLUA_TYPE_ck<T>)->Array__DARKLUA_TYPE_b5<T>,}type CoreReactBinding__DARKLUA_TYPE_cu<T> ={getValue:(self:CoreReactBinding__DARKLUA_TYPE_cu<T>)->T,_source:string?,}type ReactBindingMap__DARKLUA_TYPE_cv={map:<T,U>(self:CoreReactBinding__DARKLUA_TYPE_cu<T>&ReactBindingMap__DARKLUA_TYPE_cv,(T)->U)->ReactBindingMap__DARKLUA_TYPE_cv&CoreReactBinding__DARKLUA_TYPE_cu<U>,}type ReactBinding__DARKLUA_TYPE_cw<T> =CoreReactBinding__DARKLUA_TYPE_cu<T>&ReactBindingMap__DARKLUA_TYPE_cv type ReactBindingUpdater__DARKLUA_TYPE_cx<T> =(T)->()type MutableSourceVersion__DARKLUA_TYPE_cy=NonMaybeType__DARKLUA_TYPE_b8<any>type MutableSourceGetSnapshotFn__DARKLUA_TYPE_cz<Source,Snapshot> =(source:Source)->Snapshot type MutableSourceSubscribeFn__DARKLUA_TYPE_cA<Source,Snapshot> =(source:Source,callback:(snapshot:Snapshot)->())->(()->())type MutableSourceGetVersionFn__DARKLUA_TYPE_cB=(_source:NonMaybeType__DARKLUA_TYPE_b8<any>)->MutableSourceVersion__DARKLUA_TYPE_cy type MutableSource__DARKLUA_TYPE_cC<Source> ={_source:Source,_getVersion:MutableSourceGetVersionFn__DARKLUA_TYPE_cB,_workInProgressVersionPrimary:nil|MutableSourceVersion__DARKLUA_TYPE_cy,_workInProgressVersionSecondary:nil|MutableSourceVersion__DARKLUA_TYPE_cy,_currentPrimaryRenderer:Object__DARKLUA_TYPE_b6|nil,_currentSecondaryRenderer:Object__DARKLUA_TYPE_b6|nil,}type Wakeable__DARKLUA_TYPE_cD={andThen:(self:Wakeable__DARKLUA_TYPE_cD,onFulfill:()->...any,onReject:()->...any)->nil|Wakeable__DARKLUA_TYPE_cD,__reactDoNotTraceInteractions:boolean?,}type _Thenable__DARKLUA_TYPE_cE<R> ={andThen:<U>(self:_Thenable__DARKLUA_TYPE_cE<R>,onFulfill:(R)->...U,onReject:(error:any)->...U)->(),}type Thenable__DARKLUA_TYPE_cF<R> ={andThen:<U>(self:Thenable__DARKLUA_TYPE_cF<R>,onFulfill:(R)->...(_Thenable__DARKLUA_TYPE_cE<U>|U),onReject:(error:any)->...(_Thenable__DARKLUA_TYPE_cE<U>|U))->nil|_Thenable__DARKLUA_TYPE_cE<U>,}type Object__DARKLUA_TYPE_cG=LuauPolyfill.Object type React_Element__DARKLUA_TYPE_cH<ElementType> =React_Element__DARKLUA_TYPE_bP<ElementType>type React_StatelessFunctionalComponent__DARKLUA_TYPE_cI<P> =React_StatelessFunctionalComponent__DARKLUA_TYPE_bX<P>type React_ComponentType__DARKLUA_TYPE_cJ<P> =React_ComponentType__DARKLUA_TYPE_bY<P>type Source__DARKLUA_TYPE_cK={fileName:string,lineNumber:number,}type Key__DARKLUA_TYPE_cL=string|number type ReactElement__DARKLUA_TYPE_cM<P=Object__DARKLUA_TYPE_cG,T=any> ={[











































































































































































































































































































































































"$$typeof"]:number,type:React_StatelessFunctionalComponent__DARKLUA_TYPE_cI<P>|React_ComponentType__DARKLUA_TYPE_cJ<P>|string,key:Key__DARKLUA_TYPE_cL|nil,ref:any,props:P,_owner:any,_store:any?,_self:React_Element__DARKLUA_TYPE_cH<any>?,_shadowChildren:any?,_source:Source__DARKLUA_TYPE_cK?,}type SuspenseInstance__DARKLUA_TYPE_cN=any type Object__DARKLUA_TYPE_cO={[string]:any}type OpaqueIDType__DARKLUA_TYPE_cP=string|Object__DARKLUA_TYPE_cO type Array__DARKLUA_TYPE_cQ<T> =LuauPolyfill.Array<T>type Source__DARKLUA_TYPE_cR=Source__DARKLUA_TYPE_cK type RefObject__DARKLUA_TYPE_cS=RefObject__DARKLUA_TYPE_cm type ReactContext__DARKLUA_TYPE_cT<T> =ReactContext__DARKLUA_TYPE_ck<T>type ReactBinding__DARKLUA_TYPE_cU<T> =ReactBinding__DARKLUA_TYPE_cw<T>type ReactBindingUpdater__DARKLUA_TYPE_cV<T> =ReactBindingUpdater__DARKLUA_TYPE_cx<T>type MutableSourceVersion__DARKLUA_TYPE_cW=MutableSourceVersion__DARKLUA_TYPE_cy type MutableSource__DARKLUA_TYPE_cX<Source> =MutableSource__DARKLUA_TYPE_cC<Source__DARKLUA_TYPE_cR>type MutableSourceSubscribeFn__DARKLUA_TYPE_cY<Source,Snapshot> =MutableSourceSubscribeFn__DARKLUA_TYPE_cA<Source__DARKLUA_TYPE_cR,Snapshot>type MutableSourceGetSnapshotFn__DARKLUA_TYPE_cZ<Source,Snapshot> =MutableSourceGetSnapshotFn__DARKLUA_TYPE_cz<Source__DARKLUA_TYPE_cR,Snapshot>type BasicStateAction__DARKLUA_TYPE_c_<S> =((S)->S)|S type Dispatch__DARKLUA_TYPE_c0<A> =(A)->()type Dispatcher__DARKLUA_TYPE_c1={readContext:<T>(context:ReactContext__DARKLUA_TYPE_cT<T>,observedBits:nil|number|boolean)->T,useState:<S>(initialState:(()->S)|S)->(S,Dispatch__DARKLUA_TYPE_c0<BasicStateAction__DARKLUA_TYPE_c_<S>>),useReducer:<S,I,A>(reducer:(S,A)->S,initialArg:I,init:((I)->S)?)->(S,Dispatch__DARKLUA_TYPE_c0<A>),useContext:<T>(context:ReactContext__DARKLUA_TYPE_cT<T>,observedBits:nil|number|boolean)->T,useRef:<T>(initialValue:T)->{current:T},useBinding:<T>(initialValue:T)->(ReactBinding__DARKLUA_TYPE_cU<T>,ReactBindingUpdater__DARKLUA_TYPE_cV<T>),useEffect:(create:(()->())|(()->(()->())),deps:Array__DARKLUA_TYPE_cQ<any>|nil)->(),useLayoutEffect:(create:(()->())|(()->(()->())),deps:Array__DARKLUA_TYPE_cQ<any>|nil)->(),useCallback:<T>(callback:T,deps:Array__DARKLUA_TYPE_cQ<any>|nil)->T,useMemo:<T...>(nextCreate:()->T...,deps:Array__DARKLUA_TYPE_cQ<any>|nil)->T...,useImperativeHandle:<T>(ref:{current:T|nil}|((inst:T|nil)->any)|nil,create:()->T,deps:Array__DARKLUA_TYPE_cQ<any>|nil)->(),useDebugValue:<T>(value:T,formatterFn:((value:T)->any)?)->(),useDeferredValue:(<T>(value:T)->T)?,useTransition:(()->((()->())->(),boolean))?,useMutableSource:<Source,Snapshot>(source:MutableSource__DARKLUA_TYPE_cX<Source__DARKLUA_TYPE_cR>,getSnapshot:MutableSourceGetSnapshotFn__DARKLUA_TYPE_cZ<Source__DARKLUA_TYPE_cR,Snapshot>,subscribe:MutableSourceSubscribeFn__DARKLUA_TYPE_cY<Source__DARKLUA_TYPE_cR,Snapshot>)->Snapshot,useOpaqueIdentifier:()->any,unstable_isNewReconciler:boolean?,}type Dispatcher__DARKLUA_TYPE_c2=Dispatcher__DARKLUA_TYPE_c1 type Error__DARKLUA_TYPE_c3=LuauPolyfill.Error type Object__DARKLUA_TYPE_c4=LuauPolyfill.Object type Array__DARKLUA_TYPE_c5<T> =LuauPolyfill.Array<T>type Iterator__DARKLUA_TYPE_c6<T> ={next:()->{value:T,key:any,done:boolean,},}type Object__DARKLUA_TYPE_c7={[string]:any}type Function__DARKLUA_TYPE_c8=(...any)->...any type Source__DARKLUA_TYPE_c9=Source__DARKLUA_TYPE_cK type React_StatelessFunctionalComponent__DARKLUA_TYPE_da<P> =React_StatelessFunctionalComponent__DARKLUA_TYPE_bX<P>type React_ComponentType__DARKLUA_TYPE_db<P> =React_ComponentType__DARKLUA_TYPE_bY<P>type ReactComponent__DARKLUA_TYPE_dc<P> =React_StatelessFunctionalComponent__DARKLUA_TYPE_da<P>|React_ComponentType__DARKLUA_TYPE_db<P>type Object__DARKLUA_TYPE_dd=LuauPolyfill.Object type Function__DARKLUA_TYPE_de=(...any)->...any type Function__DARKLUA_TYPE_df=(...any)->...any type LazyComponent__DARKLUA_TYPE_dg<T,P> ={[
































































































































































































































































































"$$typeof"]:number,_payload:P,_init:(payload:P)->T,}type ReactContext__DARKLUA_TYPE_dh<T> =ReactContext__DARKLUA_TYPE_ck<T>type ReactProviderType__DARKLUA_TYPE_di<T> =ReactProviderType__DARKLUA_TYPE_ci<T>type Object__DARKLUA_TYPE_dj=LuauPolyfill.Object type ReactEmpty__DARKLUA_TYPE_dk=ReactEmpty__DARKLUA_TYPE_ce type ReactFragment__DARKLUA_TYPE_dl=ReactFragment__DARKLUA_TYPE_cf type ReactNodeList__DARKLUA_TYPE_dm=ReactNodeList__DARKLUA_TYPE_cg type ReactProviderType__DARKLUA_TYPE_dn<T> =ReactProviderType__DARKLUA_TYPE_ci<T>type ReactConsumer__DARKLUA_TYPE_do<T> =ReactConsumer__DARKLUA_TYPE_cj<T>type ReactProvider__DARKLUA_TYPE_dp<T> =ReactProvider__DARKLUA_TYPE_ch<T>type ReactContext__DARKLUA_TYPE_dq<T> =ReactContext__DARKLUA_TYPE_ck<T>type ReactPortal__DARKLUA_TYPE_dr=ReactPortal__DARKLUA_TYPE_cl type RefObject__DARKLUA_TYPE_ds=RefObject__DARKLUA_TYPE_cm type EventPriority__DARKLUA_TYPE_dt=EventPriority__DARKLUA_TYPE_cn type ReactFundamentalComponentInstance__DARKLUA_TYPE_du<C,H> =ReactFundamentalComponentInstance__DARKLUA_TYPE_co<C,H>type ReactFundamentalImpl__DARKLUA_TYPE_dv<C,H> =ReactFundamentalImpl__DARKLUA_TYPE_cp<C,H>type ReactFundamentalComponent__DARKLUA_TYPE_dw<C,H> =ReactFundamentalComponent__DARKLUA_TYPE_cq<C,H>type ReactScope__DARKLUA_TYPE_dx=ReactScope__DARKLUA_TYPE_cr type ReactScopeQuery__DARKLUA_TYPE_dy=ReactScopeQuery__DARKLUA_TYPE_cs type ReactScopeInstance__DARKLUA_TYPE_dz=ReactScopeInstance__DARKLUA_TYPE_ct type ReactBinding__DARKLUA_TYPE_dA<T> =ReactBinding__DARKLUA_TYPE_cw<T>type ReactBindingUpdater__DARKLUA_TYPE_dB<T> =ReactBindingUpdater__DARKLUA_TYPE_cx<T>type MutableSourceVersion__DARKLUA_TYPE_dC=MutableSourceVersion__DARKLUA_TYPE_cy type MutableSourceGetSnapshotFn__DARKLUA_TYPE_dD<Source,Snapshot> =MutableSourceGetSnapshotFn__DARKLUA_TYPE_cz<Source__DARKLUA_TYPE_dJ,Snapshot>type MutableSourceSubscribeFn__DARKLUA_TYPE_dE<Source,Snapshot> =MutableSourceSubscribeFn__DARKLUA_TYPE_cA<Source__DARKLUA_TYPE_dJ,Snapshot>type MutableSourceGetVersionFn__DARKLUA_TYPE_dF=MutableSourceGetVersionFn__DARKLUA_TYPE_cB type MutableSource__DARKLUA_TYPE_dG<Source> =MutableSource__DARKLUA_TYPE_cC<Source__DARKLUA_TYPE_dJ>type Wakeable__DARKLUA_TYPE_dH=Wakeable__DARKLUA_TYPE_cD type Thenable__DARKLUA_TYPE_dI<R> =Thenable__DARKLUA_TYPE_cF<R>type Source__DARKLUA_TYPE_dJ=Source__DARKLUA_TYPE_cK type ReactElement__DARKLUA_TYPE_dK<P=Object__DARKLUA_TYPE_dj,T=any> =ReactElement__DARKLUA_TYPE_cM<P,T>type OpaqueIDType__DARKLUA_TYPE_dL=OpaqueIDType__DARKLUA_TYPE_cP type Dispatcher__DARKLUA_TYPE_dM=Dispatcher__DARKLUA_TYPE_c2 type React_Ref__DARKLUA_TYPE_dN<ElementType> =React_Ref__DARKLUA_TYPE_b1<ElementType>type React_Context__DARKLUA_TYPE_dO<T> =React_Context__DARKLUA_TYPE_b2<T>type React_AbstractComponent__DARKLUA_TYPE_dP<Config,Instance> =React_AbstractComponent__DARKLUA_TYPE_bR<Config,Instance>type React_ForwardRefComponent__DARKLUA_TYPE_dQ<Config,Instance> =React_ForwardRefComponent__DARKLUA_TYPE_bT<Config,Instance>type React_MemoComponent__DARKLUA_TYPE_dR<Config,T> =React_MemoComponent__DARKLUA_TYPE_bU<Config,T>type React_ComponentType__DARKLUA_TYPE_dS<Config> =React_ComponentType__DARKLUA_TYPE_bY<Config>type React_PureComponent__DARKLUA_TYPE_dT<Props,State=nil> =React_PureComponent__DARKLUA_TYPE_bQ<Props,State>type React_Component__DARKLUA_TYPE_dU<Props,State> =React_Component__DARKLUA_TYPE_bW<Props,State>type React_ElementProps__DARKLUA_TYPE_dV<ElementType> =React_ElementProps__DARKLUA_TYPE_b_<ElementType>type React_StatelessFunctionalComponent__DARKLUA_TYPE_dW<Props> =React_StatelessFunctionalComponent__DARKLUA_TYPE_bX<Props>type React_Node__DARKLUA_TYPE_dX=React_Node__DARKLUA_TYPE_bO type React_Element__DARKLUA_TYPE_dY<ElementType> =React_Element__DARKLUA_TYPE_bP<ElementType>type React_ElementType__DARKLUA_TYPE_dZ=React_ElementType__DARKLUA_TYPE_bZ type React_ElementConfig__DARKLUA_TYPE_d_<C> =React_ElementConfig__DARKLUA_TYPE_bV<C>type React_ElementRef__DARKLUA_TYPE_d0<C> =React_ElementRef__DARKLUA_TYPE_b0<C>type React_Portal__DARKLUA_TYPE_d1=React_Portal__DARKLUA_TYPE_b3 type React_Key__DARKLUA_TYPE_d2=React_Key__DARKLUA_TYPE_b4 type MutableSourceGetVersionFn__DARKLUA_TYPE_d3=ReactTypes.MutableSourceGetVersionFn type MutableSource__DARKLUA_TYPE_d4<T> =ReactTypes.MutableSource<T>type Object__DARKLUA_TYPE_d5=LuauPolyfill.Object type React_Component__DARKLUA_TYPE_d6<Props,State=nil> =SharedModule.React_Component<Props,State>type React_BaseComponent__DARKLUA_TYPE_d7=React_Component__DARKLUA_TYPE_d6<any,any>&{extend:(self:React_BaseComponent__DARKLUA_TYPE_d7,name:string)->React_Component__DARKLUA_TYPE_d6<any,any>,}type Wakeable__DARKLUA_TYPE_d8=ReactTypes.Wakeable type Thenable__DARKLUA_TYPE_d9<R> =ReactTypes.Thenable<R>type UninitializedPayload__DARKLUA_TYPE_ea<T> ={_status:number,_result:()->Thenable__DARKLUA_TYPE_d9<{default:T,[string]:any}>,}type PendingPayload__DARKLUA_TYPE_eb={_status:number,_result:Wakeable__DARKLUA_TYPE_d8,}type ResolvedPayload__DARKLUA_TYPE_ec<T> ={_status:number,_result:{default:T,[string]:any},}type RejectedPayload__DARKLUA_TYPE_ed={_status:number,_result:any,}type Payload__DARKLUA_TYPE_ee<T> =UninitializedPayload__DARKLUA_TYPE_ea<T>|PendingPayload__DARKLUA_TYPE_eb|ResolvedPayload__DARKLUA_TYPE_ec<T>|RejectedPayload__DARKLUA_TYPE_ed type LazyComponent__DARKLUA_TYPE_ef<T,P> ={[






















































































































































































































































"$$typeof"]:number,_payload:P,_init:(payload:P)->T,}type Object__DARKLUA_TYPE_eg=LuauPolyfill.Object type React_StatelessFunctionalComponent__DARKLUA_TYPE_eh<P> =ReactTypes.React_StatelessFunctionalComponent<P>type React_ComponentType__DARKLUA_TYPE_ei<P> =ReactTypes.React_ComponentType<P>type React_AbstractComponent__DARKLUA_TYPE_ej<P,T> =ReactTypes.React_AbstractComponent<P,T>type ReactProviderType__DARKLUA_TYPE_ek<T> =ReactTypes.ReactProviderType<T>type React_ElementProps__DARKLUA_TYPE_el<ElementType> =ReactTypes.React_ElementProps<ElementType>type React_Node__DARKLUA_TYPE_em=ReactTypes.React_Node type ReactElement__DARKLUA_TYPE_en<P=Object__DARKLUA_TYPE_eg,T=any> =ReactTypes.ReactElement<P,T>type ReactContext__DARKLUA_TYPE_eo<T> =ReactTypes.ReactContext<T>type Source__DARKLUA_TYPE_ep=ReactTypes.Source type LazyComponent__DARKLUA_TYPE_eq<T,P> =LazyComponent__DARKLUA_TYPE_ef<T,P>type ReactNodeList__DARKLUA_TYPE_er=ReactTypes.ReactNodeList type React_Node__DARKLUA_TYPE_es=ReactTypes.React_Node type ReactElement__DARKLUA_TYPE_et<P,T> =ReactTypes.ReactElement<P,T>type Array__DARKLUA_TYPE_eu<T> =LuauPolyfill.Array<T>type Object__DARKLUA_TYPE_ev=LuauPolyfill.Object type MapFunc__DARKLUA_TYPE_ew=(child:React_Node__DARKLUA_TYPE_es?,index:number)->ReactNodeList__DARKLUA_TYPE_er?type ForEachFunc__DARKLUA_TYPE_ex=(child:React_Node__DARKLUA_TYPE_es?,index:number)->()type Array__DARKLUA_TYPE_ey<T> =LuauPolyfill.Array<T>type Object__DARKLUA_TYPE_ez=LuauPolyfill.Object type Function__DARKLUA_TYPE_eA=(...any)->...any type React_StatelessFunctionalComponent__DARKLUA_TYPE_eB<P> =ReactTypes.React_StatelessFunctionalComponent<P>type React_ComponentType__DARKLUA_TYPE_eC<P> =ReactTypes.React_ComponentType<P>type React_Element__DARKLUA_TYPE_eD<ElementType> =ReactTypes.React_Element<ElementType>type React_ElementProps__DARKLUA_TYPE_eE<ElementType> =ReactTypes.React_ElementProps<ElementType>type ReactElement__DARKLUA_TYPE_eF<P,T> =ReactTypes.ReactElement<P,T>type React_Node__DARKLUA_TYPE_eG=ReactTypes.React_Node type Source__DARKLUA_TYPE_eH=ReactTypes.Source type Function__DARKLUA_TYPE_eI=(...any)->...any type Connection__DARKLUA_TYPE_eJ={callback:Function__DARKLUA_TYPE_eI,disconnected:boolean}type Map__DARKLUA_TYPE_eK<K,V> ={[K]:V}type Binding__DARKLUA_TYPE_eL<T> =ReactTypes.ReactBinding<T>type BindingUpdater__DARKLUA_TYPE_eM<T> =ReactTypes.ReactBindingUpdater<T>type BindingInternal__DARKLUA_TYPE_eN<T> ={[




























































































































































































"$$typeof"]:typeof(ReactSymbols.REACT_BINDING_TYPE),value:T,getValue:(BindingInternal__DARKLUA_TYPE_eN<T>)->T,map:<U>(BindingInternal__DARKLUA_TYPE_eN<T>,(T)->U)->any,update:(T)->(),subscribe:((T)->())->(()->()),}type RefObject__DARKLUA_TYPE_eO=ReactTypes.RefObject type React_Node__DARKLUA_TYPE_eP=ReactTypes.React_Node type React_Ref__DARKLUA_TYPE_eQ<ElementType> =ReactTypes.React_Ref<ElementType>type React_ForwardRefComponent__DARKLUA_TYPE_eR<Config,Instance> =ReactTypes.React_ForwardRefComponent<Config,Instance>type Array__DARKLUA_TYPE_eS<T> =LuauPolyfill.Array<T>type Dispatcher__DARKLUA_TYPE_eT=ReactTypes.Dispatcher type MutableSource__DARKLUA_TYPE_eU<T> =ReactTypes.MutableSource<T>type MutableSourceGetSnapshotFn__DARKLUA_TYPE_eV<Source,Snapshot> =ReactTypes.MutableSourceGetSnapshotFn<Source,Snapshot>type MutableSourceSubscribeFn__DARKLUA_TYPE_eW<Source,Snapshot> =ReactTypes.MutableSourceSubscribeFn<Source,Snapshot>type ReactProviderType__DARKLUA_TYPE_eX<T> =ReactTypes.ReactProviderType<T>type ReactContext__DARKLUA_TYPE_eY<T> =ReactTypes.ReactContext<T>type OpaqueIDType__DARKLUA_TYPE_eZ=ReactFiberHostConfig.OpaqueIDType type BasicStateAction__DARKLUA_TYPE_e_<S> =((S)->S)|S type Dispatch__DARKLUA_TYPE_e0<A> =(A)->()type React_StatelessFunctionalComponent__DARKLUA_TYPE_e1<Props> =Shared.React_StatelessFunctionalComponent<Props>type React_ElementType__DARKLUA_TYPE_e2=Shared.React_ElementType type React_Component__DARKLUA_TYPE_e3<Props,State> =Shared.React_Component<Props,State>type React_ComponentType__DARKLUA_TYPE_e4<Props> =Shared.React_ComponentType<Props>type React_MemoComponent__DARKLUA_TYPE_e5<Config,T> =Shared.React_MemoComponent<Config,T>type React_AbstractComponent__DARKLUA_TYPE_e6<Config,Instance> =Shared.React_AbstractComponent<Config,Instance>type ReactContext__DARKLUA_TYPE_e7<T> =Shared.ReactContext<T>type ReactProviderType__DARKLUA_TYPE_e8<T> =Shared.ReactProviderType<T>type Object__DARKLUA_TYPE_e9=LuauPolyfill.Object type LazyComponent__DARKLUA_TYPE_fa<T,P> =LazyComponent__DARKLUA_TYPE_ef<T,P>type React_StatelessFunctionalComponent__DARKLUA_TYPE_fb<P> =ReactTypes.React_StatelessFunctionalComponent<P>type React_ComponentType__DARKLUA_TYPE_fc<P> =ReactTypes.React_ComponentType<P>type React_AbstractComponent__DARKLUA_TYPE_fd<P,T> =ReactTypes.React_AbstractComponent<P,T>type React_ElementProps__DARKLUA_TYPE_fe<ElementType> =ReactTypes.React_ElementProps<ElementType>type ReactElement__DARKLUA_TYPE_ff<P=Object__DARKLUA_TYPE_e9,T=any> =ReactTypes.ReactElement<P,T>type ReactContext__DARKLUA_TYPE_fg<T> =ReactTypes.ReactContext<T>type ReactProviderType__DARKLUA_TYPE_fh<T> =ReactTypes.ReactProviderType<T>type React_Node__DARKLUA_TYPE_fi=ReactTypes.React_Node type PureComponent__DARKLUA_TYPE_fj<Props,State=nil> =ReactTypes.React_PureComponent<Props,State>type ReactBinding__DARKLUA_TYPE_fk<T> =ReactTypes.ReactBinding<T>type ReactBindingUpdater__DARKLUA_TYPE_fl<T> =ReactTypes.ReactBindingUpdater<T>type createElementFn__DARKLUA_TYPE_fm=<P,T>(type_:React_StatelessFunctionalComponent__DARKLUA_TYPE_fb<P>|React_ComponentType__DARKLUA_TYPE_fc<P>|React_AbstractComponent__DARKLUA_TYPE_fd<P,T>|string|ReactContext__DARKLUA_TYPE_fg<any>|ReactProviderType__DARKLUA_TYPE_fh<any>|LazyComponent__DARKLUA_TYPE_fa<T,P>,props:P?,...(React_Node__DARKLUA_TYPE_fi|((...any)->React_Node__DARKLUA_TYPE_fi)))->ReactElement__DARKLUA_TYPE_ff<P,T>type cloneElementFn__DARKLUA_TYPE_fn=<P,T>(element:ReactElement__DARKLUA_TYPE_ff<P,T>,config:P?,...React_Node__DARKLUA_TYPE_fi)->ReactElement__DARKLUA_TYPE_ff<P,T>local a={cache={}::any}do do local function __modImpl()return function(b)return typeof(b)=="number"and b==b and b~=math.huge and b~=-math.huge end end function a.a():typeof(__modImpl())local b=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b end return b.c end end do local function __modImpl()return function(b)return type(b)=="number"and b~=math.huge and b==math.floor(b)end end function a.b():typeof(__modImpl())local b=a.cache.b if not b then b={c=__modImpl()}a.cache.b=b end return b.c end end do local function __modImpl()return function(b)return type(b)=="number"and b~=b end end function a.c():typeof(__modImpl())local b=a.cache.c if not b then b={c=__modImpl()}a.cache.c=b end return b.c end end do local function __modImpl()return 9007199254740991 end function a.d():typeof(__modImpl())local b=a.cache.d if not b then b={c=__modImpl()}a.cache.d=b end return b.c end end do local function __modImpl()local b=a.b()local c=a.d()return function(d)return b(d)and math.abs(d)<=c end end function a.e():typeof(__modImpl())local b=a.cache.e if not b then b={c=__modImpl()}a.cache.e=b end return b.c end end do local function __modImpl()return-9007199254740991 end function a.f():typeof(__modImpl())local b=a.cache.f if not b then b={c=__modImpl()}a.cache.f=b end return b.c end end do local function __modImpl()return function(b:string|number,c:number?):string|nil local d=b if typeof(b)=="string"then local e=0/0 d=tonumber(b)or e end if typeof(d)~="number"then return"nan"end if c~=nil then if typeof(c)~="number"then error"TypeError: fractionDigits must be a number between 0 and 100"end if c<0 or c>100 then error"RangeError: fractionDigits must be between 0 and 100"end end local e if c==nil then e="%e"else e="%."..tostring(c).."e"end local f=string.format(e,d):gsub("%+0","+"):gsub("%-0","-"):gsub("0*e","e")return f end end function a.g():typeof(__modImpl())local b=a.cache.g if not b then b={c=__modImpl()}a.cache.g=b end return b.c end end do local function __modImpl()return{isFinite=a.a(),isInteger=a.b(),isNaN=a.c(),isSafeInteger=a.e(),MAX_SAFE_INTEGER=a.d(),MIN_SAFE_INTEGER=a.f(),NaN=0/0,toExponential=a.g(),}end function a.h():typeof(__modImpl())local b=a.cache.h if not b then b={c=__modImpl()}a.cache.h=b end return b.c end end do local function __modImpl()return a.h()end function a.i():typeof(__modImpl())local b=a.cache.i if not b then b={c=__modImpl()}a.cache.i=b end return b.c end end do local function __modImpl()local b=a.i()return function(c:any):boolean return not not c and c~=0 and c~=""and not b.isNaN(c)end end function a.j():typeof(__modImpl())local b=a.cache.j if not b then b={c=__modImpl()}a.cache.j=b end return b.c end end do local function __modImpl()return{toJSBoolean=a.j(),}end function a.k():typeof(__modImpl())local b=a.cache.k if not b then b={c=__modImpl()}a.cache.k=b end return b.c end end do local function __modImpl()return a.k()end function a.l():typeof(__modImpl())local b=a.cache.l if not b then b={c=__modImpl()}a.cache.l=b end return b.c end end do local function __modImpl()return{}end function a.m():typeof(__modImpl())local b=a.cache.m if not b then b={c=__modImpl()}a.cache.m=b end return b.c end end do local function __modImpl()return a.m()end function a.n():typeof(__modImpl())local b=a.cache.n if not b then b={c=__modImpl()}a.cache.n=b end return b.c end end do local function __modImpl()return function(b:any):boolean if typeof(b)~="table"then return false end if next(b)==nil then return true end local c=#b if c==0 then return false end local d=0 local e=0 for f in pairs(b)do if typeof(f)~="number"then return false end if f%1~=0 or f<1 then return false end d+=1 e+=f end return e==(d*(d+1)/2)end end function a.o():typeof(__modImpl())local b=a.cache.o if not b then b={c=__modImpl()}a.cache.o=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local c=a.o()a.n()local d=[[Array.concat(...) only works with array-like tables but it received an object-like table.
You can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`]]local function concat<T,S>(e:Array__DARKLUA_TYPE_m<T>|T,...:Array__DARKLUA_TYPE_m<S>|S):Array__DARKLUA_TYPE_m<T>&Array__DARKLUA_TYPE_m<S>local f local g=0 if c(e)then f=table.clone(e::Array__DARKLUA_TYPE_m<T>)g=#(e::Array__DARKLUA_TYPE_m<T>)else g+=1 f={}f[g]=e::T end for h=1,select("#",...)do local i=select(h,...)local j=typeof(i)if i==nil then elseif j=="table"then if b then if not c(i)then error(d)end end for k=1,#i do g+=1 f[g]=i[k]end else g+=1 f[g]=i end end return(f::any)::Array__DARKLUA_TYPE_m<T>&Array__DARKLUA_TYPE_m<S>end return concat end function a.p():typeof(__modImpl())local b=a.cache.p if not b then b={c=__modImpl()}a.cache.p=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ a.n()return function<T,U>(c:Array__DARKLUA_TYPE_n<T>,d:callbackFn__DARKLUA_TYPE_p<T>|callbackFnWithThisArg__DARKLUA_TYPE_q<T,U>,e:U?):boolean if b then if typeof(c)~="table"then error(string.format("Array.every called on %s",typeof(c)))end if typeof(d)~="function"then error"callback is not a function"end end local f=#c local g=1 while g<=f do local h=c[g]local i if h~=nil then if e~=nil then i=(d::callbackFnWithThisArg__DARKLUA_TYPE_q<T,U>)(e,h,g,c)else i=(d::callbackFn__DARKLUA_TYPE_p<T>)(h,g,c)end if not i then return false end end g+=1 end return true end end function a.q():typeof(__modImpl())local b=a.cache.q if not b then b={c=__modImpl()}a.cache.q=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ a.n()return function<T,U>(c:Array__DARKLUA_TYPE_r<T>,d:callbackFn__DARKLUA_TYPE_t<T>|callbackFnWithThisArg__DARKLUA_TYPE_u<T,U>,e:U?):Array__DARKLUA_TYPE_r<T>if b then if typeof(c)~="table"then error(string.format("Array.filter called on %s",typeof(c)))end if typeof(d)~="function"then error"callback is not a function"end end local f=#c local g={}local h=1 if e==nil then for i=1,f do local j=c[i]if j~=nil then if(d::callbackFn__DARKLUA_TYPE_t<T>)(j,i,c)then g[h]=j h+=1 end end end else for i=1,f do local j=c[i]if j~=nil then if(d::callbackFnWithThisArg__DARKLUA_TYPE_u<T,U>)(e,j,i,c)then g[h]=j h+=1 end end end end return g end end function a.r():typeof(__modImpl())local b=a.cache.r if not b then b={c=__modImpl()}a.cache.r=b end return b.c end end do local function __modImpl()a.n()return function<T>(b:Array__DARKLUA_TYPE_v<T>,c:PredicateFunction__DARKLUA_TYPE_w<T>):T|nil for d=1,#b do local e=b[d]if c(e,d,b)then return e end end return nil end end function a.s():typeof(__modImpl())local b=a.cache.s if not b then b={c=__modImpl()}a.cache.s=b end return b.c end end do local function __modImpl()a.n()return function<T>(b:Array__DARKLUA_TYPE_x<T>,c:PredicateFunction__DARKLUA_TYPE_y<T>):number for d=1,#b do local e=b[d]if c(e,d,b)then return d end end return-1 end end function a.t():typeof(__modImpl())local b=a.cache.t if not b then b={c=__modImpl()}a.cache.t=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local c=a.o()a.n()local function flat<T>(d:Array__DARKLUA_TYPE_z<T>,e:number?):Array__DARKLUA_TYPE_z<T>if b then if typeof(d)~="table"then error(string.format("Array.flat called on %s",typeof(d)))end if e~=nil and typeof(e)~="number"then error"depth is not a number or nil"end end local f=e or 1 local g={}for h,i in d do if c(i)then local j=(i::any)::Array__DARKLUA_TYPE_z<T>local k:Array__DARKLUA_TYPE_z<T> =if f>1 then flat(j,f-1)else j for l,m in k do table.insert(g,m)end else table.insert(g,i)end end return g end return flat end function a.u():typeof(__modImpl())local b=a.cache.u if not b then b={c=__modImpl()}a.cache.u=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ a.n()return function<T,U,V>(c:Array__DARKLUA_TYPE_A<T>,d:callbackFn__DARKLUA_TYPE_C<T,U>|callbackFnWithThisArg__DARKLUA_TYPE_D<T,U,V>,e:V?):Array__DARKLUA_TYPE_A<U>if b then if typeof(c)~="table"then error(string.format("Array.map called on %s",typeof(c)))end if typeof(d)~="function"then error"callback is not a function"end end local f=#c local g={}local h=1 while h<=f do local i=c[h]if i~=nil then local j if e~=nil then j=(d::callbackFnWithThisArg__DARKLUA_TYPE_D<T,U,V>)(e,i,h,c)else j=(d::callbackFn__DARKLUA_TYPE_C<T,U>)(i,h,c)end g[h]=j end h+=1 end return g end end function a.v():typeof(__modImpl())local b=a.cache.v if not b then b={c=__modImpl()}a.cache.v=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local c=a.u()local d=a.v()a.n()local function flatMap<T,U,V>(e:Array__DARKLUA_TYPE_E<T>,f:callbackFn__DARKLUA_TYPE_F<T,U>|callbackFnWithThisArg__DARKLUA_TYPE_G<T,U,V>,g:V?):Array__DARKLUA_TYPE_E<U>if b then if typeof(e)~="table"then error(string.format("Array.flatMap called on %s",typeof(e)))end if typeof(f)~="function"then error"callback is not a function"end end return c(d(e,f,g))end return flatMap end function a.w():typeof(__modImpl())local b=a.cache.w if not b then b={c=__modImpl()}a.cache.w=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ a.n()return function<T,U>(c:Array__DARKLUA_TYPE_H<T>,d:callbackFn__DARKLUA_TYPE_J<T>|callbackFnWithThisArg__DARKLUA_TYPE_K<T,U>,e:U?):()if b then if typeof(c)~="table"then error(string.format("Array.forEach called on %s",typeof(c)))end if typeof(d)~="function"then error"callback is not a function"end end local f=#c local g=1 while g<=f do local h=c[g]if e~=nil then(d::callbackFnWithThisArg__DARKLUA_TYPE_K<T,U>)(e,h,g,c)else(d::callbackFn__DARKLUA_TYPE_J<T>)(h,g,c)end if#c<f then f=#c end g+=1 end end end function a.x():typeof(__modImpl())local b=a.cache.x if not b then b={c=__modImpl()}a.cache.x=b end return b.c end end do local function __modImpl()local b=game:GetService"HttpService"local c=a.o()a.n()local d=10 local e=2 local f local g local h local i local j local function inspect(k,l:InspectOptions__DARKLUA_TYPE_M?):string local m:InspectOptions__DARKLUA_TYPE_M=l or{depth=e}local n=m.depth or e m.depth=if n>=0 then n else e return f(k,{},m::FormatOptions__DARKLUA_TYPE_N)end local function isIndexKey(k,l)return type(k)=="number"and k<=l and 1<=k and math.floor(k)==k end local function getTableLength(k)local l=1 local m=rawget(k,l)while m~=nil do l+=1 m=rawget(k,l)end return l-1 end local function sortKeysForPrinting(k:any,l)local m=type(k)local n=type(l)if m==n and(m=="number"or m=="string")then return k<l end return m<n end local function rawpairs(k)return next,k,nil end local function getFragmentedKeys(k)local l={}local m=0 local n=getTableLength(k)for o,p in rawpairs(k)do if not isIndexKey(o,n)then m=m+1 l[m]=o end end table.sort(l,sortKeysForPrinting)return l,m,n end function f(k,l,m:FormatOptions__DARKLUA_TYPE_N)local n=typeof(k)if n=="string"then return b:JSONEncode(k)elseif n=="number"then if k~=k then return"NaN"elseif k==math.huge then return"Infinity"elseif k==-math.huge then return"-Infinity"else return tostring(k)end elseif n=="function"then local o="[function"local p=debug.info(k::(any)->any,"n")if p~=nil and p~=""then o..=" "..p end return o.."]"elseif n=="table"then return g(k,l,m)else return tostring(k)end end function g(k,l,m:FormatOptions__DARKLUA_TYPE_N)if table.find(l,k)~=nil then return"[Circular]"end local n={unpack(l)}table.insert(n,k)if typeof(k.toJSON)=="function"then local o=k:toJSON(k)if o~=k then if typeof(o)=="string"then return o else return f(o,n,m)end end elseif c(k)then return h(k,n,m)end return i(k,n,m)end function i(k,l,m:FormatOptions__DARKLUA_TYPE_N)local n=""local o=getmetatable(k)if o and rawget(o,"__tostring")then return tostring(k)end local p,q,r=getFragmentedKeys(k)if r==0 and q==0 then n..="{}"return n end if#l>m.depth then n..="["..j(k).."]"return n end local s={}for t=1,r do local u=f(k[t],l,m)table.insert(s,u)end for t=1,q do local u=p[t]local v=f(k[u],l,m)table.insert(s,u..": "..v)end n..="{ "..table.concat(s,", ").." }"return n end function h(k:Array__DARKLUA_TYPE_L<any>,l:Array__DARKLUA_TYPE_L<any>,m:FormatOptions__DARKLUA_TYPE_N):string local n=#k if n==0 then return"[]"end if#l>m.depth then return"[Array]"end local o=math.min(d,n)local p=n-o local q={}for r=1,o do q[r]=(f(k[r],l,m))end if p==1 then table.insert(q,"... 1 more item")elseif p>1 then table.insert(q,("... %s more items"):format(tostring(p)))end return"["..table.concat(q,", ").."]"end function j(k):string return"Object"end return inspect end function a.y():typeof(__modImpl())local b=a.cache.y if not b then b={c=__modImpl()}a.cache.y=b end return b.c end end do local function __modImpl()a.n()return function<T,U>(b:string,c:(mapFn__DARKLUA_TYPE_Q<T,U>|mapFnWithThisArg__DARKLUA_TYPE_R<T,U>)?,d:Object__DARKLUA_TYPE_O?):Array__DARKLUA_TYPE_P<U>|Array__DARKLUA_TYPE_P<T>|Array__DARKLUA_TYPE_P<string>local e={}local f=#b e=table.create(f)if c then for g=1,f do if d~=nil then(e::Array__DARKLUA_TYPE_P<U>)[g]=(c::mapFnWithThisArg__DARKLUA_TYPE_R<T,U>)(d,string.sub(b,g,g)::any,g)else(e::Array__DARKLUA_TYPE_P<U>)[g]=(c::mapFn__DARKLUA_TYPE_Q<T,U>)(string.sub(b,g,g)::any,g)end end else for g=1,f do(e::Array__DARKLUA_TYPE_P<string>)[g]=string.sub(b,g,g)end end return e end end function a.z():typeof(__modImpl())local b=a.cache.z if not b then b={c=__modImpl()}a.cache.z=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local c=a.y()local d=a.o()local e=a.x()local f=a.z()a.n()local g:Set__DARKLUA_TYPE_W<any>&Set_Statics__DARKLUA_TYPE_X=({__iter=function(g)return next,g._array end,__tostring=function(g)local h="Set "if#g._array>0 then h..="("..tostring(#g._array)..") "end h..=c(g._array)return h end,}::any)::Set__DARKLUA_TYPE_W<any>&Set_Statics__DARKLUA_TYPE_X;(g::any).__index=g function g.new<T>(h:Array__DARKLUA_TYPE_S<T>|Set__DARKLUA_TYPE_W<T>|string|nil):Set__DARKLUA_TYPE_W<T>local i local j={}if h~=nil then local k if typeof(h)=="table"then if d(h)then k=table.clone(h)else local l=getmetatable(h::any)if l and rawget(l,"__iter")then k=h::Set__DARKLUA_TYPE_W<T>elseif b then error"cannot create array from an object-like table"end end elseif typeof(h)=="string"then k=f(h::string)::Array__DARKLUA_TYPE_S<string>else error(("cannot create array from value of type `%s`"):format(typeof(h)))end if k then i=table.create(#k)for l,m in k do if not j[m]then j[m]=true table.insert(i,m)end end else i={}end else i={}end return(setmetatable({size=#i,_map=j,_array=i,},g)::any)::Set__DARKLUA_TYPE_W<T>end function g.add(h,i)if not h._map[i]then h.size=h.size::number+1 h._map[i]=true table.insert(h._array,i)end return h end function g.clear(h)h.size=0 table.clear(h._map)table.clear(h._array)end function g.delete(h,i):boolean if not h._map[i]then return false end h.size=h.size::number-1 h._map[i]=nil local j=table.find(h._array,i)if j then table.remove(h._array,j)end return true end function g.forEach(h,i:setCallbackFn__DARKLUA_TYPE_U<any>|setCallbackFnWithThisArg__DARKLUA_TYPE_V<any>,j:Object__DARKLUA_TYPE_T?):()if typeof(i)~="function"then error"callback is not a function"end e(h._array,function(k)if j~=nil then(i::setCallbackFnWithThisArg__DARKLUA_TYPE_V<any>)(j,k,k,h)else(i::setCallbackFn__DARKLUA_TYPE_U<any>)(k,k,h)end end)end function g.has(h,i):boolean return h._map[i]~=nil end function g.ipairs(h)if b then warn(debug.traceback("`for _,_ in mySet:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in mySet do` instead\n",2))end return ipairs(h._array)end return g end function a.A():typeof(__modImpl())local b=a.cache.A if not b then b={c=__modImpl()}a.cache.A=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local function instanceof(c:any,d:any):boolean if b then assert(typeof(d)=="table","Received a non-table as the second argument for instanceof")end if typeof(c)~="table"then return false end local e,f=pcall(function()return d.new~=nil and c.new==d.new end)if e and f then return true end local g={[c]=true}while c and typeof(c)=="table"do c=getmetatable(c)if typeof(c)=="table"then c=c.__index if c==d then return true end end if typeof(c)=="table"then if g[c]then return false end g[c]=true end end return false end return instanceof end function a.B():typeof(__modImpl())local b=a.cache.B if not b then b={c=__modImpl()}a.cache.B=b end return b.c end end do local function __modImpl()local b=a.B()return b end function a.C():typeof(__modImpl())local b=a.cache.C if not b then b={c=__modImpl()}a.cache.C=b end return b.c end end do local function __modImpl()return a.C()end function a.D():typeof(__modImpl())local b=a.cache.D if not b then b={c=__modImpl()}a.cache.D=b end return b.c end end do local function __modImpl()local b=_G.__DEV__ local c=a.x()local d=a.v()local e=a.o()local f=a.D()a.n()local g:Map__DARKLUA_TYPE_3<any,any>&Map_Statics__DARKLUA_TYPE_4=({}::any)::Map__DARKLUA_TYPE_3<any,any>&Map_Statics__DARKLUA_TYPE_4 function g.new<K,V>(h:(Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>|Map__DARKLUA_TYPE_3<K,V>)?):Map__DARKLUA_TYPE_3<K,V>local i local j if h==nil then i={}j={}elseif e(h)then if b then if#(h::Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>)>0 and typeof((h::Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>)[1])~="table"then error("Value `"..typeof((h::Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>)[1])..[[` is not an entry object.
 Cannot create Map from {K, V} form, it must be { {K, V}... }]])end end i=table.create(#(h::Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>))j={}for k,l in h::Array__DARKLUA_TYPE_Z<Array__DARKLUA_TYPE_Z<any>>do local m=l[1]if b then if m==nil then error"cannot create Map from a table that isn't an array."end end local n=l[2]if j[m]==nil then table.insert(i,m)end j[m]=n end elseif f(h,g)then i=table.clone((h::Map__DARKLUA_TYPE_3<K,V>)._array)j=table.clone((h::Map__DARKLUA_TYPE_3<K,V>)._map)else error(("`%s` `%s` is not iterable, cannot make Map using it"):format(typeof(h),tostring(h)))end return(setmetatable({size=#i,_map=j,_array=i,},g)::any)::Map__DARKLUA_TYPE_3<K,V>end function g.set(h,i:any,j:any):Map__DARKLUA_TYPE_3<any,any>if h._map[i]==nil then h.size=h.size::number+1 table.insert(h._array,i)end h._map[i]=j return h end function g.get(h,i)return h._map[i]end function g.clear(h)local i:any=table h.size=0 i.clear(h._map)i.clear(h._array)end function g.delete(h,i):boolean if h._map[i]==nil then return false end h.size=h.size::number-1 h._map[i]=nil local j=table.find(h._array,i)if j then table.remove(h._array,j)end return true end function g.forEach(h,i:mapCallbackFn__DARKLUA_TYPE_1<any,any>|mapCallbackFnWithThisArg__DARKLUA_TYPE_2<any,any>,j:Object__DARKLUA_TYPE_Y?):()if b then if typeof(i)~="function"then error"callback is not a function"end end c(h._array,function(k)local l=h._map[k]if j~=nil then(i::mapCallbackFnWithThisArg__DARKLUA_TYPE_2<any,any>)(j,l,k,h)else(i::mapCallbackFn__DARKLUA_TYPE_1<any,any>)(l,k,h)end end)end function g.has(h,i):boolean return h._map[i]~=nil end function g.keys(h)return h._array end function g.values(h)return d(h._array,function(i)return h._map[i]end)end function g.entries(h)return d(h._array,function(i)return{i,h._map[i]}end)end
function g.ipairs(h)
if b then
warn(
debug.traceback(
"`for _,_ in myMap:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in myMap do` instead\n",
2
)
)
end
return ipairs(h:entries())
end

function g.__iter(h:Map__DARKLUA_TYPE_3<any,any>)
return next,h:entries()
end

function g.__index(h:Map__DARKLUA_TYPE_3<any,any>,i)
local j=rawget(g,i)
if j~=nil then
return j
end
if b then
assert(

rawget(h::any,"_map"),
"Map has been corrupted, and is missing private state! Did you accidentally call table.clear() instead of map:clear()?"
)
end

return g.get(h,i)
end

function g.__newindex(h:Map__DARKLUA_TYPE_3<any,any>,i,j)
h:set(i,j)
end

return g end function a.E():typeof(__modImpl())local b=a.cache.E if not b then b={c=__modImpl()}a.cache.E=b end return b.c end end do local function __modImpl()a.n()








return function<T,U>(
b:Set__DARKLUA_TYPE_7<T>,
c:(mapFn__DARKLUA_TYPE_8<T,U>|mapFnWithThisArg__DARKLUA_TYPE_9<T,U>)?,
d:Object__DARKLUA_TYPE_5?

):Array__DARKLUA_TYPE_6<U>|Array__DARKLUA_TYPE_6<T>|Array__DARKLUA_TYPE_6<string>
local e={}

if c then
e={}
for f,g in b::any do
if d~=nil then
(e::Array__DARKLUA_TYPE_6<U>)[f]=(c::mapFnWithThisArg__DARKLUA_TYPE_9<T,U>)(d,g,f)
else
(e::Array__DARKLUA_TYPE_6<U>)[f]=(c::mapFn__DARKLUA_TYPE_8<T,U>)(g,f)
end
end
else
e=table.clone((b::any)._array)
end

return e
end end function a.F():typeof(__modImpl())local b=a.cache.F if not b then b={c=__modImpl()}a.cache.F=b end return b.c end end do local function __modImpl()a.n()








return function<T,U>(
b:Map__DARKLUA_TYPE_ac<any,any>,
c:(mapFn__DARKLUA_TYPE_ad<T,U>|mapFnWithThisArg__DARKLUA_TYPE_ae<T,U>)?,
d:Object__DARKLUA_TYPE_aa?

):Array__DARKLUA_TYPE_ab<U>|Array__DARKLUA_TYPE_ab<T>|Array__DARKLUA_TYPE_ab<string>
local e={}

if c then
e={}
for f,g in b::any do
if d~=nil then
(e::Array__DARKLUA_TYPE_ab<U>)[f]=(c::mapFnWithThisArg__DARKLUA_TYPE_ae<T,U>)(d,g,f)
else
(e::Array__DARKLUA_TYPE_ab<U>)[f]=(c::mapFn__DARKLUA_TYPE_ad<T,U>)(g,f)
end
end
else
e={}
for f,g in b::any do
(e::Array__DARKLUA_TYPE_ab<T>)[f]=g
end
end

return e
end end function a.G():typeof(__modImpl())local b=a.cache.G if not b then b={c=__modImpl()}a.cache.G=b end return b.c end end do local function __modImpl()a.n()








return function<T,U>(
b:Array__DARKLUA_TYPE_ag<T>,
c:(mapFn__DARKLUA_TYPE_ah<T,U>|mapFnWithThisArg__DARKLUA_TYPE_ai<T,U>)?,
d:Object__DARKLUA_TYPE_af?

):Array__DARKLUA_TYPE_ag<U>|Array__DARKLUA_TYPE_ag<T>|Array__DARKLUA_TYPE_ag<string>
local e={}

if c then
local f=#(b::Array__DARKLUA_TYPE_ag<T>)
e=table.create(f)
for g=1,f do
if d~=nil then
(e::Array__DARKLUA_TYPE_ag<U>)[g]=(c::mapFnWithThisArg__DARKLUA_TYPE_ai<T,U>)(d,(b::Array__DARKLUA_TYPE_ag<T>)[g],g)
else
(e::Array__DARKLUA_TYPE_ag<U>)[g]=(c::mapFn__DARKLUA_TYPE_ah<T,U>)((b::Array__DARKLUA_TYPE_ag<T>)[g],g)
end
end
else
e=table.clone(b::Array__DARKLUA_TYPE_ag<T>)
end

return e
end end function a.H():typeof(__modImpl())local b=a.cache.H if not b then b={c=__modImpl()}a.cache.H=b end return b.c end end do local function __modImpl()

local b=a.A()
local c=a.E()
local d=a.o()
local e=a.D()a.n()


local f=a.z()
local g=a.F()
local h=a.G()
local i=a.H()








return function<T,U>(
j:string|Array__DARKLUA_TYPE_aj<T>|Set__DARKLUA_TYPE_al<T>|Map__DARKLUA_TYPE_am<any,any>,
k:(mapFn__DARKLUA_TYPE_an<T,U>|mapFnWithThisArg__DARKLUA_TYPE_ao<T,U>)?,
l:Object__DARKLUA_TYPE_ak?

):Array__DARKLUA_TYPE_aj<U>|Array__DARKLUA_TYPE_aj<T>|Array__DARKLUA_TYPE_aj<string>
if j==nil then
error"cannot create array from a nil value"
end
local m=typeof(j)

local n:Array__DARKLUA_TYPE_aj<U>|Array__DARKLUA_TYPE_aj<T>|Array__DARKLUA_TYPE_aj<string>

if m=="table"and d(j)then
n=i(j::Array__DARKLUA_TYPE_aj<T>,k,l)
elseif e(j,b)then
n=g(j::Set__DARKLUA_TYPE_al<T>,k,l)
elseif e(j,c)then
n=h(j::Map__DARKLUA_TYPE_am<any,any>,k,l)
elseif m=="string"then
n=f(j::string,k,l)
else
n={}
end

return n
end end function a.I():typeof(__modImpl())local b=a.cache.I if not b then b={c=__modImpl()}a.cache.I=b end return b.c end end do local function __modImpl()a.n()










return function<T>(b:Array__DARKLUA_TYPE_ap<T>,c:T,d:number?):number
local e=d or 1
local f=#b




if e<1 then
e=math.max(f-math.abs(e),1)
end

for g=e,f do
if b[g]==c then
return g
end
end

return-1
end end function a.J():typeof(__modImpl())local b=a.cache.J if not b then b={c=__modImpl()}a.cache.J=b end return b.c end end do local function __modImpl()a.n()



local b=a.J()

return function<T>(c:Array__DARKLUA_TYPE_aq<T>,d:T,e:number?):boolean
return b(c,d,e)~=-1
end end function a.K():typeof(__modImpl())local b=a.cache.K if not b then b={c=__modImpl()}a.cache.K=b end return b.c end end do local function __modImpl()a.n()



local b=a.v()

return function<T>(c:Array__DARKLUA_TYPE_ar<T>,d:string?):string
if#c==0 then
return""
end

local e=b(c,function(e)
return tostring(e)
end)

return table.concat(e,d or",")
end end function a.L():typeof(__modImpl())local b=a.cache.L if not b then b={c=__modImpl()}a.cache.L=b end return b.c end end do local function __modImpl()

local b=_G.__DEV__ a.n()







return function<T,U>(c:Array__DARKLUA_TYPE_as<T>,d:reduceFn__DARKLUA_TYPE_at<T,U>,e:U?):U
if b then
if typeof(c)~="table"then
error(string.format("Array.reduce called on %s",typeof(c)))
end
if typeof(d)~="function"then
error"callback is not a function"
end
end

local f=#c

local g:T|U
local h=1

if e~=nil then
g=e
else
h=2
if f==0 then
error"reduce of empty array with no initial value"
end
g=c[1]
end

for i=h,f do
g=d(g::U,c[i],i,c)
end

return g::U
end end function a.M():typeof(__modImpl())local b=a.cache.M if not b then b={c=__modImpl()}a.cache.M=b end return b.c end end do local function __modImpl()a.n()





return function<T>(b:Array__DARKLUA_TYPE_au<T>):Array__DARKLUA_TYPE_au<T>
local c=#b
local d=1
while d<c do
b[d],b[c]=b[c],b[d]
d=d+1
c=c-1
end
return b
end end function a.N():typeof(__modImpl())local b=a.cache.N if not b then b={c=__modImpl()}a.cache.N=b end return b.c end end do local function __modImpl()

local b=_G.__DEV__
local c=a.o()a.n()



return function<T>(d:Array__DARKLUA_TYPE_av<T>):T?
if b then
if not c(d)then
error(string.format("Array.shift called on non-array %s",typeof(d)))
end
end

if#d>0 then
return table.remove(d,1)
else
return nil
end
end end function a.O():typeof(__modImpl())local b=a.cache.O if not b then b={c=__modImpl()}a.cache.O=b end return b.c end end do local function __modImpl()a.n()






return function<T>(b:Array__DARKLUA_TYPE_aw<T>,c:number?,d:number?):Array__DARKLUA_TYPE_aw<T>
if typeof(b)~="table"then
error(string.format("Array.slice called on %s",typeof(b)))
end
local e=#b

local f=c or 1
local g
if d==nil or d>e+1 then
g=e+1
else
g=d
end

if f>e+1 then
return{}
end

local h={}

if f<1 then
f=math.max(e-math.abs(f),1)
end
if g<1 then
g=math.max(e-math.abs(g),1)
end

local i=f
local j=1
while i<g do
h[j]=b[i]
i=i+1
j=j+1
end

return h
end end function a.P():typeof(__modImpl())local b=a.cache.P if not b then b={c=__modImpl()}a.cache.P=b end return b.c end end do local function __modImpl()a.n()











return function<T,U>(b:Array__DARKLUA_TYPE_ax<T>,c:callbackFn__DARKLUA_TYPE_az<T>|callbackFnWithThisArg__DARKLUA_TYPE_aA<T,U>,d:U?):boolean
if typeof(b)~="table"then
error(string.format("Array.some called on %s",typeof(b)))
end
if typeof(c)~="function"then
error"callback is not a function"
end

for e,f in b do
if d~=nil then
if f~=nil and(c::callbackFnWithThisArg__DARKLUA_TYPE_aA<T,U>)(d,f,e,b)then
return true
end
else
if f~=nil and(c::callbackFn__DARKLUA_TYPE_az<T>)(f,e,b)then
return true
end
end
end
return false
end end function a.Q():typeof(__modImpl())local b=a.cache.Q if not b then b={c=__modImpl()}a.cache.Q=b end return b.c end end do local function __modImpl()




local b=newproxy(true)
local c=getmetatable(b)
c.__tostring=function()
return"Object.None"
end

return b end function a.R():typeof(__modImpl())local b=a.cache.R if not b then b={c=__modImpl()}a.cache.R=b end return b.c end end do local function __modImpl()

local b=a.R()a.n()



local c=function<T>(c:T,d:T):boolean
return type(c)..tostring(c)<type(d)..tostring(d)
end

return function<T>(d:Array__DARKLUA_TYPE_aB<T>,e:Comparable__DARKLUA_TYPE_aC?):Array__DARKLUA_TYPE_aB<T>

local f=c
if e~=nil and e~=b then
if typeof(e::any)~="function"then
error"invalid argument to Array.sort: compareFunction must be a function"
end
f=function<T>(g:T,h:T)
local i=e(g,h)
if typeof(i)~="number"then




error(("invalid result from compare function, expected number but got %s"):format(typeof(i)))
end
return i<0
end
end
table.sort(d,f)
return d
end end function a.S():typeof(__modImpl())local b=a.cache.S if not b then b={c=__modImpl()}a.cache.S=b end return b.c end end do local function __modImpl()a.n()







return function<T>(b:Array__DARKLUA_TYPE_aD<T>,c:number,d:number?,...:T):Array__DARKLUA_TYPE_aD<T>

if c>#b then
local e=select("#",...)
for f=1,e do
local g=select(f,...)
table.insert(b,g)
end
return{}
else
local e=#b



if c<1 then
c=math.max(e-math.abs(c),1)
end

local f={}::Array__DARKLUA_TYPE_aD<T>


local g:number=d or e
if g>0 then
local h=math.min(e,c+math.max(0,g-1))

for i=c,h do
local j=table.remove(b,c)::T
table.insert(f,j)
end
end

local h=select("#",...)

for i=h,1,-1 do
local j=select(i,...)
table.insert(b,c,j)
end

return f
end
end end function a.T():typeof(__modImpl())local b=a.cache.T if not b then b={c=__modImpl()}a.cache.T=b end return b.c end end do local function __modImpl()

local b=_G.__DEV__
local c=a.o()a.n()



return function<T>(d:Array__DARKLUA_TYPE_aE<T>,...:T):number
if b then
if not c(d)then
error(string.format("Array.unshift called on non-array %s",typeof(d)))
end
end

local e=select("#",...)
if e>0 then
for f=e,1,-1 do
local g=select(f,...)
table.insert(d,1,g)
end
end

return#d
end end function a.U():typeof(__modImpl())local b=a.cache.U if not b then b={c=__modImpl()}a.cache.U=b end return b.c end end do local function __modImpl()a.n()





return{
concat=a.p(),
every=a.q(),
filter=a.r(),
find=a.s(),
findIndex=a.t(),
flat=a.u(),
flatMap=a.w(),
forEach=a.x(),
from=a.I(),
includes=a.K(),
indexOf=a.J(),
isArray=a.o(),
join=a.L(),
map=a.v(),
reduce=a.M(),
reverse=a.N(),
shift=a.O(),
slice=a.P(),
some=a.Q(),
sort=a.S(),
splice=a.T(),
unshift=a.U(),
}end function a.V():typeof(__modImpl())local b=a.cache.V if not b then b={c=__modImpl()}a.cache.V=b end return b.c end end do local function __modImpl()

local b=a.R()a.n()










return function<T,U,V,W>(c:T,d:U?,e:V?,f:W?,...):T&U&V&W
if d~=nil and typeof(d::any)=="table"then
for g,h in pairs(d::any)do
if h==b then
(c::any)[g]=nil
else
(c::any)[g]=h
end
end
end

if e~=nil and typeof(e::any)=="table"then
for g,h in pairs(e::any)do
if h==b then
(c::any)[g]=nil
else
(c::any)[g]=h
end
end
end

if f~=nil and typeof(f::any)=="table"then
for g,h in pairs(f::any)do
if h==b then
(c::any)[g]=nil
else
(c::any)[g]=h
end
end
end

for g=1,select("#",...)do
local h=select(g,...)

if h~=nil and typeof(h)=="table"then
for i,j in pairs(h)do
if j==b then
(c::any)[i]=nil
else
(c::any)[i]=j
end
end
end
end


return(c::any)::T&U&V&W
end end function a.W():typeof(__modImpl())local b=a.cache.W if not b then b={c=__modImpl()}a.cache.W=b end return b.c end end do local function __modImpl()a.n()






return function<T>(b:string|{[string]:T}|Array__DARKLUA_TYPE_aH<T>|Map__DARKLUA_TYPE_aI<any,T>):Array__DARKLUA_TYPE_aH<Tuple__DARKLUA_TYPE_aJ<string,T>>
assert(b::any~=nil,"cannot get entries from a nil value")
local c=typeof(b)

local d:Array__DARKLUA_TYPE_aH<Tuple__DARKLUA_TYPE_aJ<string,T>> ={}
if c=="table"then
for e,f in pairs(b::{[string]:T}|Array__DARKLUA_TYPE_aH<T>)do

table.insert(d,{e,f})
end
elseif c=="string"then

for e=1,string.len(b::string)do
d[e]={tostring(e),string.sub(b::string,e,e)}
end
end

return d
end end function a.X():typeof(__modImpl())local b=a.cache.X if not b then b={c=__modImpl()}a.cache.X=b end return b.c end end do local function __modImpl()a.n()





return function<T>(b:T&(Object__DARKLUA_TYPE_aL|Array__DARKLUA_TYPE_aK<any>)):T

return(table.freeze(b::any)::any)::T
end end function a.Y():typeof(__modImpl())local b=a.cache.Y if not b then b={c=__modImpl()}a.cache.Y=b end return b.c end end do local function __modImpl()



return function(b:any,c:any):boolean
if b==c then
return b~=0 or 1/b==1/c
else
return b~=b and c~=c
end
end end function a.Z():typeof(__modImpl())local b=a.cache.Z if not b then b={c=__modImpl()}a.cache.Z=b end return b.c end end do local function __modImpl()

local b=_G.__DEV__ a.n()





return function(c:Object__DARKLUA_TYPE_aN|Array__DARKLUA_TYPE_aM<any>):boolean
if b then
print"Luau now has a direct table.isfrozen call that can save the overhead of this library function call"
end
return table.isfrozen(c)
end end function a._():typeof(__modImpl())local b=a.cache._ if not b then b={c=__modImpl()}a.cache._=b end return b.c end end do local function __modImpl()

local b=a.A()a.n()

local c=a.D()




return function(d:Set__DARKLUA_TYPE_aP<any>|Table__DARKLUA_TYPE_aQ|string):Array__DARKLUA_TYPE_aO<string>
if d==nil then
error"cannot extract keys from a nil value"
end

local e=typeof(d)

local f
if e=="table"then
f={}
if c(d,b)then
return f
end

for g in pairs(d::Table__DARKLUA_TYPE_aQ)do
table.insert(f,g)
end
elseif e=="string"then
local g=(d::string):len()
f=table.create(g)
for h=1,g do
f[h]=tostring(h)
end
end

return f
end end function a.aa():typeof(__modImpl())local b=a.cache.aa if not b then b={c=__modImpl()}a.cache.aa=b end return b.c end end do local function __modImpl()a.n()








local function preventExtensions<T>(b:T&(Object__DARKLUA_TYPE_aS|Array__DARKLUA_TYPE_aR<any>)):T
local c=tostring(b)

return(
setmetatable(b::any,{
__newindex=function(d,e,f)
local g=("%q (%s) is not a valid member of %s"):format(tostring(e),typeof(e),c)

error(g,2)
end,
__metatable=false,
})::any
)::T
end

return preventExtensions end function a.ab():typeof(__modImpl())local b=a.cache.ab if not b then b={c=__modImpl()}a.cache.ab=b end return b.c end end do local function __modImpl()a.n()





return function<T>(b:T&(Object__DARKLUA_TYPE_aU|Array__DARKLUA_TYPE_aT<any>)):T

return(table.freeze(b::any)::any)::T
end end function a.ac():typeof(__modImpl())local b=a.cache.ac if not b then b={c=__modImpl()}a.cache.ac=b end return b.c end end do local function __modImpl()a.n()





return function<T>(b:{[string]:T}|Array__DARKLUA_TYPE_aV<T>|string):Array__DARKLUA_TYPE_aV<T>|Array__DARKLUA_TYPE_aV<string>
if b==nil then
error"cannot extract values from a nil value"
end
local c=typeof(b)

local d:Array__DARKLUA_TYPE_aV<T>|Array__DARKLUA_TYPE_aV<string>
if c=="table"then
d={}::Array__DARKLUA_TYPE_aV<T>
for e,f in pairs(b::{[string]:T}|Array__DARKLUA_TYPE_aV<T>)do
table.insert(d,f)
end
elseif c=="string"then

local e=(b::string):len()
d=table.create(e)
for f=1,e do
(d::Array__DARKLUA_TYPE_aV<string>)[f]=(b::string):sub(f,f)
end
end

return d
end end function a.ad():typeof(__modImpl())local b=a.cache.ad if not b then b={c=__modImpl()}a.cache.ad=b end return b.c end end do local function __modImpl()

return{
assign=a.W(),
entries=a.X(),
freeze=a.Y(),
is=a.Z(),
isFrozen=a._(),
keys=a.aa(),
preventExtensions=a.ab(),
seal=a.ac(),
values=a.ad(),


None=a.R(),
}end function a.ae():typeof(__modImpl())local b=a.cache.ae if not b then b={c=__modImpl()}a.cache.ae=b end return b.c end end do local function __modImpl()

local b=a.E()
local c=a.ae()
local d=a.D()a.n()





local function coerceToMap(e:Map__DARKLUA_TYPE_aW<any,any>|Table__DARKLUA_TYPE_aX<any,any>):Map__DARKLUA_TYPE_aW<any,any>
return d(e,b)and e::Map__DARKLUA_TYPE_aW<any,any>
or b.new(c.entries(e))
end

return coerceToMap end function a.af():typeof(__modImpl())local b=a.cache.af if not b then b={c=__modImpl()}a.cache.af=b end return b.c end end do local function __modImpl()

local b=a.E()
local c=a.D()
local d=a.M()a.n()





local function coerceToTable(e:Map__DARKLUA_TYPE_aY<any,any>|Table__DARKLUA_TYPE_aZ<any,any>):Table__DARKLUA_TYPE_aZ<any,any>
if not c(e,b)then
return e::Table__DARKLUA_TYPE_aZ<any,any>
end


return d(e:entries(),function(f,g)
f[g[1] ]=g[2]
return f
end,{})
end

return coerceToTable end function a.ag():typeof(__modImpl())local b=a.cache.ag if not b then b={c=__modImpl()}a.cache.ag=b end return b.c end end do local function __modImpl()a.n()



local b=a.E()
local c=a.af()
local d=a.ag()



return{
Map=b,
coerceToMap=c,
coerceToTable=d,
}end function a.ah():typeof(__modImpl())local b=a.cache.ah if not b then b={c=__modImpl()}a.cache.ah=b end return b.c end end do local function __modImpl()a.n()
















local b:WeakMapPrivate__DARKLUA_TYPE_a1<any,any>&WeakMap_Statics__DARKLUA_TYPE_a2={}::any;
(b::any).__index=b

function b.new<K,V>():WeakMap__DARKLUA_TYPE_a0<K,V>
local c=setmetatable({},{__mode="k"})
return setmetatable({_weakMap=c},b)::any
end

function b.get(c,d)
return c._weakMap[d]
end

function b.set(c,d,e)
c._weakMap[d]=e
return c
end

function b.has(c,d):boolean
return c._weakMap[d]~=nil
end

return b::WeakMap__DARKLUA_TYPE_a0<any,any>&WeakMap_Statics__DARKLUA_TYPE_a2 end function a.ai():typeof(__modImpl())local b=a.cache.ai if not b then b={c=__modImpl()}a.cache.ai=b end return b.c end end do local function __modImpl()

local b=a.V()
local c=a.ah()
local d=a.ae()
local e=a.A()
local f=a.ai()
local g=a.y()a.n()









return{
Array=b,
Object=d,
Map=c.Map,
coerceToMap=c.coerceToMap,
coerceToTable=c.coerceToTable,
Set=e,
WeakMap=f,
inspect=g,
}end function a.aj():typeof(__modImpl())local b=a.cache.aj if not b then b={c=__modImpl()}a.cache.aj=b end return b.c end end do local function __modImpl()

return a.aj()end function a.ak():typeof(__modImpl())local b=a.cache.ak if not b then b={c=__modImpl()}a.cache.ak=b end return b.c end end do local function __modImpl()local b=a.ak().inspect

local c="  "

return function()
local d={}
local e=0

local function indent()
return string.rep(c,e)
end

function d.log(f,...)
local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
print(indent()..g)
end

function d.debug(f,...)
local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
print(indent()..g)
end

function d.info(f,...)
local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
print(indent()..g)
end

function d.warn(f,...)
local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
warn(indent()..g)
end

function d.error(f,...)


local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
warn(indent()..g)
end

function d.group(f,...)
local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
print(indent()..g)
e=e+1
end

function d.groupCollapsed(f,...)

local g
if typeof(f)=="string"then
g=string.format(f,...)
else
g=b(f)
end
print(indent()..g)
e=e+1
end

function d.groupEnd()
if e>0 then
e=e-1
end
end

return d
end end function a.al():typeof(__modImpl())local b=a.cache.al if not b then b={c=__modImpl()}a.cache.al=b end return b.c end end do local function __modImpl()

local b=a.al()

return b()end function a.am():typeof(__modImpl())local b=a.cache.am if not b then b={c=__modImpl()}a.cache.am=b end return b.c end end do local function __modImpl()

return a.am()end function a.an():typeof(__modImpl())local b=a.cache.an if not b then b={c=__modImpl()}a.cache.an=b end return b.c end end do local function __modImpl()return bit32.countlz end function a.ao():typeof(__modImpl())local b=a.cache.ao if not b then b={c=__modImpl()}a.cache.ao=b end return b.c end end do local function __modImpl()

return{
clz32=a.ao(),
}end function a.ap():typeof(__modImpl())local b=a.cache.ap if not b then b={c=__modImpl()}a.cache.ap=b end return b.c end end do local function __modImpl()

return a.ap()end function a.aq():typeof(__modImpl())local b=a.cache.aq if not b then b={c=__modImpl()}a.cache.aq=b end return b.c end end do local function __modImpl()local b=a.i()

local c=b.NaN



return function(d:string,e:number):number
if type(e)~="number"then
e=1
end





local f=string.len(d)
if e<1 or e>f then
return c
end


local g=utf8.offset(d,e)


if g==nil or g>f then
return c
end

local h=utf8.codepoint(d,g,g)

if h==nil then
return c
end

return h
end end function a.ar():typeof(__modImpl())local b=a.cache.ar if not b then b={c=__modImpl()}a.cache.ar=b end return b.c end end do local function __modImpl()

local function endsWith(b:string,c:string,d:number?):boolean
local e=c:len()
if e==0 then
return true
end
local f=b:len()
local g=d or f
if g>f then
g=f
end
if g<1 then
return false
end
local h=g-e+1
return b:find(c,h,true)==h
end

return endsWith end function a.as():typeof(__modImpl())local b=a.cache.as if not b then b={c=__modImpl()}a.cache.as=b end return b.c end end do local function __modImpl()







local b="(["..("$%^()-[].?"):gsub("(.)","%%%1").."])"

local function findOr(c:string,d:{string},e:number?):Match__DARKLUA_TYPE_a8|nil


local f=utf8.offset(c,e or 1)
local g={}
for h,i in d do
i=i:gsub(b,"%%%1")
local j,k=string.find(c,i,f)
if j then
local l=string.sub(c,1,j-1)
local m,n=utf8.len(l)
if m==nil then
error(("string `%s` has an invalid byte at position %s"):format(l,tostring(n)))
end
local o=m::number+1
local p={
index=o,
match=string.sub(c,j,k),
}
table.insert(g,p)
end
end


if#g==0 then
return nil
end




local h
for i,j in g do

if h==nil then
h=j
end

if j.index<h.index then
h=j
end
end


return h
end

return findOr end function a.at():typeof(__modImpl())local b=a.cache.at if not b then b={c=__modImpl()}a.cache.at=b end return b.c end end do local function __modImpl()


local b="(["..("$%^()-[].?"):gsub("(.)","%%%1").."])"

local function includes(c:string,d:string,e:(string|number)?):boolean
local f,g=utf8.len(c)
assert(f~=nil,("string `%s` has an invalid byte at position %s"):format(c,tostring(g)))
if f==0 then
return false
end

if#d==0 then
return true
end

local h=1
if e~=nil then
h=tonumber(e)or 1
if h>f then
return false
end
end

if h<1 then
h=1
end

local i=utf8.offset(c,h)
local j=d:gsub(b,"%%%1")local
k=string.find(c,j,i)
return k~=nil
end

return includes end function a.au():typeof(__modImpl())local b=a.cache.au if not b then b={c=__modImpl()}a.cache.au=b end return b.c end end do local function __modImpl()


local b="(["..("$%^()-[].?"):gsub("(.)","%%%1").."])"




return function(c:string,d:string,e:number?):number
local f=#c
local g=if e~=nil then if e<1 then 1 else e::number else 1

if#d==0 then
return if g>f then f else g
end

if g>f then
return-1
end

d=d:gsub(b,"%%%1")
local h=#d

for i=g,f do
if string.sub(c,i,i+h-1)==d then
return i
end
end

return-1
end end function a.av():typeof(__modImpl())local b=a.cache.av if not b then b={c=__modImpl()}a.cache.av=b end return b.c end end do local function __modImpl()

local function lastIndexOf(b:string,c:string,d:number?):number
local e=string.len(b)
local f
if d then
f=d
else
f=e
end
if d and d<1 then
f=1
end
if d and d>e then
f=e
end
if c==""then

return f::number
end

local g,h

local i:number?=0
repeat
g=h

h,i=string.find(b,c,i::number+1,true)
until h==nil or h>f

if g==nil then
return-1
end

return g::number
end

return lastIndexOf end function a.aw():typeof(__modImpl())local b=a.cache.aw if not b then b={c=__modImpl()}a.cache.aw=b end return b.c end end do local function __modImpl()

local function slice(b:string,c:string|number,d:(string|number)?):string
local e,f=utf8.len(b)
assert(e~=nil,("string `%s` has an invalid byte at position %s"):format(b,tostring(f)))
local g=tonumber(c)
assert(typeof(g)=="number","startIndexStr should be a number")

if g+e<0 then

g=1
end

if g>e then
return""
end


local h=e+1
if d~=nil then

local i=0/0
h=tonumber(d)or i
end
assert(typeof(h)=="number","lastIndexStr should convert to number")

if h>e then
h=e+1
end

local i=utf8.offset(b,g)::number

local j=utf8.offset(b,h)::number-1

return string.sub(b,i,j)
end

return slice end function a.ax():typeof(__modImpl())local b=a.cache.ax if not b then b={c=__modImpl()}a.cache.ax=b end return b.c end end do local function __modImpl()

local b=a.at()
local c=a.ax()a.n()



local d=a.i().MAX_SAFE_INTEGER



local function split(e:string,f:Pattern__DARKLUA_TYPE_ba?,g:number?):Array__DARKLUA_TYPE_a9<string>
if f==nil then
return{e}
end
if g==0 then
return{}
end
local h=if g==nil or g<0 then d else g
local i=f
local j:Array__DARKLUA_TYPE_a9<string>
if typeof(i)=="string"then
if i==""then
local k={}
for l in e:gmatch"."do
table.insert(k,l)
end
return k
end
j={i}
else
j=i::Array__DARKLUA_TYPE_a9<string>
end
local k=1
local l={}
local m
local n,o=utf8.len(e)
assert(n~=nil,("string `%s` has an invalid byte at position %s"):format(e,tostring(o)))

repeat
local p=b(e,j,k)
if p~=nil then
table.insert(l,c(e,k,p.index))
local q=utf8.len(p.match)

k=p.index+q::number
else
table.insert(l,c(e,k,nil))
end
if p~=nil then
m=p
end
until p==nil or k>n or#l>=h
if m~=nil then
local p,q=utf8.len(m.match)
assert(
p~=nil,
("string `%s` has an invalid byte at position %s"):format(m.match,tostring(q))
)
if m.index+p==n+1 then
table.insert(l,"")
end
end
return l
end

return split end function a.ay():typeof(__modImpl())local b=a.cache.ay if not b then b={c=__modImpl()}a.cache.ay=b end return b.c end end do local function __modImpl()

local function startsWith(b:string,c:string,d:number?):boolean
if string.len(c)==0 then
return true
end

local e
if d==nil or d<1 then
e=1
else
e=d
end

if e>string.len(b)then
return false
end
return b:find(c,e,true)==e
end

return startsWith end function a.az():typeof(__modImpl())local b=a.cache.az if not b then b={c=__modImpl()}a.cache.az=b end return b.c end end do local function __modImpl()

return function(b:string,c:number,d:number?):string
if d and d<=0 then
return""
end
return string.sub(b,c,d and c+d-1 or nil)
end end function a.aA():typeof(__modImpl())local b=a.cache.aA if not b then b={c=__modImpl()}a.cache.aA=b end return b.c end end do local function __modImpl()

return function(b:string):string
return(b:gsub("^[%s]+",""))
end end function a.aB():typeof(__modImpl())local b=a.cache.aB if not b then b={c=__modImpl()}a.cache.aB=b end return b.c end end do local function __modImpl()

return function(b:string):string
return(b:gsub("[%s]+$",""))
end end function a.aC():typeof(__modImpl())local b=a.cache.aC if not b then b={c=__modImpl()}a.cache.aC=b end return b.c end end do local function __modImpl()

local b=a.aB()
local c=a.aC()

return function(d:string):string
return b(c(d))
end end function a.aD():typeof(__modImpl())local b=a.cache.aD if not b then b={c=__modImpl()}a.cache.aD=b end return b.c end end do local function __modImpl()

return{
charCodeAt=a.ar(),
endsWith=a.as(),
findOr=a.at(),
includes=a.au(),
indexOf=a.av(),
lastIndexOf=a.aw(),
slice=a.ax(),
split=a.ay(),
startsWith=a.az(),
substr=a.aA(),
trim=a.aD(),
trimEnd=a.aC(),
trimStart=a.aB(),

trimRight=a.aC(),
trimLeft=a.aB(),
}end function a.aE():typeof(__modImpl())local b=a.cache.aE if not b then b={c=__modImpl()}a.cache.aE=b end return b.c end end do local function __modImpl()

return a.aE()end function a.aF():typeof(__modImpl())local b=a.cache.aF if not b then b={c=__modImpl()}a.cache.aF=b end return b.c end end do local function __modImpl()












return{
new=function(b:string?):Symbol__DARKLUA_TYPE_bb
local c=newproxy(true)::any

local d="Symbol()"
if b then
d=("Symbol(%s)"):format(b)
end

getmetatable(c).__tostring=function()
return d
end

return(c::any)::Symbol__DARKLUA_TYPE_bb
end,
}end function a.aG():typeof(__modImpl())local b=a.cache.aG if not b then b={c=__modImpl()}a.cache.aG=b end return b.c end end do local function __modImpl()

local b=a.aG()

local c:{[string]:Symbol__DARKLUA_TYPE_bb}={}

return{
getOrInit=function(d:string):Symbol__DARKLUA_TYPE_bb
if c[d]==nil then
c[d]=b.new(d)
end

return c[d]
end,

__clear=function()
c={}
end,
}end function a.aH():typeof(__modImpl())local b=a.cache.aH if not b then b={c=__modImpl()}a.cache.aH=b end return b.c end end do local function __modImpl()






local b=a.aG()

local c=a.aH()

local d=setmetatable({},{




__call=function(d,e:string?):Symbol__DARKLUA_TYPE_bb
return b.new(e)
end,
})

d.for_=c.getOrInit

return d end function a.aI():typeof(__modImpl())local b=a.cache.aI if not b then b={c=__modImpl()}a.cache.aI=b end return b.c end end do local function __modImpl()

return a.aI()end function a.aJ():typeof(__modImpl())local b=a.cache.aJ if not b then b={c=__modImpl()}a.cache.aJ=b end return b.c end end do local function __modImpl()local b=newproxy(false)




local c=1
local d=2
local e=3

return function(f)
local function setTimeout(g,h:number?,...):Timeout__DARKLUA_TYPE_be
local i={...}
local j={
[b]=c,
}


if h==nil then
h=0
end


local k=h::number/1000
f(k,function()
if j[b]==c then
g(unpack(i))
j[b]=d
end
end)

return j
end

local function clearTimeout(g:Timeout__DARKLUA_TYPE_be)
if g==nil then
return
end
if g[b]==c then
g[b]=e
end
end

return{
setTimeout=setTimeout,
clearTimeout=clearTimeout,
}
end end function a.aK():typeof(__modImpl())local b=a.cache.aK if not b then b={c=__modImpl()}a.cache.aK=b end return b.c end end do local function __modImpl()

local b=newproxy(false)




local c=1
local d=3

return function(e)
local function setInterval(f,g:number,...):Interval__DARKLUA_TYPE_bg
local h={...}
local i={
[b]=c,
}


if g==nil then
g=0
end


local j=g/1000
local k
k=function()
e(j,function()
if i[b]==c then
f(unpack(h))
k()
end
end)
end

k()

return i
end

local function clearInterval(f:Interval__DARKLUA_TYPE_bg)
if f==nil then
return
end

if f[b]==c then
f[b]=d
end
end

return{
setInterval=setInterval,
clearInterval=clearInterval,
}
end end function a.aL():typeof(__modImpl())local b=a.cache.aL if not b then b={c=__modImpl()}a.cache.aL=b end return b.c end end do local function __modImpl()

local b=a.ak().Object

local c=a.aK()
local d=a.aL()




return b.assign({},c(task.delay),d(task.delay))end function a.aM():typeof(__modImpl())local b=a.cache.aM if not b then b={c=__modImpl()}a.cache.aM=b end return b.c end end do local function __modImpl()

return a.aM()end function a.aN():typeof(__modImpl())local b=a.cache.aN if not b then b={c=__modImpl()}a.cache.aN=b end return b.c end end do local function __modImpl()a.n()






local b={}

local c="Error"
b.__index=b
b.__tostring=function(d)

return getmetatable(b::any).__tostring(d)
end


local function __createError(d:string?):Error__DARKLUA_TYPE_bk
local e=(setmetatable({
name=c,
message=d or"",
},b)::any)::Error__DARKLUA_TYPE_bk
b.__captureStackTrace(e,4)
return e
end

function b.new(d:string?):Error__DARKLUA_TYPE_bk
return __createError(d)
end

function b.captureStackTrace(d:Error__DARKLUA_TYPE_bk,e:Function__DARKLUA_TYPE_bj?)
b.__captureStackTrace(d,3,e)
end

function b.__captureStackTrace(d:Error__DARKLUA_TYPE_bk,e:number,f:Function__DARKLUA_TYPE_bj?)
local g=d::Error_private__DARKLUA_TYPE_bl
if typeof(f)=="function"then
local h=debug.traceback(nil,e)
local i:string=debug.info(f,"n")
local j:string=debug.info(f,"s")

local k=string.gsub(j,"([%(%)%.%%%+%-%*%?%[%^%$])","%%%1")
local l=k..":%d* function "..i
local m=string.find(h,l)
local n
if m~=nil then
m,n=string.find(h,"\n",m+1)
end
if n~=nil then
h=string.sub(h,n+1)
end
g.__stack=h
else
g.__stack=debug.traceback(nil,e)
end
b.__recalculateStacktrace(g)
end

function b.__recalculateStacktrace(d:Error__DARKLUA_TYPE_bk)
local e=d::Error_private__DARKLUA_TYPE_bl
local f=e.message
local g=e.name or c

local h=g..(if f~=nil and f~=""then(": "..f)else"")
local i=if e.__stack then e.__stack else""

e.stack=h.."\n"..i
end

return setmetatable(b,{
__call=function(d,...)
return __createError(...)
end,
__tostring=function(d)
if d.name~=nil then
if d.message and d.message~=""then
return string.format("%s: %s",tostring(d.name),tostring(d.message))
end
return tostring(d.name)
end
return tostring(c)
end,
})end function a.aO():typeof(__modImpl())local b=a.cache.aO if not b then b={c=__modImpl()}a.cache.aO=b end return b.c end end do local function __modImpl()

local b=a.aO()

return b end function a.aP():typeof(__modImpl())local b=a.cache.aP if not b then b={c=__modImpl()}a.cache.aP=b end return b.c end end do local function __modImpl()
























local b=a.ak()
local c=b.Array
local d=b.Object
local e=a.l()
local f=a.aF()a.n()

local g=b.inspect

local h=a.aP()
local i=a.D()







local j={
stderr={
isTTY=false,
columns=0,
hasColors=function(...)
return true
end,
},
}


function ErrorCaptureStackTrace(k,...)
h.captureStackTrace(k,...)
end


local function removeColors(k)
return k
end






local k=""
local l=""
local m=""
local n=""
local o={
deepStrictEqual="Expected values to be strictly deep-equal:",
strictEqual="Expected values to be strictly equal:",
strictEqualObject='Expected "actual" to be reference-equal to "expected":',
deepEqual="Expected values to be loosely deep-equal:",
notDeepStrictEqual='Expected "actual" not to be strictly deep-equal to:',
notStrictEqual='Expected "actual" to be strictly unequal to:',
notStrictEqualObject='Expected "actual" not to be reference-equal to "expected":',
notDeepEqual='Expected "actual" not to be loosely deep-equal to:',
notIdentical="Values have same structure but are not reference-equal:",
notDeepEqualUnequal="Expected values not to be loosely deep-equal:",
}


local p=12
local function copyError(q:Object__DARKLUA_TYPE_bp)
local r=d.keys(q)

local s={}
for t,u in r do
s[u]=q[u]
end
s.message=q.message
return s
end

local function inspectValue(q)


return g(q,{
compact=false,
customInspect=false,
depth=1000,
maxArrayLength=math.huge,
showHidden=false,
showProxy=false,
sorted=true,
getters=true,
})
end

local function createErrDiff(q,r,s)
local t=""
local u=""
local v=""
local w=false
local x=inspectValue(q)
local y=f.split(x,"\n")
local z=f.split(inspectValue(r),"\n")

local A=0
local B=""



if
s=="strictEqual"
and(
typeof(q)=="table"and q~=nil and typeof(r)=="table"and r~=nil
or typeof(q)=="function"and typeof(r)=="function"
)
then
s="strictEqualObject"
end



if#y==1 and#z==1 and y[1]~=z[1]then



local C=false


local D=if C then removeColors(y[1])else y[1]
local E=if e.toJSBoolean(C)then removeColors(z[1])else z[1]
local F=string.len(D)+string.len(E)



if F<=p then
if
(typeof(q)~="table"or q==nil)
and(typeof(r)~="table"or r==nil)
and(q~=0 or r~=0)
then

return("%s\n\n"):format(o[s])
..("%s !== %s\n"):format(y[1],z[1])
end
elseif s~="strictEqualObject"then



local G=if j.stderr.isTTY then j.stderr.columns else 80
if F<G then
while string.sub(D,A+1,A+1)==string.sub(E,A+1,A+1)do
A+=1
end

if A>2 then


B=("\n  %s^"):format(string.rep(" ",A))
A=0
end
end
end
end



local C=y[#y]
local D=z[#z]
while C==D do
local E=A
A+=1
if E<3 then
v=("\n  %s%s"):format(C,v)
else
t=C
end
table.remove(y)
table.remove(z)
if#y==0 or#z==0 then
break
end
C=y[#y]
D=z[#z]
end

local E=math.max(#y,#z)


if E==0 then

local F=f.split(x,"\n")



if#F>50 then
F[47]=("%s...%s"):format(k,n)
while#F>47 do
table.remove(F)
end
end

return("%s\n\n"):format(o.notIdentical)..("%s\n"):format(c.join(F,"\n"))
end



if A>=5 then
v=("\n%s...%s%s"):format(k,n,v)
w=true
end
if t~=""then
v=("\n  %s%s"):format(t,v)
t=""
end

local F=0
local G=0
local H=o[s]..("\n%s+ actual%s %s- expected%s"):format(l,n,m,n)
local I=(" %s...%s Lines skipped"):format(k,n)

local J=y
local K=("%s+%s"):format(l,n)
local L=#z
if#y<E then
J=z
K=("%s-%s"):format(m,n)
L=#y
end

for M=1,E do
A=M
if L<M then


if G>2 then
if G>3 then
if G>4 then
if G==5 then
u..=("\n  %s"):format(J[(M-3)])
F+=1
else
u..=("\n%s...%s"):format(k,n)
w=true
end
end
u..=("\n  %s"):format(J[(M-2)])
F+=1
end
u..=("\n  %s"):format(J[(M-1)])
F+=1
end

G=0

if J==y then
u..=("\n%s %s"):format(K,J[M])
else
t..=("\n%s %s"):format(K,J[M])
end
F+=1


else
local N=z[M]
local O=y[M]



local P=O~=N
and(
not e.toJSBoolean(f.endsWith(O,","))
or f.slice(O,0,-1)~=N
)









if
P
and f.endsWith(N,",")
and f.slice(N,0,-1)==O
then
P=false
O..=","
end
if P then


if G>2 then
if G>3 then
if G>4 then
if G==5 then
u..=("\n  %s"):format(y[M-3])
F+=1
else
u..=("\n%s...%s"):format(k,n)
w=true
end
end
u..=("\n  %s"):format(y[M-2])
F+=1
end
u..=("\n  %s"):format(y[M-1])
F+=1
end

G=0


u..=("\n%s+%s %s"):format(l,n,O)
t..=("\n%s-%s %s"):format(m,n,N)
F+=2

else


u..=t
t=""
G+=1


if G<=2 then
u..=("\n  %s"):format(O)
F+=1
end
end
end

if F>50 and M<E-2 then
return("%s%s\n%s\n%s...%s%s\n"):format(H,I,u,k,n,t)
..("%s...%s"):format(k,n)
end
end

return("%s%s\n%s%s%s%s"):format(H,if w then I else"",u,t,v,B)
end






























local q:AssertionError__DARKLUA_TYPE_br&AssertionErrorStatics__DARKLUA_TYPE_bs=(
setmetatable({},{__index=h})::any
)::AssertionError__DARKLUA_TYPE_br&AssertionErrorStatics__DARKLUA_TYPE_bs
q.__index=q
q.__tostring=function(r:AssertionError__DARKLUA_TYPE_br)
return r:toString()
end










function q.new(r:AssertionErrorOptions__DARKLUA_TYPE_bt):AssertionError__DARKLUA_TYPE_br
local s:AssertionError__DARKLUA_TYPE_br


local t,u,v=
r.message,
r.operator,
r.stackStartFn
local w,x=r.actual,r.expected






if t~=nil then
s=(setmetatable(h.new(tostring(t)),q)::any)::AssertionError__DARKLUA_TYPE_br
else
if j.stderr.isTTY then


if j.stderr:hasColors()then
k="\u{001b}[34m"
l="\u{001b}[32m"
n="\u{001b}[39m"
m="\u{001b}[31m"
else
k=""
l=""
n=""
m=""
end
end



if
typeof(w)=="table"
and w~=nil
and typeof(x)=="table"
and x~=nil
and c.indexOf(d.keys(w),"stack")~=-1
and i(w,h)
and c.indexOf(d.keys(x),"stack")~=-1
and i(x,h)
then
w=copyError(w)
x=copyError(x)
end
if u=="deepStrictEqual"or u=="strictEqual"then
s=(
setmetatable(h.new(createErrDiff(w,x,u)),q)::any
)::AssertionError__DARKLUA_TYPE_br
elseif u=="notDeepStrictEqual"or u=="notStrictEqual"then


local y=o[u]
local z=f.split(inspectValue(w),"\n")



if
u=="notStrictEqual"
and(typeof(w)=="table"and w~=nil or typeof(w)=="function")
then
y=o.notStrictEqualObject
end



if#z>50 then
z[47]=("%s...%s"):format(k,n)
while#z>47 do
table.remove(z)
end
end


if#z==1 then
s=(
setmetatable(
h.new(("%s%s%s"):format(y,if string.len(z[1])>5 then"\n\n"else" ",z[1])),
q
)::any
)::AssertionError__DARKLUA_TYPE_br
else
s=(
setmetatable(h.new(("%s\n\n%s\n"):format(y,c.join(z,"\n"))),q)::any
)::AssertionError__DARKLUA_TYPE_br
end
else
local y=inspectValue(w)
local z=inspectValue(x)
local A=o[tostring(u)]
if u=="notDeepEqual"and y==z then
y=("%s\n\n%s"):format(A,y)
if string.len(y)>1024 then
y=("%s..."):format(f.slice(y,0,1021))
end
s=(setmetatable(h.new(y),q)::any)::AssertionError__DARKLUA_TYPE_br
else
if string.len(y)>512 then
y=("%s..."):format(f.slice(y,0,509))
end
if string.len(z)>512 then
z=("%s..."):format(f.slice(z,0,509))
end
if u=="deepEqual"then
y=("%s\n\n%s\n\nshould loosely deep-equal\n\n"):format(A,y)
else
local B=o[("%sUnequal"):format(tostring(u))]
if e.toJSBoolean(B)then
y=("%s\n\n%s\n\nshould not loosely deep-equal\n\n"):format(B,y)
else
z=(" %s %s"):format(tostring(u),z)
end
end
s=(setmetatable(h.new(("%s%s"):format(y,z)),q)::any)::AssertionError__DARKLUA_TYPE_br
end
end
end





s.generatedMessage=not e.toJSBoolean(t)










s.name="AssertionError [ERR_ASSERTION]"
s.code="ERR_ASSERTION"













s.actual=w
s.expected=x
s.operator=u


ErrorCaptureStackTrace(s,v or q.new)







s.name="AssertionError"
return(s::any)::AssertionError__DARKLUA_TYPE_br
end

function q.toString(r)
return("%s [%s]: %s"):format(r.name,r.code,r.message)
end

q.name="AssertionError"

return{AssertionError=q}end function a.aQ():typeof(__modImpl())local b=a.cache.aQ if not b then b={c=__modImpl()}a.cache.aQ=b end return b.c end end do local function __modImpl()

local b=a.aQ()



return b.AssertionError end function a.aR():typeof(__modImpl())local b=a.cache.aR if not b then b={c=__modImpl()}a.cache.aR=b end return b.c end end do local function __modImpl()

































return{}end function a.aS():typeof(__modImpl())local b=a.cache.aS if not b then b={c=__modImpl()}a.cache.aS=b end return b.c end end do local function __modImpl()
















return function(b,c,d)
local e={}
e.__index=e
e.__tostring=function(f)
return getmetatable(b).__tostring(f)
end

local f={}

e.new=function(...)
local g={}
d(g,...)
return setmetatable(g,e)
end

if typeof(getmetatable(b))=="table"and getmetatable(b).__call then
f.__call=function(g,...)
return e.new(...)
end
end

f.__index=b
f.__tostring=function(g)

if g==e then
return tostring(c)
end
return getmetatable(b).__tostring(g)
end

setmetatable(e,f)

return e
end end function a.aT():typeof(__modImpl())local b=a.cache.aT if not b then b={c=__modImpl()}a.cache.aT=b end return b.c end end do local function __modImpl()

local b=a.l()
local c=a.ak()
local d=a.an()
local e=a.aq()
local f=a.i()
local g=a.aF()
local h=a.aJ()
local i=a.aN()a.n()


local j=a.aR()
local k=a.aP()a.aS()

local l=a.aT()
local m=a.D()
















return{
Array=c.Array,
AssertionError=j,
Boolean=b,
console=d,
Error=k,
extends=l,
instanceof=m,
Math=e,
Number=f,
Object=c.Object,
Map=c.Map,
coerceToMap=c.coerceToMap,
coerceToTable=c.coerceToTable,
Set=c.Set,
WeakMap=c.WeakMap,
String=g,
Symbol=h,
setTimeout=i.setTimeout,
clearTimeout=i.clearTimeout,
setInterval=i.setInterval,
clearInterval=i.clearInterval,
util={
inspect=c.inspect,
},
}end function a.aU():typeof(__modImpl())local b=a.cache.aU if not b then b={c=__modImpl()}a.cache.aU=b end return b.c end end do local function __modImpl()

return a.aU()end function a.aV():typeof(__modImpl())local b=a.cache.aV if not b then b={c=__modImpl()}a.cache.aV=b end return b.c end end do local function __modImpl()a.aV()







































































































































































































































return{}end function a.aW():typeof(__modImpl())local b=a.cache.aW if not b then b={c=__modImpl()}a.cache.aW=b end return b.c end end do local function __modImpl()a.aV()a.aW()























































































































local b={}
b.DiscreteEvent=0
b.UserBlockingEvent=1
b.ContinuousEvent=2














































































































































return b end function a.aX():typeof(__modImpl())local b=a.cache.aX if not b then b={c=__modImpl()}a.cache.aX=b end return b.c end end do local function __modImpl()a.aV()a.aW()
















































return{}end function a.aY():typeof(__modImpl())local b=a.cache.aY if not b then b={c=__modImpl()}a.cache.aY=b end return b.c end end do local function __modImpl()





















local b=a.aV()
local c=b.Error

local function invariant(d,e,...)



if not d then
error(c(string.format(e,...)))
end
end

return invariant end function a.aZ():typeof(__modImpl())local b=a.cache.aZ if not b then b={c=__modImpl()}a.cache.aZ=b end return b.c end end do local function __modImpl()











local b=a.aZ()




function shim(...)
b(
false,[[The current renderer does not support hydration. This error is likely caused by a bug in React. Please file an issue.]]



)
end



return{
supportsHydration=false,
canHydrateInstance=shim,
canHydrateTextInstance=shim,
canHydrateSuspenseInstance=shim,
isSuspenseInstancePending=shim,
isSuspenseInstanceFallback=shim,
registerSuspenseInstanceRetry=shim,
getNextHydratableSibling=shim,
getFirstHydratableChild=shim,
hydrateInstance=shim,
hydrateTextInstance=shim,
hydrateSuspenseInstance=shim,
getNextHydratableInstanceAfterSuspenseInstance=shim,
commitHydratedContainer=shim,
commitHydratedSuspenseInstance=shim,
clearSuspenseBoundary=shim,
clearSuspenseBoundaryFromContainer=shim,
didNotMatchHydratedContainerTextInstance=shim,
didNotMatchHydratedTextInstance=shim,
didNotHydrateContainerInstance=shim,
didNotHydrateInstance=shim,
didNotFindHydratableContainerInstance=shim,
didNotFindHydratableContainerTextInstance=shim,
didNotFindHydratableContainerSuspenseInstance=shim,
didNotFindHydratableInstance=shim,
didNotFindHydratableTextInstance=shim,
didNotFindHydratableSuspenseInstance=shim,
}end function a.a_():typeof(__modImpl())local b=a.cache.a_ if not b then b={c=__modImpl()}a.cache.a_=b end return b.c end end do local function __modImpl()











local b=a.aZ()




local function shim(...)
b(
false,[[The current renderer does not support persistence. This error is likely caused by a bug in React. Please file an issue.]]



)
end


return{
supportsPersistence=false,
cloneInstance=shim,
cloneFundamentalInstance=shim,
createContainerChildSet=shim,
appendChildToContainerChildSet=shim,
finalizeContainerChildren=shim,
replaceContainerChildren=shim,
cloneHiddenInstance=shim,
cloneHiddenTextInstance=shim,
}end function a.a0():typeof(__modImpl())local b=a.cache.a0 if not b then b={c=__modImpl()}a.cache.a0=b end return b.c end end do local function __modImpl()











local b=a.aZ()




local function shim(...)
b(
false,[[The current renderer does not support test selectors. This error is likely caused by a bug in React. Please file an issue.]]



)
end


return{
supportsTestSelectors=false,
findFiberRoot=shim,
getBoundingRect=shim,
getTextContent=shim,
isHiddenSubtree=shim,
matchAccessibilityRole=shim,
setFocusIfFocusable=shim,
setupIntersectionObserver=shim,
}end function a.a1():typeof(__modImpl())local b=a.cache.a1 if not b then b={c=__modImpl()}a.cache.a1=b end return b.c end end do local function __modImpl()



































return{
WithNoHydration=a.a_(),
WithNoPersistence=a.a0(),
WithNoTestSelectors=a.a1(),
}end function a.a2():typeof(__modImpl())local b=a.cache.a2 if not b then b={c=__modImpl()}a.cache.a2=b end return b.c end end do local function __modImpl()a.aV()a.aY()a.aX()





























































































local b:{current:nil|Dispatcher__DARKLUA_TYPE_c1}={





current=nil,
}

return b end function a.a3():typeof(__modImpl())local b=a.cache.a3 if not b then b={c=__modImpl()}a.cache.a3=b end return b.c end end do local function __modImpl()
















local b={
transition=0,
}

return b end function a.a4():typeof(__modImpl())local b=a.cache.a4 if not b then b={c=__modImpl()}a.cache.a4=b end return b.c end end do local function __modImpl()


















local b={





current=nil::any,

}

return b end function a.a5():typeof(__modImpl())local b=a.cache.a5 if not b then b={c=__modImpl()}a.cache.a5=b end return b.c end end do local function __modImpl()












local b={}

local c=nil::nil|string

function b.setExtraStackFrame(d:string?):()
if _G.__DEV__ then
c=d
end
end

if _G.__DEV__ then








b.getCurrentStack=nil::nil|(()->string)

function b.getStackAddendum():string
local d=""


if c then
d=d..c
end


local e=b.getCurrentStack
if e then
d=d..(e()or"")
end

return d
end
end

return b end function a.a6():typeof(__modImpl())local b=a.cache.a6 if not b then b={c=__modImpl()}a.cache.a6=b end return b.c end end do local function __modImpl()
















local b={
current=false,
}
return b end function a.a7():typeof(__modImpl())local b=a.cache.a7 if not b then b={c=__modImpl()}a.cache.a7=b end return b.c end end do local function __modImpl()

























local b=a.aV().console
local function onlyInTestError(c:string)
return function()
b.error(c.." is only available in tests, not in production")
end
end


local c=a.a3()

local d=a.a4()
local e=a.a5()
local f=a.a6()
local g=a.a7()

local h={
ReactCurrentDispatcher=c,
ReactCurrentBatchConfig=d,
ReactCurrentOwner=e,
IsSomeRendererActing=g,


ReactDebugCurrentFrame=if _G.__DEV__
then f
else{
setExtraStackFrame=function(h:string?):()
onlyInTestError"setExtraStackFrame"
end,
},



}

return h end function a.a8():typeof(__modImpl())local b=a.cache.a8 if not b then b={c=__modImpl()}a.cache.a8=b end return b.c end end do local function __modImpl()

















local b=a.aV()



local c=b.Error
local d=b.util.inspect

local e="\n------ Error caught by React ------\n"








local function describeError(f:string|Error__DARKLUA_TYPE_c3):Error__DARKLUA_TYPE_c3
if typeof(f)=="string"then local
g, h=string.find(f,":[%d]+: ")
local i=if h then string.sub(f,h+1)else f

local j=b.Error.new(i)
j.stack=debug.traceback(nil,2)
return j
end
return f::Error__DARKLUA_TYPE_c3
end









local function errorToString(f:Error__DARKLUA_TYPE_c3|Object__DARKLUA_TYPE_c4|string|Array__DARKLUA_TYPE_c5<any>):string
local g
if typeof(f)=="table"then
if(f::Error__DARKLUA_TYPE_c3).message and(f::Error__DARKLUA_TYPE_c3).stack then



g=e
..(f::Error__DARKLUA_TYPE_c3).message
..e
..tostring((f::Error__DARKLUA_TYPE_c3).stack)
else
g=d(f)
end
else
g=d(f)
end

return g
end






local function parseReactError(f:string):(Error__DARKLUA_TYPE_c3,string)
local g=string.split(f,e)

if#g==3 then
local h,i,j=table.unpack(g)

local k=c.new(i)
k.stack=j

return k,h
else



local h=c.new(f)
h.stack=nil

return h,""
end
end

return{
describeError=describeError,
errorToString=errorToString,
parseReactError=parseReactError,

__ERROR_DIVIDER=e,
}end function a.a9():typeof(__modImpl())local b=a.cache.a9 if not b then b={c=__modImpl()}a.cache.a9=b end return b.c end end do local function __modImpl()








local b=a.aV()
local c=b.console
local d=b.Array

local e=a.a8()








local f

local g={}
g.warn=function(h,...)
if _G.__DEV__ then
f("warn",h,{...})
end
end
g.error=function(h,...)
if _G.__DEV__ then
f("error",h,{...})
end
end

function f(h,i,j)


if _G.__DEV__ then
local k=e.ReactDebugCurrentFrame
local l=k.getStackAddendum()

if l~=""then
i..="%s"

j=d.slice(j,1)
table.insert(j,l)
end

local m=d.map(j,tostring)

table.insert(m,1,"Warning: "..i)



c[h](unpack(m))
end
end

return g end function a.ba():typeof(__modImpl())local b=a.cache.ba if not b then b={c=__modImpl()}a.cache.ba=b end return b.c end end do local function __modImpl()





















local b=a.aV()
local c=b.console
local d=a.ba()

if _G.__DEV__ then
local e=setmetatable({
warn=d.warn,
error=d.error,
},{
__index=c,
})
return e
end

return c end function a.bb():typeof(__modImpl())local b=a.cache.bb if not b then b={c=__modImpl()}a.cache.bb=b end return b.c end end do local function __modImpl()



















local b:{[string]:any}={}



b.REACT_ELEMENT_TYPE=0xeac7
b.REACT_PORTAL_TYPE=0xeaca
b.REACT_FRAGMENT_TYPE=0xeacb
b.REACT_STRICT_MODE_TYPE=0xeacc
b.REACT_PROFILER_TYPE=0xead2
b.REACT_PROVIDER_TYPE=0xeacd
b.REACT_CONTEXT_TYPE=0xeace
b.REACT_FORWARD_REF_TYPE=0xead0
b.REACT_SUSPENSE_TYPE=0xead1
b.REACT_SUSPENSE_LIST_TYPE=0xead8
b.REACT_MEMO_TYPE=0xead3
b.REACT_LAZY_TYPE=0xead4
b.REACT_BLOCK_TYPE=0xead9
b.REACT_SERVER_BLOCK_TYPE=0xeada
b.REACT_FUNDAMENTAL_TYPE=0xead5
b.REACT_SCOPE_TYPE=0xead7
b.REACT_OPAQUE_ID_TYPE=0xeae0
b.REACT_DEBUG_TRACING_MODE_TYPE=0xeae1
b.REACT_OFFSCREEN_TYPE=0xeae2
b.REACT_LEGACY_HIDDEN_TYPE=0xeae3
b.REACT_BINDING_TYPE=0xeae4







































b.getIteratorFn=function(c):nil|((...any)->Iterator__DARKLUA_TYPE_c6<any>)
if typeof(c)=="table"then


if c["$$typeof"]==b.REACT_PORTAL_TYPE then
return nil
end
return function()
local d:any,e:any
return{
next=function()
d,e=next(c,d)
return{
done=e==nil,


key=d,
value=e,
}
end,
}
end
end

return nil
end

return b end function a.bc():typeof(__modImpl())local b=a.cache.bc if not b then b={c=__modImpl()}a.cache.bc=b end return b.c end end do local function __modImpl()
















local b=a.bb()





local c=0
local d
local e
local f
local g
local h
local i
local j

local k=function()end

local l={}




l.disabledLog=k

l.disableLogs=function()
if _G.__DEV__ then
if c==0 then
d=b.log
e=b.info
f=b.warn
g=b.error
h=b.group
i=b.groupCollapsed
j=b.groupEnd

b.info=k
b.log=k
b.warn=k
b.error=k
b.group=k
b.groupCollapsed=k
b.groupEnd=k
end

c=c+1
end
end

l.reenableLogs=function()
if _G.__DEV__ then
c=c-1

if c==0 then
b.log=d
b.info=e
b.warn=f
b.error=g
b.group=h
b.groupCollapsed=i
b.groupEnd=j
end

if c<0 then
b.error[[disabledDepth fell below zero. This is a bug in React. Please file an issue.]]



end
end
end

return l end function a.bd():typeof(__modImpl())local b=a.cache.bd if not b then b={c=__modImpl()}a.cache.bd=b end return b.c end end do local function __modImpl()a.aY()a.aW()






























local b=a.bc()
local c=b.REACT_SUSPENSE_TYPE
local d=b.REACT_SUSPENSE_LIST_TYPE
local e=b.REACT_FORWARD_REF_TYPE
local f=b.REACT_MEMO_TYPE
local g=b.REACT_BLOCK_TYPE
local h=b.REACT_LAZY_TYPE

local i=a.bd()
local j=i.disableLogs
local k=i.reenableLogs

local l=a.a8()
local m=l.ReactCurrentDispatcher



local n="    in "



local o
local p




local function describeOwner(q:nil|ReactComponent__DARKLUA_TYPE_dc<any>):string?
if type(q)=="function"then
return debug.info(q::(any)->any,"n")
elseif type(q)=="table"then
return tostring(q)
end
return nil
end

local function describeBuiltInComponentFrame(
q:string,
r:Source__DARKLUA_TYPE_c9|nil,

s:nil|ReactComponent__DARKLUA_TYPE_dc<any>
):string


























local t
if _G.__DEV__ and s then
t=describeOwner(s)
end

return o(q,r,t)

end

local q=false
local r
if _G.__DEV__ then
r=setmetatable({},{__mode="k"})
end

local function describeNativeComponentFrame(
s:nil|ReactComponent__DARKLUA_TYPE_dc<any>,
t:boolean
):string

if not s or q then
return""
end

if _G.__DEV__ then
local u=r[s]

if u~=nil then
return u
end
end

local u
q=true




local v

if _G.__DEV__ then
v=m.current


m.current=nil
j()
end







local w local
x, y=xpcall(function()
if t then



else local
x, y=pcall(function()
w=debug.traceback()
error{
stack=w,
}
end)
u=y;

(s::(...any)->...any)()
end
end,function(x)
return{
message=x,
stack=w,
}
end)





local z

if y and u and type(y.stack)=="string"then


local A=string.split(y.stack,"\n")
local B=string.split(u.stack,"\n")


local C=#A-1
local D=#B-1

while
C>=2
and D>=0
and A[C]~=B[D]
do






D=D-1
end

while C>=3 and D>=1 do
C=C-1
D=D-1


if A[C]~=B[D]then





if C~=1 or D~=1 then
repeat
C=C-1
D=D-1


if
D<0
or A[C]~=B[D]
then


local E="\n"..n..A[C]

if _G.__DEV__ then
r[s]=E
end



z=E
end
until not(C>=3 and D>=1)
end

break
end
end
end

q=false
if _G.__DEV__ then
m.current=v
k()
end





if z~=nil then
return z
end



local A=if type(s)=="function"
then debug.info(s::Function__DARKLUA_TYPE_c8,"n")

else if type(s)=="table"then tostring(s)else""

local B=""
if A~=nil and A~=""then
B=describeBuiltInComponentFrame(A)
end

if _G.__DEV__ then
r[s]=B
end

return B
end


local s="^(.*)[\\/]"

function o(
t:string|nil,
u:Source__DARKLUA_TYPE_c9|nil,
v:string|nil
):string
local w=""

if _G.__DEV__ and u then
local x=u.fileName
local y=string.gsub(x,s,"")





if string.match(y,"^init%.")then

local z=string.match(x,s)

if z and#z~=0 then
local A=string.gsub(z,s,"")
y=A.."/"..y
end
end

w=" (at "..y..":"..u.lineNumber..")"
elseif v then
w=" (created by "..v..")"
end

return"\n    in "..(t or"Unknown")..w
end

local function describeClassComponentFrame(

t:any,
u:nil|Source__DARKLUA_TYPE_c9,

v:nil|ReactComponent__DARKLUA_TYPE_dc<any>
):string








local w=tostring(t)
local x
if _G.__DEV__ and v then
x=describeOwner(v)
end
return o(w,u,x)

end

function p(

t:nil|Function__DARKLUA_TYPE_c8,
u:nil|Source__DARKLUA_TYPE_c9,

v:nil|ReactComponent__DARKLUA_TYPE_dc<any>
):string
















if not t then
return""
end


local w=if type(t)=="function"
then debug.info(t::Function__DARKLUA_TYPE_c8,"n")
else tostring(t)
local x
if _G.__DEV__ and v then

x=describeOwner(v)
end
return o(w,u,x)
end









local function describeUnknownElementTypeFrameInDEV(
t:any,
u:nil|Source__DARKLUA_TYPE_c9,

v:nil|ReactComponent__DARKLUA_TYPE_dc<any>
):string
if not _G.__DEV__ then
return""
end
if t==nil then
return""
end



if type(t)=="table"and type(t.__ctor)=="function"then



return describeClassComponentFrame(t,u,v)
end

if type(t)=="function"then









return p(t,u,v)
end

if type(t)=="string"then
return describeBuiltInComponentFrame(t,u,v)
end

if t==c then
return describeBuiltInComponentFrame("Suspense",u,v)
elseif t==d then
return describeBuiltInComponentFrame("SuspenseList",u,v)
end

if type(t)=="table"then
local w=t["$$typeof"]
if w==e then
return p(t.render,u,v)
elseif w==f then

return describeUnknownElementTypeFrameInDEV(t.type,u,v)
elseif w==g then
return p(t._render,u,v)
elseif w==h then
local x=t
local y=x._payload
local z=x._init

local A,B=pcall(function()
describeUnknownElementTypeFrameInDEV(

z(y),
u,
v
)
end)

if A then
return B
end
end
end

return""
end

return{




describeComponentFrame=o,

describeBuiltInComponentFrame=describeBuiltInComponentFrame,
describeNativeComponentFrame=describeNativeComponentFrame,
describeClassComponentFrame=describeClassComponentFrame,
describeFunctionComponentFrame=p,
describeUnknownElementTypeFrameInDEV=describeUnknownElementTypeFrameInDEV,
}end function a.be():typeof(__modImpl())local b=a.cache.be if not b then b={c=__modImpl()}a.cache.be=b end return b.c end end do local function __modImpl()











local b=a.aV()
local c=b.Error




local d=a.bb()

local e={}

local f=a.be()
local g=
f.describeUnknownElementTypeFrameInDEV

local h=a.a8()

local i=a.a9().describeError

local j=h.ReactDebugCurrentFrame


local function setCurrentlyValidatingElement(k:any?)
if _G.__DEV__ then
if k then
local l=k._owner
local m=g(
k.type,
k._source,
if l~=nil then l.type else nil
);

(j.setExtraStackFrame::any)(m)
else
(j.setExtraStackFrame::any)(nil)
end
end
end

local function checkPropTypes<P>(

k:Object__DARKLUA_TYPE_dd?,
l:((P)->(boolean,string?))?,
m:P,

n:string,
o:string?,
p:any?
):()
if _G.__DEV__ or _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ then





if k and l then
d.warn(
"You've defined both propTypes and validateProps on "
..(o or"a component")
)
end


if l then
if typeof(l)~="function"then
d.error(
("validateProps must be a function, but it is a %s.\nCheck the definition of the component %q."):format(
typeof(l),
o or""
)
)
else
local q,r=l(m)

if not q then
r=r
or"<Validator function did not supply a message>"
local s=string.format(
"validateProps failed on a %s type in %s: %s",
n,
o or"<UNKNOWN Component>",
tostring(r)
)




error(s)
end
end
end

if k then

assert(typeof(k)=="table","propTypes needs to be a table")
for q,r in k do local







s, t=xpcall(function()


if typeof(k[q])~="function"then
local s=c.new(
(o or"React class")
..": "
..n
.." type `"
..q
.."` is invalid; "
.."it must be a function, usually from the `prop-types` package, but received `"
..typeof(k[q])
..[[`.This often happens because of typos such as `PropTypes.function` instead of `PropTypes.func`.]]

)
s.name="Invariant Violation"
error(s)
end

return(k[q]::Function__DARKLUA_TYPE_de)(
m,
q,
o,
n,
nil,
"SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED"
)
end,i)




local u=typeof(t)=="table"
if t~=nil and not u then
setCurrentlyValidatingElement(p)
d.error(string.format([[%s: type specification of %s `%s` is invalid; the type checker function must return `nil` or an `Error` but returned a %s. You may have forgotten to pass an argument to the type checker creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and shape all require an argument).]]






,
o or"React class",
n,
q,
typeof(t)
))
setCurrentlyValidatingElement(nil)
end


if
u
and e[(t::any).message]==nil
then


e[tostring((t::any).message)]=true
setCurrentlyValidatingElement(p)
d.warn(
string.format(
"Failed %s type: %s",
n,
tostring((t::any).message)
)
)
setCurrentlyValidatingElement(nil)
end
end
end
end
end

return checkPropTypes end function a.bf():typeof(__modImpl())local b=a.cache.bf if not b then b={c=__modImpl()}a.cache.bf=b end return b.c end end do local function __modImpl()










local b=a.aV()
local c=b.setTimeout

return function(d)

return c(d,0)
end end function a.bg():typeof(__modImpl())local b=a.cache.bg if not b then b={c=__modImpl()}a.cache.bg=b end return b.c end end do local function __modImpl()











local b={}

b.canUseDOM=function()

return false

end

return b end function a.bh():typeof(__modImpl())local b=a.cache.bh if not b then b={c=__modImpl()}a.cache.bh=b end return b.c end end do local function __modImpl()















local b=game:GetService"HttpService"

local function formatProdErrorMessage(c,...)
local d="https://reactjs.org/docs/error-decoder.html?invariant="..tostring(c)
local e=select("#",...)
for f=1,e,1 do

d=d.."&args[]="..b:UrlEncode(select(f,...))
end
return string.format([[Minified React error #%d; visit %s for the full message or use the non-minified dev environment for full errors and additional helpful warnings.]]


,
c,
d
)
end

return formatProdErrorMessage end function a.bi():typeof(__modImpl())local b=a.cache.bi if not b then b={c=__modImpl()}a.cache.bi=b end return b.c end end do local function __modImpl()












local b=a.bb()








local c=a.bc()
local d=c.REACT_CONTEXT_TYPE
local e=c.REACT_FORWARD_REF_TYPE
local f=c.REACT_FRAGMENT_TYPE
local g=c.REACT_PORTAL_TYPE
local h=c.REACT_MEMO_TYPE
local i=c.REACT_PROFILER_TYPE
local j=c.REACT_PROVIDER_TYPE
local k=c.REACT_STRICT_MODE_TYPE
local l=c.REACT_SUSPENSE_TYPE
local m=c.REACT_SUSPENSE_LIST_TYPE
local n=c.REACT_LAZY_TYPE
local o=c.REACT_BLOCK_TYPE a.aX()




local p=a.a9().describeError

local function getWrappedName(q:any,r:any,s:string):string

local t="<function>"
if typeof(r)=="table"then
t=r.displayName or r.name or""
end
return q.displayName
or(
t~=""and string.format("%s(%s)",s,t)
or s
)
end

local function getContextName(q:ReactContext__DARKLUA_TYPE_dh<any>):string
return q.displayName or"Context"
end

local function getComponentName(q:any):string|nil
if q==nil then

return nil
end
local r=typeof(q)

if _G.__DEV__ then
if r=="table"and typeof(q.tag)=="number"then
b.warn[[Received an unexpected object in getComponentName(). This is likely a bug in React. Please file an issue.]]



end
end

if r=="function"then


local s=debug.info((q::any)::Function__DARKLUA_TYPE_df,"n")

if s and string.len(s)>0 then
return s
else
return nil
end
end

if r=="string"then
return(q::any)::string
end

if q==f then
return"Fragment"
elseif q==g then
return"Portal"
elseif q==i then
return"Profiler"
elseif q==k then
return"StrictMode"
elseif q==l then
return"Suspense"
elseif q==m then
return"SuspenseList"
end

if r=="table"then
local s=q["$$typeof"]
if s==d then
local t:ReactContext__DARKLUA_TYPE_dh<any> =q::any
return getContextName(t)..".Consumer"
elseif s==j then
local t:ReactProviderType__DARKLUA_TYPE_di<any> =q::any
return getContextName(t._context)..".Provider"
elseif s==e then
return getWrappedName(q,q.render,"ForwardRef")
elseif s==h then
return getComponentName(q.type)
elseif s==o then
return getComponentName(q._render)
elseif s==n then
local t:LazyComponent__DARKLUA_TYPE_dg<any,any> =q::any
local u=t._payload
local v=t._init


local w,x=xpcall(v,p,u)
if w then
return getComponentName(x)
else
return nil
end
else




if q.displayName then
return q.displayName
end
if q.name then
return q.name
end

local t=getmetatable(q)
if t and rawget(t,"__tostring")then
return tostring(q)
end
end
end

return nil
end

return getComponentName end function a.bj():typeof(__modImpl())local b=a.cache.bj if not b then b={c=__modImpl()}a.cache.bj=b end return b.c end end do local function __modImpl()












local b=a.a9().describeError


local function invokeGuardedCallbackProd(c,d,e,f,...)



local g,h
if not _G.__YOLO__ then




if f==nil then
g,h=xpcall(e,b,...)
else
g,h=xpcall(e,b,f,...)
end
else
g=true
if f==nil then
e(...)
else
e(f,...)
end
end

if not g then



c.onError(h)
end
end

local c=invokeGuardedCallbackProd

if _G.__DEV__ then































































































































































end

return c end function a.bk():typeof(__modImpl())local b=a.cache.bk if not b then b={c=__modImpl()}a.cache.bk=b end return b.c end end do local function __modImpl()










local b=a.bc()
local c=b.REACT_CONTEXT_TYPE
local d=b.REACT_FORWARD_REF_TYPE
local e=b.REACT_FRAGMENT_TYPE
local f=b.REACT_PROFILER_TYPE
local g=b.REACT_PROVIDER_TYPE
local h=b.REACT_DEBUG_TRACING_MODE_TYPE
local i=b.REACT_STRICT_MODE_TYPE
local j=b.REACT_SUSPENSE_TYPE

local k=b.REACT_MEMO_TYPE
local l=b.REACT_LAZY_TYPE
local m=b.REACT_FUNDAMENTAL_TYPE

local n=b.REACT_BLOCK_TYPE
local o=b.REACT_SERVER_BLOCK_TYPE
local p=b.REACT_LEGACY_HIDDEN_TYPE




return function(q)
local r=typeof(q)
if r=="string"or r=="function"then
return true
end


if
q==e
or q==f
or q==h
or q==i
or q==j
or q==p



then
return true
end

if r=="table"then


if q.isReactComponent then
return true
end

if
q["$$typeof"]==l
or q["$$typeof"]==k
or q["$$typeof"]==g
or q["$$typeof"]==c
or q["$$typeof"]==d
or q["$$typeof"]==m
or q["$$typeof"]==n
or q[1]==o
then
return true
end
end

return false
end end function a.bl():typeof(__modImpl())local b=a.cache.bl if not b then b={c=__modImpl()}a.cache.bl=b end return b.c end end do local function __modImpl()
















local function is(b:any,c:any):boolean
return b==c and(b~=0 or 1/b==1/c)or b~=b and c~=c
end


local b=is

return b end function a.bm():typeof(__modImpl())local b=a.cache.bm if not b then b={c=__modImpl()}a.cache.bm=b end return b.c end end do local function __modImpl()











local b=a.aZ()
local c=a.bk()


local d


local e=false
local f


local g=false
local h
local i={
onError=function(i)
e=true
f=i
end,
}
local j={}














j.invokeGuardedCallback=function(...)
e=false
f=nil

c(i,...)
end











j.invokeGuardedCallbackAndCatchFirstError=function(...)

j.invokeGuardedCallback(...)

if e then
local k=d()

if not g then
g=true
h=k
end
end
end





j.rethrowCaughtError=function()
if g then
local k=h
g=false
h=nil
error(k)
end
end

j.hasCaughtError=function()
return e
end

d=function()
if e then
local k=f
e=false
f=nil
return k
else
b(
false,[[clearCaughtError was called but no error was captured. This error is likely caused by a bug in React. Please file an issue.]]


)

return nil
end
end
j.clearCaughtError=d

return j end function a.bn():typeof(__modImpl())local b=a.cache.bn if not b then b={c=__modImpl()}a.cache.bn=b end return b.c end end do local function __modImpl()













local b={}



b.enableFilterEmptyStringAttributesDOM=true



b.enableDebugTracing=false



b.enableSchedulingProfiler=_G.__PROFILE__ and _G.__EXPERIMENTAL__




b.debugRenderPhaseSideEffectsForStrictMode=_G.__DEV__



b.replayFailedUnitOfWorkWithInvokeGuardedCallback=_G.__DEV__


b.warnAboutDeprecatedLifecycles=true


b.enableProfilerTimer=_G.__PROFILE__


b.enableProfilerCommitHooks=false


b.enableSchedulerTracing=_G.__PROFILE__


b.enableSuspenseServerRenderer=_G.__EXPERIMENTAL__
b.enableSelectiveHydration=_G.__EXPERIMENTAL__


b.enableBlocksAPI=_G.__EXPERIMENTAL__
b.enableLazyElements=_G.__EXPERIMENTAL__


b.enableSchedulerDebugging=false


b.disableJavaScriptURLs=false


b.enableFundamentalAPI=false


b.enableScopeAPI=false


b.enableCreateEventHandleAPI=false





b.warnAboutUnmockedScheduler=false






b.enableSuspenseCallback=false




b.warnAboutDefaultPropsOnFunctionComponents=false

b.disableSchedulerTimeoutBasedOnReactExpirationTime=false

b.enableTrustedTypesIntegration=false



b.warnAboutSpreadingKeyToJSX=true

b.enableComponentStackLocations=true

b.enableNewReconciler=true





b.skipUnmountedBoundaries=true







b.disableInputAttributeSyncing=true

b.warnAboutStringRefs=false

b.disableLegacyContext=false


b.disableTextareaChildren=false

b.disableModulePatternComponents=false


b.warnUnstableRenderSubtreeIntoContainer=false


b.enableLegacyFBSupport=true






b.deferRenderPhaseUpdateToNextBatch=false


b.decoupleUpdatePriorityFromScheduler=true

b.enableDiscreteEventFlushingChange=false

b.enableEagerRootListeners=false

b.enableDoubleInvokingEffects=false
return b end function a.bo():typeof(__modImpl())local b=a.cache.bo if not b then b={c=__modImpl()}a.cache.bo=b end return b.c end end do local function __modImpl()


























local b=a.aV()
local c=b.Error
local d=b.util.inspect
local e=a.bj()

local f={}

local function isValidFiber(g):boolean
return g.tag~=nil
and g.subtreeFlags~=nil
and g.lanes~=nil
and g.childLanes~=nil
end

f.remove=function(g)
g._reactInternals=nil
end

f.get=function(g)
local h=g._reactInternals



if not isValidFiber(h)then
error(
c.new(
"invalid fiber in "
..(e(g)or"UNNAMED Component")
.." during get from ReactInstanceMap! "
..d(h)
)
)
elseif h.alternate~=nil and not isValidFiber(h.alternate)then
error(
c.new(
"invalid alternate fiber ("
..(e(g)or"UNNAMED alternate")
..") in "
..(e(g)or"UNNAMED Component")
.." during get from ReactInstanceMap! "
..d(h.alternate)
)
)
end

return h
end

f.has=function(g)
return g._reactInternals~=nil
end

f.set=function(g,h)


local i=h
local j
while i~=nil do
if not isValidFiber(i)then
j="invalid fiber in "
..(e(g)or"UNNAMED Component")
.." being set in ReactInstanceMap! "
..d(i)
.."\n"

if h~=i then
j..=" (from original fiber "..(e(g)or"UNNAMED Component")..")"
end
error(c.new(j))
elseif
(i::any).alternate~=nil
and not isValidFiber((i::any).alternate)
then
j="invalid alternate fiber ("
..(e(g)or"UNNAMED alternate")
..") in "
..(e(g)or"UNNAMED Component")
.." being set in ReactInstanceMap! "
..d((i::any).alternate)
.."\n"

if h~=i then
j..=" (from original fiber "..(e(g)or"UNNAMED Component")..")"
end
error(c.new(j))
end
i=(i::any).return_
end

(g::any)._reactInternals=h
end

return f end function a.bp():typeof(__modImpl())local b=a.cache.bp if not b then b={c=__modImpl()}a.cache.bp=b end return b.c end end do local function __modImpl()











return"17.2.1"end function a.bq():typeof(__modImpl())local b=a.cache.bq if not b then b={c=__modImpl()}a.cache.bq=b end return b.c end end do local function __modImpl()











local b=a.bm()






local function shallowEqual(c,d)
if b(c,d)then
return true
end

if
typeof(c)~="table"
or c==nil
or typeof(d)~="table"
or d==nil
then
return false
end



for e,f in c do
if not b(d[e],f)then
return false
end
end

for e,f in d do
if not b(c[e],f)then
return false
end
end

return true
end

return shallowEqual end function a.br():typeof(__modImpl())local b=a.cache.br if not b then b={c=__modImpl()}a.cache.br=b end return b.c end end do local function __modImpl()
















local b=a.bb()



local c={}

setmetatable(c,{
__index=function(d,e)
if _G.__DEV__ then
b.warn
"Attempted to access uninitialized state. Use setState to initialize state"

end
return nil
end,
__newindex=function(d,e)
if _G.__DEV__ then
b.error
"Attempted to directly mutate state. Use setState to assign new values to state."

end
return nil
end,
__tostring=function(d)
return"<uninitialized component state>"
end,
__metatable="UninitializedState",
})

return c end function a.bs():typeof(__modImpl())local b=a.cache.bs if not b then b={c=__modImpl()}a.cache.bs=b end return b.c end end do local function __modImpl()






















local b={}







function b.named(c)
assert(type(c)=="string","Symbols must be created using a string name!")

local d=newproxy(true)

local e=string.format("Symbol(%s)",c)

getmetatable(d).__tostring=function()
return e
end

return d
end

return b end function a.bt():typeof(__modImpl())local b=a.cache.bt if not b then b={c=__modImpl()}a.cache.bt=b end return b.c end end do local function __modImpl()


























local b=a.bt()

local c=newproxy(true)

local d={}

local function addType(e)
d[e]=b.named("Roact"..e)
end

addType"HostChangeEvent"
addType"HostEvent"

function d.of(e)
if typeof(e)~="table"then
return nil
end

return e[c]
end

getmetatable(c).__index=d

getmetatable(c).__tostring=function()
return"RoactType"
end

return c end function a.bu():typeof(__modImpl())local b=a.cache.bu if not b then b={c=__modImpl()}a.cache.bu=b end return b.c end end do local function __modImpl()




























local b=a.bu()

local c={}

local d={
__tostring=function(d)
return string.format("RoactHostChangeEvent(%s)",d.name)
end,
}

setmetatable(c,{
__index=function(e,f)
local g={
[b]=b.HostChangeEvent,
name=f,
}

setmetatable(g,d)
c[f]=g

return g
end,
})

return c end function a.bv():typeof(__modImpl())local b=a.cache.bv if not b then b={c=__modImpl()}a.cache.bv=b end return b.c end end do local function __modImpl()






























local b=a.bu()

local c={}

local d={
__tostring=function(d)
return string.format("RoactHostEvent(%s)",d.name)
end,
}

setmetatable(c,{
__index=function(e,f)
local g={
[b]=b.HostEvent,
name=f,
}

setmetatable(g,d)

c[f]=g

return g
end,
})

return c end function a.bw():typeof(__modImpl())local b=a.cache.bw if not b then b={c=__modImpl()}a.cache.bw=b end return b.c end end do local function __modImpl()


















local b=a.bt()

local c=b.named"RobloxTag"

return c end function a.bx():typeof(__modImpl())local b=a.cache.bx if not b then b={c=__modImpl()}a.cache.bx=b end return b.c end end do local function __modImpl()a.aV()






















local b=a.aX()a.aW()a.aY()


local c=a.a2()
local d=a.a8()
local e=a.a9()


































































return{
checkPropTypes=a.bf(),
console=a.bb(),
ConsolePatchingDev=a.bd(),
consoleWithStackDev=a.ba(),
enqueueTask=a.bg(),
ExecutionEnvironment=a.bh(),
formatProdErrorMessage=a.bi(),
getComponentName=a.bj(),
invariant=a.aZ(),
invokeGuardedCallbackImpl=a.bk(),
isValidElementType=a.bl(),
objectIs=a.bm(),
ReactComponentStackFrame=a.be(),
ReactElementType=a.aY(),
ReactErrorUtils=a.bn(),
ReactFeatureFlags=a.bo(),
ReactInstanceMap=a.bp(),


ReactSharedInternals=d,



ReactFiberHostConfig=c,

ReactSymbols=a.bc(),
ReactVersion=a.bq(),
shallowEqual=a.br(),
UninitializedState=a.bs(),
ReactTypes=b,



describeError=e.describeError,
errorToString=e.errorToString,
parseReactError=e.parseReactError,


Symbol=a.bt(),
Type=a.bu(),


Change=a.bv(),
Event=a.bw(),
Tag=a.bx(),
}end function a.by():typeof(__modImpl())local b=a.cache.by if not b then b={c=__modImpl()}a.cache.by=b end return b.c end end do local function __modImpl()

return a.by()end function a.bz():typeof(__modImpl())local b=a.cache.bz if not b then b={c=__modImpl()}a.cache.bz=b end return b.c end end do local function __modImpl()a.bz()














local function createMutableSource<Source>(
b:Source,
c:MutableSourceGetVersionFn__DARKLUA_TYPE_d3
):MutableSource__DARKLUA_TYPE_d4<Source>
local d:MutableSource__DARKLUA_TYPE_d4<Source> ={
_getVersion=c,
_source=b,
_workInProgressVersionPrimary=nil,
_workInProgressVersionSecondary=nil,
}

if _G.__DEV__ then
d._currentPrimaryRenderer=nil
d._currentSecondaryRenderer=nil
end

return d
end

return createMutableSource end function a.bA():typeof(__modImpl())local b=a.cache.bA if not b then b={c=__modImpl()}a.cache.bA=b end return b.c end end do local function __modImpl()










local b=a.bz().console

local c={}

local function warnNoop(d:any,e:string)
if _G.__DEV__ then




local f=d.__componentName or"ReactClass"
local g=f.."."..e
if c[g]then
return
end

b.error([[Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method.]]



,
e,
f
)
c[g]=true
end
end




local d={







isMounted=function(d)
return false
end,















enqueueForceUpdate=function(d,e,f)
warnNoop(d,"forceUpdate")
end,













enqueueReplaceState=function(d,e,f,g)
warnNoop(d,"replaceState")
end,












enqueueSetState=function(d,e,f,g)
warnNoop(d,"setState")
end,
}

return d end function a.bB():typeof(__modImpl())local b=a.cache.bB if not b then b={c=__modImpl()}a.cache.bB=b end return b.c end end do local function __modImpl()









local b=_G.__DEV__::boolean
local c=_G.__COMPAT_WARNINGS__::boolean
local d=a.aV()
local e=d.Object


local f=a.bz().console a.bz()






local g=a.bB()
local h={}

if b then
e.freeze(h)
end



local i=a.bz().UninitializedState







local j={
isReactComponent=true,
}






local function trimPath(k:string):string





local l=string.match(k,"%.%u[%.%w]-$")
if l then
return string.gsub(l,"^%.","")
end

return k
end

local function warnAboutExistingLifecycle(k,l,m)
f.warn(
"%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name.",
k,
m,
l,
k
)
end

local function warnAboutDeprecatedLifecycleName(k,l,m)
if b and c then
local n,o=debug.info(3,"sln")
f.warn(
"%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s",
k,
l,
m,
trimPath(n),
tostring(o)
)
end
end

local k={
didMount="componentDidMount",
shouldUpdate="shouldComponentUpdate",
willUpdate="UNSAFE_componentWillUpdate",
didUpdate="componentDidUpdate",
willUnmount="componentWillUnmount",
}

local function handleNewLifecycle(l,m,n)

if k[m]~=nil then

if l[k[m] ]~=nil then
warnAboutExistingLifecycle(l.__componentName,m,k[m])

elseif m=="willUpdate"and l.componentWillUpdate then
warnAboutExistingLifecycle(
l.__componentName,
m,
"UNSAFE_componentWillUpdate"
)

else
warnAboutDeprecatedLifecycleName(
l.__componentName,
m,
k[m]
)
end

m=k[m]
end
rawset(l,m,n)
end

local l={
__newindex=handleNewLifecycle,
__index=j,
__tostring=function(l)
return l.__componentName
end,
}






local m=(
setmetatable({__componentName="Component"},l)::any
)::React_BaseComponent__DARKLUA_TYPE_d7









local n=if not _G.__TESTEZ_RUNNING_TEST__ then 900 else 0
local o=1
local p=table.create(n)
for q=1,n do
table.insert(p,{

props=nil,
context=nil,
state=i,
__refs=h,
__updater=g,
})
end

local function setStateInInit(
q:React_Component__DARKLUA_TYPE_d6<any,any>,
r:any,
s:nil
):()
if b and(s::any)~=nil then
f.warn([[Received a `callback` argument to `setState` during initialization of "%s". The callback behavior is not supported when using `setState` in `init`.

Consider defining similar behavior in a `compontentDidMount` method instead.]]

,
q.__componentName
)
end


local t=r and type(r)
if
r==nil
or(t~="table"and t~="function")
then
error[[setState(...): takes an object of state variables to update or a function which returns an object of state variables.]]



end
local u=q.state
local v
if t=="function"then

v=r(u,q.props)
else

v=r
end


q.state=e.assign({},u,v)
end

function m.extend(q,r):React_Component__DARKLUA_TYPE_d6<any,any>


if r==nil then
if c then
f.warn[[Component:extend() accepting no arguments is deprecated, and will not be supported in a future version of Roact. Please provide an explicit name.]]



end
r=""
elseif type(r)~="string"then
error"Component class name must be a string"
end


local s={
__componentName=r,
setState=q.setState,
forceUpdate=q.forceUpdate,
init=nil,
}









s.__index=s


function s.__ctor<P>(t:P,u,v):React_Component__DARKLUA_TYPE_d6<P,any>
local w

if o<=n then
w=p[o]


w.props=t::any
w.context=u

p[o]=nil
o+=1
else


w={

props=t::any,
context=u,
state=i,
__refs=h,
__updater=v or g,
}














end






w=setmetatable(w,s)


if s.init and type(s.init)=="function"then



w.setState=setStateInInit

s.init(w,t,u)


w.setState=nil::any
end

return(w::any)::React_Component__DARKLUA_TYPE_d6<P,any>
end

setmetatable(s,getmetatable(q::any))

return(s::any)::React_Component__DARKLUA_TYPE_d6<any,any>
end


























function m.setState(q,r,s)
if
r~=nil
and type(r)~="table"
and type(r)~="function"
then
error[[setState(...): takes an object of state variables to update or a function which returns an object of state variables.]]



end
q.__updater.enqueueSetState(q,r,s,"setState")
end
















function m.forceUpdate(q,r)
q.__updater.enqueueForceUpdate(q,r,"forceUpdate")
end






if b then

local q={
isMounted={
"isMounted",[[Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks.]]

,
},
replaceState={
"replaceState",[[Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236).]]

,
},
}::any

local r=function(r,s)
(m::any)[r]=function()
f.warn(
"%s(...) is deprecated in plain JavaScript React classes. %s",
s[1],
s[2]
)
return nil
end
end

for s,t in q do
if q[s]~=nil then
r(s,q[s])
end
end
end








local q=m:extend"PureComponent"::React_BaseComponent__DARKLUA_TYPE_d7;





(q::any).extend=m.extend






local r={
isReactComponent=true,
isPureReactComponent=true,
}



setmetatable(q,{
__newindex=handleNewLifecycle,
__index=r,
__tostring=function(s)
return s.__componentName
end,
})


return{
Component=m,
PureComponent=q::typeof(m),
}end function a.bC():typeof(__modImpl())local b=a.cache.bC if not b then b={c=__modImpl()}a.cache.bC=b end return b.c end end do local function __modImpl()













local b=a.bz()
local c=b.console
local d=a.aV()
local e=d.util.inspect a.bz()




local f=a.bz().ReactSymbols

local g=f.REACT_LAZY_TYPE

local h=-1
local i=0
local j=1
local k=2










































function lazyInitializer<T>(l:Payload__DARKLUA_TYPE_ee<T>):T
if l._status==h then
local m=l._result
local n=m()

local o:PendingPayload__DARKLUA_TYPE_eb=l::any
o._status=i
o._result=n
n:andThen(function(p)
if l._status==i then
local q=p.default
if _G.__DEV__ then
if q==nil then
c.error([[lazy: Expected the result of a dynamic import() call. Instead received: `%s`

Your code should look like: 
  local MyComponent = lazy(function() return reqquire(script.Parent.MyComponent) end)]]


,
e(p)
)
end
end

local r:ResolvedPayload__DARKLUA_TYPE_ec<T> =l::any
r._status=j
r._result=q
end
end,function(p)
if l._status==i then

local q:RejectedPayload__DARKLUA_TYPE_ed=l::any
q._status=k
q._result=p
end
end)
end
if l._status==j then
return l._result
else
error(l._result)
end
end

local l={}

l.lazy=function<T>(
m:()->Thenable__DARKLUA_TYPE_d9<{default:T,[string]:any}>
):LazyComponent__DARKLUA_TYPE_ef<T,Payload__DARKLUA_TYPE_ee<T>>
local n:Payload__DARKLUA_TYPE_ee<T> ={

_status=-1,
_result=m,
}

local o:LazyComponent__DARKLUA_TYPE_ef<T,Payload__DARKLUA_TYPE_ee<T>> ={
["$$typeof"]=g,
_payload=n,

_init=lazyInitializer::any,
}

if _G.__DEV__ then

local p
local q

setmetatable(o,{
__index=function(r,s)
if s=="defaultProps"then
return p
end
if s=="propTypes"then
return q
end
return
end,
__newindex=function(r,s,t)
if s=="defaultProps"then
c.error[[React.lazy(...): It is not supported to assign `defaultProps` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it.]]




p=t


setmetatable(r,{
__index=function()end,
__newindex=function()end,
})
end
if s=="propTypes"then
c.error[[React.lazy(...): It is not supported to assign `propTypes` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it.]]




q=t


setmetatable(r,{
__index=function()end,
__newindex=function()end,
})
end
end,
})
end

return o
end

return l end function a.bD():typeof(__modImpl())local b=a.cache.bD if not b then b={c=__modImpl()}a.cache.bD=b end return b.c end end do local function __modImpl()









local b=_G.__DEV__::boolean
local c=a.aV()
local d=c.Error



local e=a.bz().console a.bz()a.bD()
















local f=a.bz().getComponentName



local g=a.bz()
.ReactSymbols.REACT_ELEMENT_TYPE
local h=a.bz()
.ReactSharedInternals.ReactCurrentOwner



local i={
key=true,
ref=true,
__self=true,
__source=true,
}


local j,k,l

if b then
l={}
end

local m={}

local function hasValidRef(n)
if b then


if n.ref~=nil and type(n.ref)=="table"then
if(n.ref::any).isReactWarning then
return false
end
end
end

return n.ref~=nil
end

local function hasValidKey(n)
if b then


if n.key~=nil and type(n.key)=="table"then
if(n.key::any).isReactWarning then
return false
end
end
end

return n.key~=nil
end

local n={isReactWarning=true}




local function defineKeyPropWarningGetter(o,p:string)
local q=function()
if b then
if not j then
j=true
e.error([[%s: `key` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)]]



,
p
)
end
end
end



o.key=nil
setmetatable(o,{
__index=function(r,s)
if s=="key"then
q()

return n
end

return nil::any
end,
})
end

local function defineRefPropWarningGetter(o,p:string)


local q=function()
if b then
if not k then
k=true
e.error([[%s: `ref` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)]]



,
p
)
end
end
end



o.ref=nil
setmetatable(o::any,{
__index=function(r,s)
if s=="ref"then
q()

return n
end

return nil::any
end,
})
end

local function warnIfStringRefCannotBeAutoConverted(o)
if b then
if

type(o.ref)=="string"and h.current


then
local p=f(h.current.type)


if not l[p]then
error(
string.format([[Component "%s" contains the string ref "%s". Support for string refs has been removed. We recommend using useRef() or createRef() instead. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-string-ref]]




,
p or"Unknown",
o.ref
)
)

end
end
end
end























local function ReactElement<P,T>(
o:T,
p,
q,
r,
s:Source__DARKLUA_TYPE_ep?,
t,
u:P
):ReactElement__DARKLUA_TYPE_en<P,T>

local v={

type=o,
key=p,
ref=q,
props=u,

_owner=t,
}


v["$$typeof"]=g

if b then




local w={
validated=false,
}
v._store=setmetatable({},{




__index=w,
__newindex=function(x,y,z)
if y=="validated"then
w.validated=z
else
rawset(x,y,z)
end
end,
})

setmetatable(v,{
__index={
_self=r,


_source=s,
},
})
end


return v::any
end









m.jsx=function(o,p,q)

error"JSX is currently unsupported"











































end








m.jsxDEV=function(o,p,q,r,s)

error"JSX is currently unsupported"




























































return nil

end










local function createElement<P,T>(
o:React_StatelessFunctionalComponent__DARKLUA_TYPE_eh<P>|React_ComponentType__DARKLUA_TYPE_ei<P>|React_AbstractComponent__DARKLUA_TYPE_ej<P,T>|ReactContext__DARKLUA_TYPE_eo<any>|LazyComponent__DARKLUA_TYPE_eq<T,P>|ReactProviderType__DARKLUA_TYPE_ek<any>|string,
p:P?,
...:React_Node__DARKLUA_TYPE_em|((...any)->React_Node__DARKLUA_TYPE_em)
):ReactElement__DARKLUA_TYPE_en<P,T>

local q=if p~=nil then table.clone(p::any)::any else{}

local r:(string|number)?
local s
local t
local u:Source__DARKLUA_TYPE_ep?

if p~=nil then


if hasValidRef(p::any)then
s=((p::any)::React_ElementProps__DARKLUA_TYPE_el<T>).ref

if b then
warnIfStringRefCannotBeAutoConverted(
(p::any)::React_ElementProps__DARKLUA_TYPE_el<T>
)
end
end


if hasValidKey(p::any)then
local v=(p::any).key



if type(v)=="number"then
r=v
else

r=tostring(v::any)
end
end






u=if((p::any)::React_ElementProps__DARKLUA_TYPE_el<T>).__source==nil
then nil
else((p::any)::React_ElementProps__DARKLUA_TYPE_el<T>).__source



if q.key~=nil then
q.key=nil
end
if q.ref~=nil then
q.ref=nil
end
if q.__self~=nil then
q.__self=nil
end
if q.__source~=nil then
q.__source=nil
end

end




local v=select("#",...)

if v==1 then
q.children=select(1,...)
elseif v>1 then


local w=table.create(v)
for x=1,v do
local y=select(x,...)
table.insert(w,y)
end



if b then
table.freeze(w)
end

q.children=w
end




if
type(o::any)=="table"
and(o::T&React_ComponentType__DARKLUA_TYPE_ei<P>).defaultProps
then


local w=(o::T&React_ComponentType__DARKLUA_TYPE_ei<P>).defaultProps::P


for x,y in(w::any)::Object__DARKLUA_TYPE_eg do
if q[x]==nil then
q[x]=((w::any)::Object__DARKLUA_TYPE_eg)[x]
end
end
end

if b then
if r or s then

local w

if type(o)=="function"then

w=debug.info(o,"n")or"<function>"
elseif type(o)=="table"then
w=(
(o::T&React_ComponentType__DARKLUA_TYPE_ei<P>).displayName
or(o::T&React_ComponentType__DARKLUA_TYPE_ei<P>).name
)or"Unknown"
else

w=o::string
end


if r then
defineKeyPropWarningGetter(q,w)
end

if s then
defineRefPropWarningGetter(q,w)
end
end



if u==nil then

u={
fileName=debug.info(3,"s"),
lineNumber=debug.info(3,"l"),
}
end

end


return ReactElement(
o,
r,
s,
t,
u,
h.current,
q
)::any
end
m.createElement=createElement
















m.cloneAndReplaceKey=
function<P,T>(o:ReactElement__DARKLUA_TYPE_en<P,T>,p:any):ReactElement__DARKLUA_TYPE_en<P,T>
local q=ReactElement(
o.type,
p,
o.ref,
o._self,
o._source,
o._owner,
o.props
)
return q
end






m.cloneElement=function<P,T>(
o:ReactElement__DARKLUA_TYPE_en<P,T>,
p:(P&React_ElementProps__DARKLUA_TYPE_el<T>)?,
...:React_Node__DARKLUA_TYPE_em
):ReactElement__DARKLUA_TYPE_en<P,T>

if o==nil then
error(
d.new(
"React.cloneElement(...): The argument must be a React element, but you passed "
..tostring(o)
)
)
end


local q=o.props
local r:P&React_ElementProps__DARKLUA_TYPE_el<T> =if q~=nil
then table.clone(q::P&React_ElementProps__DARKLUA_TYPE_el<T>)::any
else{}::P&React_ElementProps__DARKLUA_TYPE_el<T>


local s=o.key
local t=o.ref








local u=o._source


local v=o._owner

if p~=nil then

local w=p.ref
if w~=nil then

t=w
v=h.current
else
hasValidRef(p)
end

local x=p.key

if x~=nil then
if type(x)=="number"then
s=x
else

s=x::any or"nil"
end
else
hasValidKey((p::any)::React_ElementProps__DARKLUA_TYPE_el<T>)
end

end


local w=o.type
local x:P?=if type(w)=="table"
then w.defaultProps
else nil



if p~=nil then
for y,z in p::any do
if(p::any)[y]~=nil and not i[y]then
if(p::any)[y]==nil and x~=nil then


(r::any)[y]=(x::any)[y]
else
(r::any)[y]=(p::any)[y]
end
end
end
end




local y=select("#",...)

if y==1 then
r.children=select(1,...)
elseif y>1 then
(r::any).children={...}
end



return ReactElement(
o.type,
s,
t,
nil,
u,
v,
(r::any)::P&React_ElementProps__DARKLUA_TYPE_el<T>
)::any
end








m.isValidElement=function(o)
return type(o)=="table"and o["$$typeof"]==g
end

return m end function a.bE():typeof(__modImpl())local b=a.cache.bE if not b then b={c=__modImpl()}a.cache.bE=b end return b.c end end do local function __modImpl()a.bz()
















local b=a.bz().invariant

local c=a.bz().ReactSymbols
local d=c.getIteratorFn
local e=c.REACT_ELEMENT_TYPE
local f=c.REACT_PORTAL_TYPE

local g=a.aV()
local h=g.Array




local i=a.bE()
local j=i.isValidElement
local k=i.cloneAndReplaceKey

local l="."
local m=":"








local function escape(n:string):string
local o=string.gsub(n,"=","=0")
o=string.gsub(o,":","=2")
return"$"..o
end










local function escapeUserProvidedKey(n:string):string


return n
end








local function getElementKey(n:any,o:number):string


if typeof(n)=="table"and n~=nil and n.key~=nil then

return escape(tostring(n.key))
end



return tostring(o)
end

local function mapIntoArray(
n:ReactNodeList__DARKLUA_TYPE_er?,
o:Array__DARKLUA_TYPE_eu<React_Node__DARKLUA_TYPE_es>,
p:string,
q:string,
r:(React_Node__DARKLUA_TYPE_es?)->ReactNodeList__DARKLUA_TYPE_er?
):number
local s=typeof(n)





if s=="nil"or s=="boolean"or s=="userdata"then

n=nil
end

local t=false

if n==nil then
t=true
else
if s=="string"or s=="number"then
t=true
elseif s=="table"then
local u=(n::any)["$$typeof"]
if
u==e
or u==f
then
t=true
end
end
end

if t then
local u=n
local v=r(u)


local w=if q==""
then l..getElementKey(u,1)
else q
if h.isArray(v)then
local x=""
if w~=nil then
x=escapeUserProvidedKey(w).."/"
end
mapIntoArray(v,o,x,"",function(y)
return y
end)
elseif v~=nil then
if j(v::any)then
local x=(v::ReactElement__DARKLUA_TYPE_et<Object__DARKLUA_TYPE_ev,any>).key
v=k(
v::ReactElement__DARKLUA_TYPE_et<Object__DARKLUA_TYPE_ev,any>,


p

..(
if x
and(
not u
or(u::ReactElement__DARKLUA_TYPE_et<Object__DARKLUA_TYPE_ev,any>).key
~=x
)

then escapeUserProvidedKey(tostring(x)).."/"
else""
)
..w
)
end
table.insert(o,v)
end
return 1
end

local u
local v
local w=0
local x=if q==""
then l
else q..m

if h.isArray(n)then

for y=1,#(n::Array__DARKLUA_TYPE_eu<React_Node__DARKLUA_TYPE_es>)do
u=(n::Array__DARKLUA_TYPE_eu<React_Node__DARKLUA_TYPE_es>)[y]
v=x..getElementKey(u,y)
w+=mapIntoArray(u,o,p,v,r)
end
else
local y=d(n)
if typeof(y)=="function"then
local z:Object__DARKLUA_TYPE_ev&{
entries:any,
}=n::any















local A=y(z)
local B
local C=1
B=A.next()
while not B.done do
u=B.value
v=x..getElementKey(u,C)
C+=1
w+=mapIntoArray(
u,
o,
p,
v,
r
)
B=A.next()
end














end
end

return w
end
















local function mapChildren(
n:ReactNodeList__DARKLUA_TYPE_er?,
o:MapFunc__DARKLUA_TYPE_ew,
p:any
):Array__DARKLUA_TYPE_eu<React_Node__DARKLUA_TYPE_es>?
if n==nil then
return nil
end
local q={}
local r=1
mapIntoArray(n,q,"","",function(s)

local t=o(s,r)
r+=1
return t
end)
return q
end










local function countChildren(n:ReactNodeList__DARKLUA_TYPE_er?):number
local o=0
mapChildren(n,function()
o+=1

return
end)
return o
end















local function forEachChildren(
n:ReactNodeList__DARKLUA_TYPE_er?,
o:ForEachFunc__DARKLUA_TYPE_ex,
p:any
)
mapChildren(n,function(...)

o(...)

return
end,p)
end







local function toArray(n:ReactNodeList__DARKLUA_TYPE_er?):Array__DARKLUA_TYPE_eu<React_Node__DARKLUA_TYPE_es>
return mapChildren(n,function(o)
return o
end)or{}
end
















local function onlyChild(n)

b(
j(n),
"React.Children.only expected to receive a single React element child."
)
return n
end

return{
forEach=forEachChildren,
map=mapChildren,
count=countChildren,
only=onlyChild,
toArray=toArray,
}end function a.bF():typeof(__modImpl())local b=a.cache.bF if not b then b={c=__modImpl()}a.cache.bF=b end return b.c end end do local function __modImpl()











local b=a.aV()
local c=b.Array

local d=b.Boolean
local e=b.Object

local f=a.bz().console
local g=b.util.inspect a.bz()















local h=a.bz().isValidElementType
local i=a.bz().getComponentName
local j=a.bz().ReactSymbols
local k=j.getIteratorFn local l=
j.REACT_FORWARD_REF_TYPE local m=
j.REACT_MEMO_TYPE
local n=j.REACT_FRAGMENT_TYPE
local o=j.REACT_ELEMENT_TYPE

local p=a.bz()
.ReactFeatureFlags.warnAboutSpreadingKeyToJSX
local q=a.bz().checkPropTypes
local r=a.bz()
.ReactSharedInternals.ReactCurrentOwner

local s=a.bE()
local t=s.isValidElement
local u=s.createElement
local v=s.cloneElement
local w=s.jsxDEV

local x=a.bz()
.ReactSharedInternals.ReactDebugCurrentFrame.setExtraStackFrame
local y=a.bz()
.ReactComponentStackFrame.describeUnknownElementTypeFrameInDEV

local z={}


local function setCurrentlyValidatingElement(A:ReactElement__DARKLUA_TYPE_eF<any,any>|nil)
if _G.__DEV__ then
if A then
local B=A._owner
local C
if B then
C=B.type
end
local D=y(
A.type,
A._source,
C
);

(x::(...any)->())(D)
else

(x::(...any)->())(nil)
end
end
end

local A

if _G.__DEV__ then
A=false
end

local function hasOwnProperty(B,C)
return B[C]~=nil
end

local function getDeclarationErrorAddendum():string
if r.current then
local B=i(r.current.type)
if B then
return"\n\nCheck the render method of `"..B.."`."
end
end
return""
end


local function getSourceInfoErrorAddendum(B:Source__DARKLUA_TYPE_eH|nil):string
if B~=nil then
local C=string.gsub(B.fileName,"^.*[\\/]","")
local D=B.lineNumber
return"\n\nCheck your code at "..C..":"..D.."."
end
return""
end


local function getSourceInfoErrorAddendumForProps(
B:React_ElementProps__DARKLUA_TYPE_eE<any>?
):string
if B~=nil then
return getSourceInfoErrorAddendum(B.__source)
end
return""
end






local B={}


local function getCurrentComponentErrorInfo(
C:React_ComponentType__DARKLUA_TYPE_eC<any>|string|Function__DARKLUA_TYPE_eA
):string
local D=getDeclarationErrorAddendum()

if not d.toJSBoolean(D)then
local E=if typeof(C)=="string"
then C
else if typeof(C)=="table"
then C.displayName or C.name
else nil


if not E and typeof(C)=="function"then
local F=debug.info(C,"n")

E=if F~=""then F else nil
end

if E then
D=string.format(
"\n\nCheck the top-level render call using <%s>.",
E
)
end
end
return D
end














local function validateExplicitKey<P>(
C:ReactElement__DARKLUA_TYPE_eF<P,any>,
D,
E:any?
)
if C._store==nil or C._store.validated then
return
end

(C._store::any).validated=true


if(C.key~=nil)~=(E~=nil)then
return
end

local F=getCurrentComponentErrorInfo(D)
if B[F]then
return
end
B[F]=true




local G=""
if C and C._owner and C._owner~=r.current then

G=string.format(
" It was passed a child from %s.",
tostring(i(C._owner.type))
)
end

if _G.__DEV__ then
setCurrentlyValidatingElement(C)


if C.key~=nil and E~=nil then


f.error([[Child element received a "key" prop ("%s") in addition to a key in the "children" table of its parent ("%s"). Please provide only one key definition. When both are present, the "key" prop will take precedence.%s%s See https://reactjs.org/link/warning-keys for more information.]]




,
tostring(C.key),
tostring(E),
F,
G
)

else
f.error([[Each child in a list should have a unique "key" prop.%s%s See https://reactjs.org/link/warning-keys for more information.]]

,
F,
G
)
end

setCurrentlyValidatingElement(nil)
end
end










local function validateChildKeys(C,D)
if typeof(C)~="table"then
return
end

if c.isArray(C)then
for E=1,#C do
local F=C[E]
if t(F)then
validateExplicitKey(F::ReactElement__DARKLUA_TYPE_eF<any,any>,D)
end
end
elseif t(C)then

if C._store then
C._store.validated=true
end
elseif C then
local E=k(C)
if typeof(E)=="function"then


if E~=C.entries then
local F=E(C)
local G=F.next()
while not G.done do
if t(G.value)then
validateExplicitKey(G.value,D,G.key)
end

G=F.next()
end
end
end
end
end







local function validatePropTypes<P>(C:ReactElement__DARKLUA_TYPE_eF<P,any>)
if _G.__DEV__ or _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ then
local D=C.type
if D==nil or typeof(D)=="string"then
return
end

local E
local F
if typeof(D)=="function"then


return
elseif typeof(D)=="table"then
E=D.propTypes
F=D.validateProps
else
return
end

if E or F then

local G=i(D)

q(E,F,C.props,"prop",G,C)

elseif(D::any).PropTypes~=nil and not A then
A=true

local G=i(D)
f.error(
"Component %s declared `PropTypes` instead of `propTypes`. Did you misspell the property assignment?",
G or"Unknown"
)
end


if(D::any).getDefaultProps~=nil then
f.error[[getDefaultProps is only used on classic React.createClass definitions. Use a static property named `defaultProps` instead.]]



end
end
end





local function validateFragmentProps<P>(C:ReactElement__DARKLUA_TYPE_eF<P&Object__DARKLUA_TYPE_ez,any>)
if _G.__DEV__ then
local D=e.keys(C.props)
for E=1,#D do
local F=D[E]
if F~="children"and F~="key"then
setCurrentlyValidatingElement(C)
f.error([[Invalid prop `%s` supplied to `React.Fragment`. React.Fragment can only have `key` and `children` props.]]

,
F
)
setCurrentlyValidatingElement(nil)
break
end
end

if C.ref~=nil then
setCurrentlyValidatingElement(C)
f.error"Invalid attribute `ref` supplied to `React.Fragment`."
setCurrentlyValidatingElement(nil)
end
end
end


local function jsxWithValidation<P,T>(
C:T,
D:P&React_ElementProps__DARKLUA_TYPE_eE<T>,
E:string|number,
F,
G:Source__DARKLUA_TYPE_eH?,
H:any?
)

local I=h(C)



if not I then
local J=""
if C==nil or(typeof(C)=="table"and#e.keys(C)==0)then
J..=([[ You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports.]])
end

local K=getSourceInfoErrorAddendum(G)
if K then
J..=K
else
J..=getDeclarationErrorAddendum()
end

local L
if C==nil then
L="nil"
elseif c.isArray(C)then
L="array"
elseif typeof(C)=="table"and C["$$typeof"]==o then
L=string.format("<%s />",i(C.type)or"Unknown")
J..=" Did you accidentally export a JSX literal or Element instead of a component?"
else
L=typeof(C)
J..="\n"..g(C)
end

if _G.__DEV__ then
f.error([[React.jsx: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s]]


,
L,
J
)
end
end

local J=w(C,D,E,G,H)



if J==nil then
return J
end







if I then
local K=D.children
if K~=nil then
if F then
if c.isArray(K)then
for L=1,#K do

validateChildKeys(K[L],C::any)
end



e.freeze(K)

else
if _G.__DEV__ then
f.error[[React.jsx: Static children should always be an array. You are likely explicitly calling React.jsxs or React.jsxDEV. Use the Babel transform instead.]]




end
end
else

validateChildKeys(K,C::any)
end
end
end

if _G.__DEV__ then
if p then
if hasOwnProperty(D,"key")then
f.error([[React.jsx: Spreading a key to JSX is a deprecated pattern. Explicitly pass a key after spreading props in your JSX call. E.g. <%s {...props} key={key} />]]


,
i(C)or"ComponentName"
)
end
end
end

if C==n then

validateFragmentProps((J::any)::ReactElement__DARKLUA_TYPE_eF<any,any>)
else
validatePropTypes((J::any)::ReactElement__DARKLUA_TYPE_eF<any,any>)
end

return J
end
z.jsxWithValidation=jsxWithValidation





z.jsxWithValidationStatic=function(C,D,E)
return jsxWithValidation(C,D,E,true)
end

z.jsxWithValidationDynamic=function(C,D,E)
return jsxWithValidation(C,D,E,false)
end


local function createElementWithValidation<P,T>(
C:React_StatelessFunctionalComponent__DARKLUA_TYPE_eB<
P
>|React_ComponentType__DARKLUA_TYPE_eC<P>|string,
D:(P&React_ElementProps__DARKLUA_TYPE_eE<T>)?,
...:React_Node__DARKLUA_TYPE_eG
):ReactElement__DARKLUA_TYPE_eF<P,T>

local E=h(C)



if not E then
local F=""
if C==nil or(typeof(C)=="table"and#e.keys(C)==0)then
F..=([[ You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports.]])
end

local G=getSourceInfoErrorAddendumForProps(D)
if G then
F..=G
else
F..=getDeclarationErrorAddendum()
end

local H
if C==nil then
H="nil"
elseif c.isArray(C)then
H="array"
elseif
C~=nil
and typeof(C)=="table"
and C["$$typeof"]==o
then
H=string.format(
"<%s />",
i((C::any).type)or"Unknown"
)
F..=" Did you accidentally export a JSX literal or Element instead of a component?"
else
H=typeof(C)
if C~=nil then

F..="\n"..g(C)
end
end

if _G.__DEV__ then
f.error([[React.createElement: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s]]


,
H,
F
)
end
end


local F=u(C::any,D,...)



if F==nil then
return F
end






if E then

for G=1,select("#",...)do


validateChildKeys(select(G,...),C::any)
end
end

if C==n then
validateFragmentProps(F)
else
validatePropTypes(F)
end

return F
end
z.createElementWithValidation=createElementWithValidation










































z.cloneElementWithValidation=function<P,T>(
C:ReactElement__DARKLUA_TYPE_eF<P,T>,
D:(P&React_ElementProps__DARKLUA_TYPE_eE<T>)?,
...:React_Node__DARKLUA_TYPE_eG
):ReactElement__DARKLUA_TYPE_eF<P,T>

local E={C,D,...}::Array__DARKLUA_TYPE_ey<any>
local F=v(C,D,...)
for G=3,#E do
validateChildKeys(E[G],F.type)
end
validatePropTypes(F)
return F
end

return z end function a.bG():typeof(__modImpl())local b=a.cache.bG if not b then b={c=__modImpl()}a.cache.bG=b end return b.c end end do local function __modImpl()




































local function createSignal():((Function__DARKLUA_TYPE_eI)->(()->()),(...any)->())
local b:Map__DARKLUA_TYPE_eK<Function__DARKLUA_TYPE_eI,Connection__DARKLUA_TYPE_eJ> ={}
local c={}
local d=false

local function subscribe(e)
assert(
typeof(e)=="function",
"Can only subscribe to signals with a function."
)

local f={
callback=e,
disconnected=false,
}



if d and not b[e]then
c[e]=f
end

b[e]=f

local function disconnect()
assert(
not f.disconnected,
"Listeners can only be disconnected once."
)

f.disconnected=true
b[e]=nil
c[e]=nil
end

return disconnect
end

local function fire(...)
d=true
for e,f in b do
if not f.disconnected and not c[e]then
e(...)
end
end

d=false


table.clear(c)
end

return subscribe,fire
end

return createSignal end function a.bH():typeof(__modImpl())local b=a.cache.bH if not b then b={c=__modImpl()}a.cache.bH=b end return b.c end end do local function __modImpl()

















local b=a.aV()
local c=a.bz().ReactSymbols a.bz()





local d=b.Symbol
local e=a.bH()

local f=d"BindingImpl"













local g={}

local h={}

function h.getValue<T>(i:BindingInternal__DARKLUA_TYPE_eN<T>):T
return g.getValue(i)
end

function h.map<T,U>(
i:BindingInternal__DARKLUA_TYPE_eN<T>,
j:(T)->U
):Binding__DARKLUA_TYPE_eL<U>
return g.map(i,j)
end

local i={
__index=h,
__tostring=function(i)
return string.format("RoactBinding(%s)",tostring(i:getValue()))
end,
}

function g.update<T>(j:any,k:T)
return(j[f]::BindingInternal__DARKLUA_TYPE_eN<T>).update(k)
end

function g.subscribe<T>(j:any,k:(T)->())
return(j[f]::BindingInternal__DARKLUA_TYPE_eN<T>).subscribe(k)
end

function g.getValue<T>(j:any):T
return(j[f]::BindingInternal__DARKLUA_TYPE_eN<T>):getValue()
end

function g.create<T>(j:T):(Binding__DARKLUA_TYPE_eL<T>,BindingUpdater__DARKLUA_TYPE_eM<T>)
local k,m=e()
local n={
value=j,
subscribe=k,
}

function n.update(o:T)
n.value=o
m(o)
end

function n.getValue()
return n.value
end

local o
if _G.__DEV__ then

o=debug.traceback("Binding created at:",3)
end

return(setmetatable({
["$$typeof"]=c.REACT_BINDING_TYPE,
[f]=n,
_source=o,
},i)::any)::Binding__DARKLUA_TYPE_eL<T>,
n.update
end

function g.map<T,U>(
j:BindingInternal__DARKLUA_TYPE_eN<T>,
k:(T)->U
):Binding__DARKLUA_TYPE_eL<U>
if _G.__DEV__ then

assert(
typeof(j)=="table"
and j["$$typeof"]==c.REACT_BINDING_TYPE,
"Expected `self` to be a binding"
)
assert(typeof(k)=="function","Expected arg #1 to be a function")
end

local m={}

function m.subscribe(n)
return g.subscribe(j,function(o)
n(k(o))
end)
end

function m.update(n)
error("Bindings created by Binding:map(fn) cannot be updated directly",2)
end

function m.getValue()
return k(j:getValue())
end

local n
if _G.__DEV__ then

n=debug.traceback("Mapped binding created at:",3)
end

return(
setmetatable({
["$$typeof"]=c.REACT_BINDING_TYPE,
[f]=m,
_source=n,
},i)::any
)::Binding__DARKLUA_TYPE_eL<U>
end



function g.join<T>(
j:{[(string|number)]:Binding__DARKLUA_TYPE_eL<any>}
):Binding__DARKLUA_TYPE_eL<T>
if _G.__DEV__ then
assert(typeof(j)=="table","Expected arg #1 to be of type table")

for k,m in j do
if
typeof(m)~="table"
or(m::any)["$$typeof"]~=c.REACT_BINDING_TYPE
then
local n=("Expected arg #1 to contain only bindings, but key %q had a non-binding value"):format(
tostring(k)
)
error(n,2)
end
end
end

local k={}

local function getValue()
local m={}


for n,o in pairs(j)do
m[n]=o:getValue()
end

return m
end

function k.subscribe(m)

local n:any={}

for o,p in j do
n[o]=g.subscribe(p,function(q)
m(getValue())
end)
end

return function()
if n==nil then
return
end

for o,p in n do
p()
end

n=nil
end
end

function k.update(m)
error("Bindings created by joinBindings(...) cannot be updated directly",2)
end

function k.getValue()
return getValue()
end

local m
if _G.__DEV__ then

m=debug.traceback("Joined binding created at:",2)
end

return(
setmetatable({
["$$typeof"]=c.REACT_BINDING_TYPE,
[f]=k,
_source=m,
},i)::any
)::Binding__DARKLUA_TYPE_eL<T>
end

return g end function a.bI():typeof(__modImpl())local b=a.cache.bI if not b then b={c=__modImpl()}a.cache.bI=b end return b.c end end do local function __modImpl()a.bz()



















local b=a.bI()

local c={}


c.createRef=function():RefObject__DARKLUA_TYPE_eO local
d=b.create(nil)

local e={}





if _G.__DEV__ then

d._source=debug.traceback("Ref created at:",1)
end




setmetatable(e,{
__index=function(f,g)
if g=="current"then
return d:getValue()
else
return(d::any)[g]
end
end,
__newindex=function(f,g,h)
if g=="current"then




b.update(d,h)
end

(d::any)[g]=h
end,
__tostring=function(f)
return string.format("Ref(%s)",tostring(d:getValue()))
end,
})

return(e::any)::RefObject__DARKLUA_TYPE_eO
end

return c end function a.bJ():typeof(__modImpl())local b=a.cache.bJ if not b then b={c=__modImpl()}a.cache.bJ=b end return b.c end end do local function __modImpl()











local b=a.bz().console

local c=a.bz().ReactSymbols a.bz()







local d=c.REACT_FORWARD_REF_TYPE
local e=c.REACT_MEMO_TYPE

local f={}

f.forwardRef=
function<Props,ElementType>(
g:(props:Props,ref:React_Ref__DARKLUA_TYPE_eQ<ElementType>)->React_Node__DARKLUA_TYPE_eP
):React_ForwardRefComponent__DARKLUA_TYPE_eR<Props,ElementType>
if _G.__DEV__ then

if
typeof(g::any)=="table"
and(g::any)["$$typeof"]==e
then

b.error[[forwardRef requires a render function but received a `memo` component. Instead of forwardRef(memo(...)), use memo(forwardRef(...)).]]




elseif typeof(g)~="function"then
b.error(
"forwardRef requires a render function but was given %s.",
typeof(g)
)
else local
h=debug.info(g,"a")
if h~=0 and h~=2 then
b.error(
"forwardRef render functions accept exactly two parameters: props and ref. %s",
(function()
if h==1 then
return"Did you forget to use the ref parameter?"
end
return"Any additional parameter will be undefined."
end)()
)
end
end













end

local h={
["$$typeof"]=d,
render=g,
}
if _G.__DEV__ then
local i

setmetatable(h,{
__index=function(j,k)
if k=="displayName"then
return i
end
return rawget(j,k)
end,
__newindex=function(j,k,m)
if k=="displayName"then
i=m




else
rawset(j,k,m)
end
end,
})
end

return h
end

return f end function a.bK():typeof(__modImpl())local b=a.cache.bK if not b then b={c=__modImpl()}a.cache.bK=b end return b.c end end do local function __modImpl()












local b=a.aV()
local c=b.Array


local d=a.bz().console

local e=a.bz()a.bz()


















local f=a.bz()
.ReactSharedInternals.ReactCurrentDispatcher





local function resolveDispatcher():Dispatcher__DARKLUA_TYPE_eT
local g=f.current

if _G.__DEV__ then
if g==nil then
d.error[[Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.]]



end
end



return g::Dispatcher__DARKLUA_TYPE_eT
end

local g={}

local function useContext<T>(
h:ReactContext__DARKLUA_TYPE_eY<T>,
i:number|boolean|nil,
...
):T
local j=resolveDispatcher()
if _G.__DEV__ then
if i~=nil then
d.error([[useContext() second argument is reserved for future use in React. Passing it is not supported. You passed: %s.%s]]


,
i,
(typeof(i)=="number"and c.isArray{...})
and[[


Did you call Array.map(useContext)? Calling Hooks inside a loop is not supported. Learn more at https://reactjs.org/link/rules-of-hooks]]or"")end


if(h::any)._context~=nil then
local k=(h::any)._context


if k.Consumer==h then
d.error[[Calling useContext(Context.Consumer) is not supported, may cause bugs, and will be removed in a future major release. Did you mean to call useContext(Context) instead?]]



elseif k.Provider==h then
d.error[[Calling useContext(Context.Provider) is not supported. Did you mean to call useContext(Context) instead?]]



end
end
end
return j.useContext(h,i)
end
g.useContext=useContext

local function useState<S>(
h:(()->S)|S,
...
):(S,Dispatch__DARKLUA_TYPE_e0<BasicStateAction__DARKLUA_TYPE_e_<S>>)
local i=resolveDispatcher()
return i.useState(h,...)
end
g.useState=useState

local function useReducer<S,I,A>(
h:(S,A)->S,
i:I,
j:((I)->S)?
):(S,Dispatch__DARKLUA_TYPE_e0<A>)
local k=resolveDispatcher()
return k.useReducer(h,i,j)
end
g.useReducer=useReducer


local function useRef<T>(h:T):{current:T}
local i=resolveDispatcher()
return i.useRef(h)
end
g.useRef=useRef


local function useBinding<T>(
h:T
):(
e.ReactBinding<T>,
e.ReactBindingUpdater<T>
)
local i=resolveDispatcher()
return i.useBinding(h)
end
g.useBinding=useBinding


local function useEffect(

h:(()->())|(()->(()->())),
i:Array__DARKLUA_TYPE_eS<any>|nil
):()
local j=resolveDispatcher()
return j.useEffect(h,i)
end
g.useEffect=useEffect

local function useLayoutEffect(

h:(()->())|(()->(()->())),
i:Array__DARKLUA_TYPE_eS<any>|nil
):()
local j=resolveDispatcher()
return j.useLayoutEffect(h,i)
end
g.useLayoutEffect=useLayoutEffect

local function useCallback<T>(h:T,i:Array__DARKLUA_TYPE_eS<any>|nil):T
local j=resolveDispatcher()
return j.useCallback(h,i)
end
g.useCallback=useCallback

local function useMemo<T...>(h:()->T...,i:Array__DARKLUA_TYPE_eS<any>|nil):T...
local j=resolveDispatcher()
return j.useMemo(h,i)
end
g.useMemo=useMemo

local function useImperativeHandle<T>(
h:{current:T|nil}|((inst:T|nil)->any)|nil,
i:()->T,
j:Array__DARKLUA_TYPE_eS<any>|nil
):()
local k=resolveDispatcher()
return k.useImperativeHandle(h,i,j)
end
g.useImperativeHandle=useImperativeHandle

local function useDebugValue<T>(h:T,i:((value:T)->any)?):()
if _G.__DEV__ then
local j=resolveDispatcher()
return j.useDebugValue(h,i)
end


return nil
end
g.useDebugValue=useDebugValue

g.emptyObject={}













g.useOpaqueIdentifier=function():OpaqueIDType__DARKLUA_TYPE_eZ|nil
local h=resolveDispatcher()
return h.useOpaqueIdentifier()
end

g.useMutableSource=
function<Source,Snapshot>(
h:MutableSource__DARKLUA_TYPE_eU<Source>,
i:MutableSourceGetSnapshotFn__DARKLUA_TYPE_eV<Source,Snapshot>,
j:MutableSourceSubscribeFn__DARKLUA_TYPE_eW<Source,Snapshot>
):Snapshot
local k=resolveDispatcher()
return k.useMutableSource(h,i,j)
end

return g end function a.bL():typeof(__modImpl())local b=a.cache.bL if not b then b={c=__modImpl()}a.cache.bL=b end return b.c end end do local function __modImpl()











local b=a.bz()
local c=b.console
local d=a.aV()
local e=d.Array
local f=d.Object
local g=d.util.inspect












local h=b.ReactSymbols
local i=h.REACT_MEMO_TYPE
local j=h.REACT_ELEMENT_TYPE
local k=b.isValidElementType
local m=b.getComponentName

local n={}

n.memo=function<Props,T>(


o:React_StatelessFunctionalComponent__DARKLUA_TYPE_e1<Props>|React_AbstractComponent__DARKLUA_TYPE_e6<Props,T>|string,

p:((oldProps:Props,newProps:Props)->boolean)?
):React_MemoComponent__DARKLUA_TYPE_e5<Props,any>
if _G.__DEV__ then
local q=k(o)



if not q then
local r=""
if
o==nil
or(typeof(o)=="table"and#f.keys(o)==0)
then
r=r
..([[ You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports.]]


)
end
local s
if o==nil then
s="nil"
elseif e.isArray(o)then
s="array"
elseif
o~=nil
and typeof(o)=="table"
and(o::React_MemoComponent__DARKLUA_TYPE_e5<Props,T>)["$$typeof"]
==j
then
s=string.format(
"<%s />",
m((o::any).type)or"UNKNOWN"
)
r=
" Did you accidentally export a JSX literal or Element instead of a component?"
else
s=typeof(o)
if o~=nil then

r="\n"..g(o)
end
end
c.error(
"memo: The first argument must be a component. Instead received: `%s`.%s",
s,
r
)
end
end

local q={
["$$typeof"]=i,
type=o,
compare=p or nil,
}

if _G.__DEV__ then
local r

setmetatable(q,{
__index=function(s,t)
if t=="displayName"then
return r
end
return rawget(s,t)
end,
__newindex=function(s,t,u)
if t=="displayName"then
r=u

if
typeof(o)=="table"
and(o::React_AbstractComponent__DARKLUA_TYPE_e6<Props,T>).displayName
==nil
then
(o::React_MemoComponent__DARKLUA_TYPE_e5<Props,T>).displayName=r
end
else
rawset(s,t,u)
end
end,
})
end

return q::React_MemoComponent__DARKLUA_TYPE_e5<Props,any>
end

return n end function a.bM():typeof(__modImpl())local b=a.cache.bM if not b then b={c=__modImpl()}a.cache.bM=b end return b.c end end do local function __modImpl()












local b=a.bz()
local c=b.console

local d=a.bz().ReactSymbols
local e=d.REACT_PROVIDER_TYPE
local f=d.REACT_CONTEXT_TYPE



local g={}

g.createContext=function<T>(
h:T,
i:((a:T,b:T)->number)?
):ReactContext__DARKLUA_TYPE_e7<T>
local j:ReactContext__DARKLUA_TYPE_e7<any> ={
["$$typeof"]=f,
_calculateChangedBits=i,





_currentValue=h,
_currentValue2=h,


_threadCount=0,

Provider=(nil::any)::ReactProviderType__DARKLUA_TYPE_e8<T>,
Consumer=(nil::any)::ReactContext__DARKLUA_TYPE_e7<T>,


displayName=nil,

_currentRenderer=nil,
_currentRenderer2=nil,
}
j.Provider={
["$$typeof"]=e,
_context=j,
}

local k=false

if _G.__DEV__ then



local m={
["$$typeof"]=f,
_context=j,
_calculateChangedBits=j._calculateChangedBits,
}

setmetatable(m,{
__index=function(n,o)

if o=="_currentValue"then
return j._currentValue
elseif o=="_currentValue2"then
return j._currentValue2
elseif o=="_threadCount"then
return j._threadCount
elseif o=="displayName"then
return j.displayName
end
return nil
end,
__newindex=function(n,o,p)
if o=="_currentValue"then
j._currentValue=p
elseif o=="_currentValue2"then
j._currentValue2=p
elseif o=="_threadCount"then
j._threadCount=p
elseif o=="displayName"then
if not k then
c.warn(
"Setting `displayName` on Context.Consumer has no effect. "
.."You should set it directly on the context with Context.displayName = "
..p
.."."
)
k=true
end
end
end,
})

j.Consumer=(m::any)::ReactContext__DARKLUA_TYPE_e7<any>
else
j.Consumer=j
end

if _G.__DEV__ then
j._currentRenderer=nil
j._currentRenderer2=nil
end

return j
end

return g end function a.bN():typeof(__modImpl())local b=a.cache.bN if not b then b={c=__modImpl()}a.cache.bN=b end return b.c end end do local function __modImpl()


















local b=a.aV()




return b.Object.None end function a.bO():typeof(__modImpl())local b=a.cache.bO if not b then b={c=__modImpl()}a.cache.bO=b end return b.c end end do local function __modImpl()a.aV()















local b=a.bA()
local c=a.bz().ReactSharedInternals
local d=a.bC()
local e=a.bF()
local f=a.bG()
local g=a.bE()
local h=a.bJ()
local i=a.bK()
local j=a.bL()
local k=a.bM()
local m=a.bN()
local n=a.bD()



local o=a.bI()

local p=a.bO()

local q=a.bz()
local r=q.ReactSymbols

local s=_G.__DEV__ or _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ a.bz()






































local t=if s
then f.createElementWithValidation::createElementFn__DARKLUA_TYPE_fm
else g.createElement::createElementFn__DARKLUA_TYPE_fm
local u:cloneElementFn__DARKLUA_TYPE_fn=if s
then f.cloneElementWithValidation::cloneElementFn__DARKLUA_TYPE_fn
else g.cloneElement::cloneElementFn__DARKLUA_TYPE_fn

return{
Children=e,
createMutableSource=b,
createRef=h.createRef,
Component=d.Component,
PureComponent=d.PureComponent,
createContext=m.createContext,
forwardRef=i.forwardRef,
lazy=n.lazy,
memo=k.memo,
useCallback=j.useCallback,
useContext=j.useContext,
useEffect=j.useEffect,
useImperativeHandle=j.useImperativeHandle,
useDebugValue=j.useDebugValue,
useLayoutEffect=j.useLayoutEffect,
useMemo=j.useMemo,
useMutableSource=j.useMutableSource,
useReducer=j.useReducer,
useRef=j.useRef,

useBinding=j.useBinding,
useState=j.useState,
Fragment=r.REACT_FRAGMENT_TYPE,
Profiler=r.REACT_PROFILER_TYPE,
StrictMode=r.REACT_STRICT_MODE_TYPE,
unstable_DebugTracingMode=r.REACT_DEBUG_TRACING_MODE_TYPE,
Suspense=r.REACT_SUSPENSE_TYPE,
createElement=t,
cloneElement=u,
isValidElement=g.isValidElement,

__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED=c,







unstable_LegacyHidden=r.REACT_LEGACY_HIDDEN_TYPE,









createBinding=o.create,
joinBindings=o.join,



None=p,



__subscribeToBinding=o.subscribe,


Event=a.bz().Event,
Change=a.bz().Change,
Tag=a.bz().Tag,




unstable_parseReactError=a.bz().parseReactError,
}end function a.bP():typeof(__modImpl())local b=a.cache.bP if not b then b={c=__modImpl()}a.cache.bP=b end return b.c end end end













local b=a.aV()
export type Object=b.Object

local c=a.bP()

export type Binding<T> =ReactBinding__DARKLUA_TYPE_fk<T>
export type BindingUpdater<T> =ReactBindingUpdater__DARKLUA_TYPE_fl<T>a.bD()



export type LazyComponent<T,P> =LazyComponent__DARKLUA_TYPE_ef<T,P>

local d=a.bz()
export type StatelessFunctionalComponent<P> =
d.React_StatelessFunctionalComponent<P>

export type ComponentType<P> =ComponentClass<P>|FC<P>

export type AbstractComponent<Config,Instance> =d.React_AbstractComponent<
Config,
Instance
>
export type ElementType=d.React_ElementType
export type Element<C> =d.React_Element<C>
export type Key=d.React_Key
export type Ref<ElementType> =d.React_Ref<ElementType>
export type Node=d.React_Node
export type Context<T> =d.ReactContext<T>

export type ElementProps<C> =d.React_ElementProps<C>
export type ElementConfig<T> =d.React_ElementConfig<T>
export type ElementRef<C> =d.React_ElementRef<C>




export type ComponentClass<P> =d.React_ComponentType<P>
export type PureComponent<Props,State=nil> =PureComponent__DARKLUA_TYPE_fj<Props,State>



export type ReactElement<Props=Object,ElementType=any> =d.ReactElement<
Props,
ElementType
>

export type ReactChild=d.ReactElement<any,string>|string|number
export type FC<P> =d.React_StatelessFunctionalComponent<P>
export type ReactNode=d.React_Node



export type React_AbstractComponent<Props,Instance> =d.React_Component<
Props,
Instance
>
export type React_FowardRefComponent<Props,Instance> =
d.React_ForwardRefComponent<Props,Instance>
export type React_MemoComponent<Config,T> =d.React_MemoComponent<Config,T>
export type React_Component<Props,State> =d.React_Component<Props,State>
export type React_ComponentType<P> =d.React_ComponentType<P>
export type React_Context<T> =d.React_Context<T>
export type React_Element<ElementType> =d.React_Element<ElementType>
export type React_ElementType=d.React_ElementType
export type React_Node=d.React_Node



return c