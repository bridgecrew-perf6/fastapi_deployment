֧
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68�
o
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameidentifiers
h
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes	
:�*
dtype0
q

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *
shared_name
candidates
j
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes
:	� *
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	� *
dtype0
�
sequential_2/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  **
shared_namesequential_2/dense/kernel
�
-sequential_2/dense/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense/kernel*
_output_shapes

:  *
dtype0
�
sequential_2/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namesequential_2/dense/bias

+sequential_2/dense/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense/bias*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name261*
value_dtype0	
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�$
Const_1Const*
_output_shapes	
:�*
dtype0*�$
value�$B�$�B1B10B100B101B102B103B104B105B106B107B108B109B11B110B111B112B113B114B115B116B117B118B119B12B120B121B122B123B124B125B126B127B128B129B13B130B131B132B133B134B135B136B137B138B139B14B140B141B142B143B144B145B146B147B148B149B15B150B151B152B153B154B155B156B157B158B159B16B160B161B162B163B164B165B166B167B168B169B17B170B171B172B173B174B175B176B177B178B179B18B180B181B182B183B184B185B186B187B188B189B19B190B191B192B193B194B195B196B197B198B199B2B20B200B201B202B203B204B205B206B207B208B209B21B210B211B212B213B214B215B216B217B218B219B22B220B221B222B223B224B225B226B227B228B229B23B230B231B232B233B234B235B236B237B238B239B24B240B241B242B243B244B245B246B247B248B249B25B250B251B252B253B254B255B256B257B258B259B26B260B261B262B263B264B265B266B267B268B269B27B270B271B272B273B274B275B276B277B278B279B28B280B281B282B283B284B285B286B287B288B289B29B290B291B292B293B294B295B296B297B298B299B3B30B300B301B302B303B304B305B306B307B308B309B31B310B311B312B313B314B315B316B317B318B319B32B320B321B322B323B324B325B326B327B328B329B33B330B331B332B333B334B335B336B337B338B339B34B340B341B342B343B344B345B346B347B348B349B35B350B351B352B353B354B355B356B357B358B359B36B360B361B362B363B364B365B366B367B368B369B37B370B371B372B373B374B375B376B377B378B379B38B380B381B382B383B384B385B386B387B388B389B39B390B391B392B393B394B395B396B397B398B399B4B40B400B401B402B403B404B405B406B407B408B409B41B410B411B412B413B414B415B416B417B418B419B42B420B421B422B423B424B425B426B427B428B429B43B430B431B432B433B434B435B436B437B438B439B44B440B441B442B443B444B445B446B447B448B449B45B450B451B452B453B454B455B456B457B458B459B46B460B461B462B463B464B465B466B467B468B469B47B470B471B472B473B474B475B476B477B478B479B48B480B481B482B483B484B485B486B487B488B489B49B490B491B492B493B494B495B496B497B498B499B5B50B500B501B502B503B504B505B506B507B508B509B51B510B511B512B513B514B515B516B517B518B519B52B520B521B522B523B524B525B526B527B528B529B53B530B531B532B533B534B535B536B537B538B539B54B540B541B542B543B544B545B546B547B548B549B55B550B551B552B553B554B555B556B557B558B559B56B560B561B562B563B564B565B566B567B568B569B57B570B571B572B573B574B575B576B577B578B579B58B580B581B582B583B584B585B586B587B588B589B59B590B591B592B593B594B595B596B597B598B599B6B60B600B601B602B603B604B605B606B607B608B609B61B610B611B612B613B614B615B616B617B618B619B62B620B621B622B623B624B625B626B627B628B629B63B630B631B632B633B634B635B636B637B638B639B64B640B641B642B643B644B645B646B647B648B649B65B650B651B652B653B654B655B656B657B658B659B66B660B661B662B663B664B665B666B667B668B669B67B670B671B672B673B674B675B676B677B678B679B68B680B681B682B683B684B685B686B687B688B689B69B690B691B692B693B694B695B696B697B698B699B7B70B700B701B702B703B704B705B706B707B708B709B71B710B711B712B713B714B715B716B717B718B719B72B720B721B722B723B724B725B726B727B728B729B73B730B731B732B733B734B735B736B737B738B739B74B740B741B742B743B744B745B746B747B748B749B75B750B751B752B753B754B755B756B757B758B759B76B760B761B762B763B764B765B766B767B768B769B77B770B771B772B773B774B775B776B777B778B779B78B780B781B782B783B784B785B786B787B788B789B79B790B791B792B793B794B795B796B797B798B799B8B80B800B801B802B803B804B805B806B807B808B809B81B810B811B812B813B814B815B816B817B818B819B82B820B821B822B823B824B825B826B827B828B829B83B830B831B832B833B834B835B836B837B838B839B84B840B841B842B843B844B845B846B847B848B849B85B850B851B852B853B854B855B856B857B858B859B86B860B861B862B863B864B865B866B867B868B869B87B870B871B872B873B874B875B876B877B878B879B88B880B881B882B883B884B885B886B887B888B889B89B890B891B892B893B894B895B896B897B898B899B9B90B900B901B902B903B904B905B906B907B908B909B91B910B911B912B913B914B915B916B917B918B919B92B920B921B922B923B924B925B926B927B928B929B93B930B931B932B933B934B935B936B937B938B939B94B940B941B942B943B95B96B97B98B99
�;
Const_2Const*
_output_shapes	
:�*
dtype0	*�;
value�;B�;	�"�:                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
�
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *"
fR
__inference_<lambda>_6236
&
NoOpNoOp^StatefulPartitionedCall
� 
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
query_model
identifiers
_identifiers

candidates
_candidates
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
query_with_exclusions

signatures*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
'
0
1
2
3
4*

0
1
2*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 
* 

serving_default* 
�
	embedding
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
�

kernel
bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
* 

0
1
2*

0
1
2*
* 
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
TN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEsequential_2/dense/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEsequential_2/dense/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0*
* 
* 
* 
* 
�
1layer-0
2layer_with_weights-0
2layer-1
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*

0*

0*
* 
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
#
Clookup_table
D	keras_api* 
�

embeddings
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*

0*

0*
* 
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
R
P_initializer
Q_create_resource
R_initialize
S_destroy_resource* 
* 

0*

0*
* 
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
* 

10
21*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
r
serving_default_user_idPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_user_id
hash_tableConstembedding/embeddingssequential_2/dense/kernelsequential_2/dense/bias
candidatesidentifiers*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_6011
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp-sequential_2/dense/kernel/Read/ReadVariableOp+sequential_2/dense/bias/Read/ReadVariableOpConst_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_6280
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddingssequential_2/dense/kernelsequential_2/dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_6305��
�
�
)__inference_sequential_layer_call_fn_5391
string_lookup_input
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5382o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:���������
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_6079
inputs_user_idW
Sembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleX
Tembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	M
:embedding_model_sequential_embedding_embedding_lookup_6067:	� 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�5embedding_model/sequential/embedding/embedding_lookup�Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2�
Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Sembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idTembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
1embedding_model/sequential/string_lookup/IdentityIdentityOembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
5embedding_model/sequential/embedding/embedding_lookupResourceGather:embedding_model_sequential_embedding_embedding_lookup_6067:embedding_model/sequential/string_lookup/Identity:output:0*
Tindices0	*M
_classC
A?loc:@embedding_model/sequential/embedding/embedding_lookup/6067*'
_output_shapes
:��������� *
dtype0�
>embedding_model/sequential/embedding/embedding_lookup/IdentityIdentity>embedding_model/sequential/embedding/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embedding_model/sequential/embedding/embedding_lookup/6067*'
_output_shapes
:��������� �
@embedding_model/sequential/embedding/embedding_lookup/Identity_1IdentityGembedding_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dense/MatMulMatMulIembedding_model/sequential/embedding/embedding_lookup/Identity_1:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp6^embedding_model/sequential/embedding/embedding_lookupG^embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2n
5embedding_model/sequential/embedding/embedding_lookup5embedding_model/sequential/embedding/embedding_lookup2�
Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
�
+__inference_sequential_2_layer_call_fn_5670
user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_6114
inputs_user_idG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_6108:	� 
identity��%sequential/embedding/embedding_lookup�6sequential/string_lookup/None_Lookup/LookupTableFindV2�
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_6108*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/6108*'
_output_shapes
:��������� *
dtype0�
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/6108*'
_output_shapes
:��������� �
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
�
__inference__initializer_62236
2key_value_init260_lookuptableimportv2_table_handle.
*key_value_init260_lookuptableimportv2_keys0
,key_value_init260_lookuptableimportv2_values	
identity��%key_value_init260/LookupTableImportV2�
%key_value_init260/LookupTableImportV2LookupTableImportV22key_value_init260_lookuptableimportv2_table_handle*key_value_init260_lookuptableimportv2_keys,key_value_init260_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init260/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2N
%key_value_init260/LookupTableImportV2%key_value_init260/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�(
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5959
queries_user_idd
`sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlee
asequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	Z
Gsequential_2_embedding_model_sequential_embedding_embedding_lookup_5937:	� C
1sequential_2_dense_matmul_readvariableop_resource:  @
2sequential_2_dense_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�)sequential_2/dense/BiasAdd/ReadVariableOp�(sequential_2/dense/MatMul/ReadVariableOp�Bsequential_2/embedding_model/sequential/embedding/embedding_lookup�Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2�
Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2`sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeries_user_idasequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
>sequential_2/embedding_model/sequential/string_lookup/IdentityIdentity\sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bsequential_2/embedding_model/sequential/embedding/embedding_lookupResourceGatherGsequential_2_embedding_model_sequential_embedding_embedding_lookup_5937Gsequential_2/embedding_model/sequential/string_lookup/Identity:output:0*
Tindices0	*Z
_classP
NLloc:@sequential_2/embedding_model/sequential/embedding/embedding_lookup/5937*'
_output_shapes
:��������� *
dtype0�
Ksequential_2/embedding_model/sequential/embedding/embedding_lookup/IdentityIdentityKsequential_2/embedding_model/sequential/embedding/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@sequential_2/embedding_model/sequential/embedding/embedding_lookup/5937*'
_output_shapes
:��������� �
Msequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1IdentityTsequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
sequential_2/dense/MatMulMatMulVsequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul#sequential_2/dense/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOpC^sequential_2/embedding_model/sequential/embedding/embedding_lookupT^sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2�
Bsequential_2/embedding_model/sequential/embedding/embedding_lookupBsequential_2/embedding_model/sequential/embedding/embedding_lookup2�
Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:T P
#
_output_shapes
:���������
)
_user_specified_namequeries/user_id:

_output_shapes
: 
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_6060
inputs_user_idW
Sembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleX
Tembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	M
:embedding_model_sequential_embedding_embedding_lookup_6048:	� 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�5embedding_model/sequential/embedding/embedding_lookup�Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2�
Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Sembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idTembedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
1embedding_model/sequential/string_lookup/IdentityIdentityOembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
5embedding_model/sequential/embedding/embedding_lookupResourceGather:embedding_model_sequential_embedding_embedding_lookup_6048:embedding_model/sequential/string_lookup/Identity:output:0*
Tindices0	*M
_classC
A?loc:@embedding_model/sequential/embedding/embedding_lookup/6048*'
_output_shapes
:��������� *
dtype0�
>embedding_model/sequential/embedding/embedding_lookup/IdentityIdentity>embedding_model/sequential/embedding/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embedding_model/sequential/embedding/embedding_lookup/6048*'
_output_shapes
:��������� �
@embedding_model/sequential/embedding/embedding_lookup/Identity_1IdentityGembedding_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dense/MatMulMatMulIembedding_model/sequential/embedding/embedding_lookup/Identity_1:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp6^embedding_model/sequential/embedding/embedding_lookupG^embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2n
5embedding_model/sequential/embedding/embedding_lookup5embedding_model/sequential/embedding/embedding_lookup2�
Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Fembedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
�
.__inference_embedding_model_layer_call_fn_6090
inputs_user_id
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_user_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
�
.__inference_embedding_model_layer_call_fn_5533
user_id
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�

�
"__inference_signature_wrapper_6011
user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
	unknown_4:	� 
	unknown_5:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_5357p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_5702
user_id
embedding_model_5689
embedding_model_5691	'
embedding_model_5693:	� 

dense_5696:  

dense_5698: 
identity��dense/StatefulPartitionedCall�'embedding_model/StatefulPartitionedCall�
'embedding_model/StatefulPartitionedCallStatefulPartitionedCalluser_idembedding_model_5689embedding_model_5691embedding_model_5693*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5513�
dense/StatefulPartitionedCallStatefulPartitionedCall0embedding_model/StatefulPartitionedCall:output:0
dense_5696
dense_5698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5579u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/StatefulPartitionedCall(^embedding_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_5513

inputs
sequential_5505
sequential_5507	"
sequential_5509:	� 
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_5505sequential_5507sequential_5509*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5423z
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� k
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
)__inference_sequential_layer_call_fn_6168

inputs
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
)__inference_sequential_layer_call_fn_5443
string_lookup_input
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:���������
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
�

�
*__inference_brute_force_layer_call_fn_5930
queries_user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
	unknown_4:	� 
	unknown_5:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_5798p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:���������
)
_user_specified_namequeries/user_id:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_5423

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_5419:	� 
identity��!embedding/StatefulPartitionedCall�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_5419*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_5377y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
$__inference_dense_layer_call_fn_6136

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5863
user_id
sequential_2_5841
sequential_2_5843	$
sequential_2_5845:	� #
sequential_2_5847:  
sequential_2_5849: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_2/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_2_5841sequential_2_5843sequential_2_5845sequential_2_5847sequential_2_5849*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5586u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul-sequential_2/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
+__inference_sequential_2_layer_call_fn_5599
user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_5642

inputs
embedding_model_5629
embedding_model_5631	'
embedding_model_5633:	� 

dense_5636:  

dense_5638: 
identity��dense/StatefulPartitionedCall�'embedding_model/StatefulPartitionedCall�
'embedding_model/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_model_5629embedding_model_5631embedding_model_5633*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5513�
dense/StatefulPartitionedCallStatefulPartitionedCall0embedding_model/StatefulPartitionedCall:output:0
dense_5636
dense_5638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5579u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/StatefulPartitionedCall(^embedding_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5888
user_id
sequential_2_5866
sequential_2_5868	$
sequential_2_5870:	� #
sequential_2_5872:  
sequential_2_5874: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_2/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_2_5866sequential_2_5868sequential_2_5870sequential_2_5872sequential_2_5874*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5642u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul-sequential_2/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_6181

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_6175:	� 
identity��embedding/embedding_lookup�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_6175string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/6175*'
_output_shapes
:��������� *
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/6175*'
_output_shapes
:��������� �
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_6146

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_5544
user_id
sequential_5536
sequential_5538	"
sequential_5540:	� 
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_5536sequential_5538sequential_5540*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5382z
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� k
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
+
__inference__destroyer_6228
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
9
__inference__creator_6215
identity��
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name261*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_5586

inputs
embedding_model_5562
embedding_model_5564	'
embedding_model_5566:	� 

dense_5580:  

dense_5582: 
identity��dense/StatefulPartitionedCall�'embedding_model/StatefulPartitionedCall�
'embedding_model/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_model_5562embedding_model_5564embedding_model_5566*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5480�
dense/StatefulPartitionedCallStatefulPartitionedCall0embedding_model/StatefulPartitionedCall:output:0
dense_5580
dense_5582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5579u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/StatefulPartitionedCall(^embedding_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
+__inference_sequential_2_layer_call_fn_6041
inputs_user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
�
F__inference_sequential_2_layer_call_and_return_conditional_losses_5686
user_id
embedding_model_5673
embedding_model_5675	'
embedding_model_5677:	� 

dense_5680:  

dense_5682: 
identity��dense/StatefulPartitionedCall�'embedding_model/StatefulPartitionedCall�
'embedding_model/StatefulPartitionedCallStatefulPartitionedCalluser_idembedding_model_5673embedding_model_5675embedding_model_5677*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5480�
dense/StatefulPartitionedCallStatefulPartitionedCall0embedding_model/StatefulPartitionedCall:output:0
dense_5680
dense_5682*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5579u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^dense/StatefulPartitionedCall(^embedding_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
.__inference_embedding_model_layer_call_fn_6101
inputs_user_id
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_user_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�(
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5988
queries_user_idd
`sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlee
asequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	Z
Gsequential_2_embedding_model_sequential_embedding_embedding_lookup_5966:	� C
1sequential_2_dense_matmul_readvariableop_resource:  @
2sequential_2_dense_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�)sequential_2/dense/BiasAdd/ReadVariableOp�(sequential_2/dense/MatMul/ReadVariableOp�Bsequential_2/embedding_model/sequential/embedding/embedding_lookup�Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2�
Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2`sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeries_user_idasequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
>sequential_2/embedding_model/sequential/string_lookup/IdentityIdentity\sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bsequential_2/embedding_model/sequential/embedding/embedding_lookupResourceGatherGsequential_2_embedding_model_sequential_embedding_embedding_lookup_5966Gsequential_2/embedding_model/sequential/string_lookup/Identity:output:0*
Tindices0	*Z
_classP
NLloc:@sequential_2/embedding_model/sequential/embedding/embedding_lookup/5966*'
_output_shapes
:��������� *
dtype0�
Ksequential_2/embedding_model/sequential/embedding/embedding_lookup/IdentityIdentityKsequential_2/embedding_model/sequential/embedding/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@sequential_2/embedding_model/sequential/embedding/embedding_lookup/5966*'
_output_shapes
:��������� �
Msequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1IdentityTsequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
sequential_2/dense/MatMulMatMulVsequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul#sequential_2/dense/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOpC^sequential_2/embedding_model/sequential/embedding/embedding_lookupT^sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2�
Bsequential_2/embedding_model/sequential/embedding/embedding_lookupBsequential_2/embedding_model/sequential/embedding/embedding_lookup2�
Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Ssequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:T P
#
_output_shapes
:���������
)
_user_specified_namequeries/user_id:

_output_shapes
: 
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_5555
user_id
sequential_5547
sequential_5549	"
sequential_5551:	� 
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_5547sequential_5549sequential_5551*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5423z
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� k
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_5382

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_5378:	� 
identity��!embedding/StatefulPartitionedCall�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_5378*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_5377y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
__inference_<lambda>_62366
2key_value_init260_lookuptableimportv2_table_handle.
*key_value_init260_lookuptableimportv2_keys0
,key_value_init260_lookuptableimportv2_values	
identity��%key_value_init260/LookupTableImportV2�
%key_value_init260/LookupTableImportV2LookupTableImportV22key_value_init260_lookuptableimportv2_table_handle*key_value_init260_lookuptableimportv2_keys,key_value_init260_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init260/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2N
%key_value_init260/LookupTableImportV2%key_value_init260/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_6127
inputs_user_idG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_6121:	� 
identity��%sequential/embedding/embedding_lookup�6sequential/string_lookup/None_Lookup/LookupTableFindV2�
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_6121*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/6121*'
_output_shapes
:��������� *
dtype0�
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/6121*'
_output_shapes
:��������� �
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�

�
*__inference_brute_force_layer_call_fn_5750
user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
	unknown_4:	� 
	unknown_5:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_5731p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
I__inference_embedding_model_layer_call_and_return_conditional_losses_5480

inputs
sequential_5472
sequential_5474	"
sequential_5476:	� 
identity��"sequential/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_5472sequential_5474sequential_5476*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5382z
IdentityIdentity+sequential/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� k
NoOpNoOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_5465
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_5461:	� 
identity��!embedding/StatefulPartitionedCall�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_5461*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_5377y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:���������
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_5579

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5798
queries
sequential_2_5776
sequential_2_5778	$
sequential_2_5780:	� #
sequential_2_5782:  
sequential_2_5784: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_2/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_2_5776sequential_2_5778sequential_2_5780sequential_2_5782sequential_2_5784*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5642u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul-sequential_2/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_5454
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_5450:	� 
identity��!embedding/StatefulPartitionedCall�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_5450*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_5377y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:���������
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
�
�
__inference__traced_save_6280
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop8
4savev2_sequential_2_dense_kernel_read_readvariableop6
2savev2_sequential_2_dense_bias_read_readvariableop
savev2_const_3

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHy
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop/savev2_embedding_embeddings_read_readvariableop4savev2_sequential_2_dense_kernel_read_readvariableop2savev2_sequential_2_dense_bias_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes

2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*D
_input_shapes3
1: :�:	� :	� :  : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:�:%!

_output_shapes
:	� :%!

_output_shapes
:	� :$ 

_output_shapes

:  : 

_output_shapes
: :

_output_shapes
: 
�

�
*__inference_brute_force_layer_call_fn_5909
queries_user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
	unknown_4:	� 
	unknown_5:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_5731p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:���������
)
_user_specified_namequeries/user_id:

_output_shapes
: 
�

�
*__inference_brute_force_layer_call_fn_5838
user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
	unknown_4:	� 
	unknown_5:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_5798p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
C__inference_embedding_layer_call_and_return_conditional_losses_6210

inputs	(
embedding_lookup_6204:	� 
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_6204inputs*
Tindices0	*(
_class
loc:@embedding_lookup/6204*'
_output_shapes
:��������� *
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/6204*'
_output_shapes
:��������� }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
 __inference__traced_restore_6305
file_prefix+
assignvariableop_identifiers:	�0
assignvariableop_1_candidates:	� :
'assignvariableop_2_embedding_embeddings:	� >
,assignvariableop_3_sequential_2_dense_kernel:  8
*assignvariableop_4_sequential_2_dense_bias: 

identity_6��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp'assignvariableop_2_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp,assignvariableop_3_sequential_2_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp*assignvariableop_4_sequential_2_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
+__inference_sequential_2_layer_call_fn_6026
inputs_user_id
unknown
	unknown_0	
	unknown_1:	� 
	unknown_2:  
	unknown_3: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:���������
(
_user_specified_nameinputs/user_id:

_output_shapes
: 
�
}
(__inference_embedding_layer_call_fn_6201

inputs	
unknown:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_5377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_embedding_layer_call_and_return_conditional_losses_5377

inputs	(
embedding_lookup_5371:	� 
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_5371inputs*
Tindices0	*(
_class
loc:@embedding_lookup/5371*'
_output_shapes
:��������� *
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/5371*'
_output_shapes
:��������� }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_sequential_layer_call_fn_6157

inputs
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5382o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_6194

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_6188:	� 
identity��embedding/embedding_lookup�+string_lookup/None_Lookup/LookupTableFindV2�
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_6188string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/6188*'
_output_shapes
:��������� *
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/6188*'
_output_shapes
:��������� �
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�/
�
__inference__wrapped_model_5357
user_idp
lbrute_force_sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleq
mbrute_force_sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	f
Sbrute_force_sequential_2_embedding_model_sequential_embedding_embedding_lookup_5335:	� O
=brute_force_sequential_2_dense_matmul_readvariableop_resource:  L
>brute_force_sequential_2_dense_biasadd_readvariableop_resource: =
*brute_force_matmul_readvariableop_resource:	� *
brute_force_gather_resource:	�
identity

identity_1��brute_force/Gather�!brute_force/MatMul/ReadVariableOp�5brute_force/sequential_2/dense/BiasAdd/ReadVariableOp�4brute_force/sequential_2/dense/MatMul/ReadVariableOp�Nbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup�_brute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2�
_brute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2lbrute_force_sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleuser_idmbrute_force_sequential_2_embedding_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
Jbrute_force/sequential_2/embedding_model/sequential/string_lookup/IdentityIdentityhbrute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Nbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookupResourceGatherSbrute_force_sequential_2_embedding_model_sequential_embedding_embedding_lookup_5335Sbrute_force/sequential_2/embedding_model/sequential/string_lookup/Identity:output:0*
Tindices0	*f
_class\
ZXloc:@brute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/5335*'
_output_shapes
:��������� *
dtype0�
Wbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/IdentityIdentityWbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup:output:0*
T0*f
_class\
ZXloc:@brute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/5335*'
_output_shapes
:��������� �
Ybrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1Identity`brute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:��������� �
4brute_force/sequential_2/dense/MatMul/ReadVariableOpReadVariableOp=brute_force_sequential_2_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
%brute_force/sequential_2/dense/MatMulMatMulbbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup/Identity_1:output:0<brute_force/sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
5brute_force/sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp>brute_force_sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
&brute_force/sequential_2/dense/BiasAddBiasAdd/brute_force/sequential_2/dense/MatMul:product:0=brute_force/sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
brute_force/MatMulMatMul/brute_force/sequential_2/dense/BiasAdd:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(W
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :��
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0p
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*(
_output_shapes
:����������k
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������o

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOp6^brute_force/sequential_2/dense/BiasAdd/ReadVariableOp5^brute_force/sequential_2/dense/MatMul/ReadVariableOpO^brute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup`^brute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2n
5brute_force/sequential_2/dense/BiasAdd/ReadVariableOp5brute_force/sequential_2/dense/BiasAdd/ReadVariableOp2l
4brute_force/sequential_2/dense/MatMul/ReadVariableOp4brute_force/sequential_2/dense/MatMul/ReadVariableOp2�
Nbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookupNbrute_force/sequential_2/embedding_model/sequential/embedding/embedding_lookup2�
_brute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2_brute_force/sequential_2/embedding_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
.__inference_embedding_model_layer_call_fn_5489
user_id
unknown
	unknown_0	
	unknown_1:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluser_idunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_5480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: 
�
�
E__inference_brute_force_layer_call_and_return_conditional_losses_5731
queries
sequential_2_5709
sequential_2_5711	$
sequential_2_5713:	� #
sequential_2_5715:  
sequential_2_5717: 1
matmul_readvariableop_resource:	� 
gather_resource:	�

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_2/StatefulPartitionedCall�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_2_5709sequential_2_5711sequential_2_5713sequential_2_5715sequential_2_5717*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5586u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype0�
MatMulMatMul-sequential_2/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(K
TopKV2/kConst*
_output_shapes
: *
dtype0*
value
B :�|
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*<
_output_shapes*
(:����������:�����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*(
_output_shapes
:����������*
dtype0X
IdentityIdentityGather:output:0*
T0*(
_output_shapes
:����������a

Identity_1IdentityTopKV2:values:0^NoOp*
T0*(
_output_shapes
:����������c

Identity_2IdentityIdentity:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
user_id,
serving_default_user_id:0���������?
output_13
StatefulPartitionedCall_1:0����������?
output_23
StatefulPartitionedCall_1:1����������tensorflow/serving/predict:��
�
query_model
identifiers
_identifiers

candidates
_candidates
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
query_with_exclusions

signatures"
_tf_keras_model
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
:�2identifiers
:	� 2
candidates
C
0
1
2
3
4"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_brute_force_layer_call_fn_5750
*__inference_brute_force_layer_call_fn_5909
*__inference_brute_force_layer_call_fn_5930
*__inference_brute_force_layer_call_fn_5838�
���
FullArgSpec/
args'�$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_brute_force_layer_call_and_return_conditional_losses_5959
E__inference_brute_force_layer_call_and_return_conditional_losses_5988
E__inference_brute_force_layer_call_and_return_conditional_losses_5863
E__inference_brute_force_layer_call_and_return_conditional_losses_5888�
���
FullArgSpec/
args'�$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference__wrapped_model_5357user_id"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec1
args)�&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
serving_default"
signature_map
�
	embedding
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_model
�

kernel
bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_sequential_2_layer_call_fn_5599
+__inference_sequential_2_layer_call_fn_6026
+__inference_sequential_2_layer_call_fn_6041
+__inference_sequential_2_layer_call_fn_5670�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_sequential_2_layer_call_and_return_conditional_losses_6060
F__inference_sequential_2_layer_call_and_return_conditional_losses_6079
F__inference_sequential_2_layer_call_and_return_conditional_losses_5686
F__inference_sequential_2_layer_call_and_return_conditional_losses_5702�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
':%	� 2embedding/embeddings
+:)  2sequential_2/dense/kernel
%:# 2sequential_2/dense/bias
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
"__inference_signature_wrapper_6011user_id"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
1layer-0
2layer_with_weights-0
2layer-1
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_sequential
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_embedding_model_layer_call_fn_5489
.__inference_embedding_model_layer_call_fn_6090
.__inference_embedding_model_layer_call_fn_6101
.__inference_embedding_model_layer_call_fn_5533�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_embedding_model_layer_call_and_return_conditional_losses_6114
I__inference_embedding_model_layer_call_and_return_conditional_losses_6127
I__inference_embedding_model_layer_call_and_return_conditional_losses_5544
I__inference_embedding_model_layer_call_and_return_conditional_losses_5555�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�2�
$__inference_dense_layer_call_fn_6136�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_6146�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
Clookup_table
D	keras_api"
_tf_keras_layer
�

embeddings
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_sequential_layer_call_fn_5391
)__inference_sequential_layer_call_fn_6157
)__inference_sequential_layer_call_fn_6168
)__inference_sequential_layer_call_fn_5443�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_sequential_layer_call_and_return_conditional_losses_6181
D__inference_sequential_layer_call_and_return_conditional_losses_6194
D__inference_sequential_layer_call_and_return_conditional_losses_5454
D__inference_sequential_layer_call_and_return_conditional_losses_5465�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
j
P_initializer
Q_create_resource
R_initialize
S_destroy_resourceR jCustom.StaticHashTable
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_embedding_layer_call_fn_6201�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_embedding_layer_call_and_return_conditional_losses_6210�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
�2�
__inference__creator_6215�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__initializer_6223�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__destroyer_6228�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
	J
Const
J	
Const_1
J	
Const_25
__inference__creator_6215�

� 
� "� 7
__inference__destroyer_6228�

� 
� "� >
__inference__initializer_6223CZ[�

� 
� "� �
__inference__wrapped_model_5357�CY<�9
2�/
-�*
(
user_id�
user_id���������
� "e�b
/
output_1#� 
output_1����������
/
output_2#� 
output_2�����������
E__inference_brute_force_layer_call_and_return_conditional_losses_5863�CYD�A
:�7
-�*
(
user_id�
user_id���������

 
p 
� "M�J
C�@
�
0/0����������
�
0/1����������
� �
E__inference_brute_force_layer_call_and_return_conditional_losses_5888�CYD�A
:�7
-�*
(
user_id�
user_id���������

 
p
� "M�J
C�@
�
0/0����������
�
0/1����������
� �
E__inference_brute_force_layer_call_and_return_conditional_losses_5959�CYL�I
B�?
5�2
0
user_id%�"
queries/user_id���������

 
p 
� "M�J
C�@
�
0/0����������
�
0/1����������
� �
E__inference_brute_force_layer_call_and_return_conditional_losses_5988�CYL�I
B�?
5�2
0
user_id%�"
queries/user_id���������

 
p
� "M�J
C�@
�
0/0����������
�
0/1����������
� �
*__inference_brute_force_layer_call_fn_5750�CYD�A
:�7
-�*
(
user_id�
user_id���������

 
p 
� "?�<
�
0����������
�
1�����������
*__inference_brute_force_layer_call_fn_5838�CYD�A
:�7
-�*
(
user_id�
user_id���������

 
p
� "?�<
�
0����������
�
1�����������
*__inference_brute_force_layer_call_fn_5909�CYL�I
B�?
5�2
0
user_id%�"
queries/user_id���������

 
p 
� "?�<
�
0����������
�
1�����������
*__inference_brute_force_layer_call_fn_5930�CYL�I
B�?
5�2
0
user_id%�"
queries/user_id���������

 
p
� "?�<
�
0����������
�
1�����������
?__inference_dense_layer_call_and_return_conditional_losses_6146\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� w
$__inference_dense_layer_call_fn_6136O/�,
%�"
 �
inputs��������� 
� "���������� �
C__inference_embedding_layer_call_and_return_conditional_losses_6210W+�(
!�
�
inputs���������	
� "%�"
�
0��������� 
� v
(__inference_embedding_layer_call_fn_6201J+�(
!�
�
inputs���������	
� "���������� �
I__inference_embedding_model_layer_call_and_return_conditional_losses_5544nCY@�=
6�3
-�*
(
user_id�
user_id���������
p 
� "%�"
�
0��������� 
� �
I__inference_embedding_model_layer_call_and_return_conditional_losses_5555nCY@�=
6�3
-�*
(
user_id�
user_id���������
p
� "%�"
�
0��������� 
� �
I__inference_embedding_model_layer_call_and_return_conditional_losses_6114uCYG�D
=�:
4�1
/
user_id$�!
inputs/user_id���������
p 
� "%�"
�
0��������� 
� �
I__inference_embedding_model_layer_call_and_return_conditional_losses_6127uCYG�D
=�:
4�1
/
user_id$�!
inputs/user_id���������
p
� "%�"
�
0��������� 
� �
.__inference_embedding_model_layer_call_fn_5489aCY@�=
6�3
-�*
(
user_id�
user_id���������
p 
� "���������� �
.__inference_embedding_model_layer_call_fn_5533aCY@�=
6�3
-�*
(
user_id�
user_id���������
p
� "���������� �
.__inference_embedding_model_layer_call_fn_6090hCYG�D
=�:
4�1
/
user_id$�!
inputs/user_id���������
p 
� "���������� �
.__inference_embedding_model_layer_call_fn_6101hCYG�D
=�:
4�1
/
user_id$�!
inputs/user_id���������
p
� "���������� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_5686tCYD�A
:�7
-�*
(
user_id�
user_id���������
p 

 
� "%�"
�
0��������� 
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_5702tCYD�A
:�7
-�*
(
user_id�
user_id���������
p

 
� "%�"
�
0��������� 
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_6060{CYK�H
A�>
4�1
/
user_id$�!
inputs/user_id���������
p 

 
� "%�"
�
0��������� 
� �
F__inference_sequential_2_layer_call_and_return_conditional_losses_6079{CYK�H
A�>
4�1
/
user_id$�!
inputs/user_id���������
p

 
� "%�"
�
0��������� 
� �
+__inference_sequential_2_layer_call_fn_5599gCYD�A
:�7
-�*
(
user_id�
user_id���������
p 

 
� "���������� �
+__inference_sequential_2_layer_call_fn_5670gCYD�A
:�7
-�*
(
user_id�
user_id���������
p

 
� "���������� �
+__inference_sequential_2_layer_call_fn_6026nCYK�H
A�>
4�1
/
user_id$�!
inputs/user_id���������
p 

 
� "���������� �
+__inference_sequential_2_layer_call_fn_6041nCYK�H
A�>
4�1
/
user_id$�!
inputs/user_id���������
p

 
� "���������� �
D__inference_sequential_layer_call_and_return_conditional_losses_5454nCY@�=
6�3
)�&
string_lookup_input���������
p 

 
� "%�"
�
0��������� 
� �
D__inference_sequential_layer_call_and_return_conditional_losses_5465nCY@�=
6�3
)�&
string_lookup_input���������
p

 
� "%�"
�
0��������� 
� �
D__inference_sequential_layer_call_and_return_conditional_losses_6181aCY3�0
)�&
�
inputs���������
p 

 
� "%�"
�
0��������� 
� �
D__inference_sequential_layer_call_and_return_conditional_losses_6194aCY3�0
)�&
�
inputs���������
p

 
� "%�"
�
0��������� 
� �
)__inference_sequential_layer_call_fn_5391aCY@�=
6�3
)�&
string_lookup_input���������
p 

 
� "���������� �
)__inference_sequential_layer_call_fn_5443aCY@�=
6�3
)�&
string_lookup_input���������
p

 
� "���������� �
)__inference_sequential_layer_call_fn_6157TCY3�0
)�&
�
inputs���������
p 

 
� "���������� �
)__inference_sequential_layer_call_fn_6168TCY3�0
)�&
�
inputs���������
p

 
� "���������� �
"__inference_signature_wrapper_6011�CY7�4
� 
-�*
(
user_id�
user_id���������"e�b
/
output_1#� 
output_1����������
/
output_2#� 
output_2����������