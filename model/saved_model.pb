??
?(?(
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
o
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameidentifiers
h
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes	
:?*
dtype0
q

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_name
candidates
j
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes
:	? *
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8 *%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:8 *
dtype0
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes

: *
dtype0
?
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameembedding_2/embeddings
?
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes
:	? *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:` *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:` *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name166*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name188*
value_dtype0	
m
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name546*
value_dtype0	
~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_206*
value_dtype0	
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_3Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_6Const*
_output_shapes
:7*
dtype0*?
value?B?7BUser_1BUser_100BUser_11BUser_14BUser_17BUser_18BUser_19BUser_2BUser_20BUser_23BUser_25BUser_26BUser_28BUser_29BUser_3BUser_31BUser_36BUser_37BUser_40BUser_42BUser_43BUser_45BUser_46BUser_48BUser_49BUser_5BUser_50BUser_52BUser_55BUser_58BUser_6BUser_61BUser_63BUser_64BUser_67BUser_68BUser_69BUser_7BUser_70BUser_72BUser_74BUser_75BUser_77BUser_8BUser_80BUser_81BUser_82BUser_83BUser_88BUser_89BUser_91BUser_94BUser_96BUser_97BUser_99
?
Const_7Const*
_output_shapes
:7*
dtype0	*?
value?B?	7"?                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       
?
Const_8Const*
_output_shapes
:*
dtype0*?

value?
B?
B8anemia kidney_disease goitre rickets diabeties pregnancyB.anemia kidney_disease goitre rickets pregnancyBcancerB5cancer anemia obesity kidney_disease goitre pregnancyB.cancer anemia obesity kidney_disease pregnancyB/cancer hypertension goitre heart_disease scurvyB?cancer kidney_disease obesity anemia diabeties scurvy pregnancyB<cancer kidney_disease obesity anemia heart_disease diabetiesBbcancer kidney_disease obesity hypertension anemia goitre heart_disease diabeties rickets pregnancyBdiabeties goitreBdiabeties hypertensionBgoitreBgoitre hypertensionBgoitre kidney_diseaseBhypertensionBhypertension heart_diseaseBLhypertension obesity anemia goitre heart_disease diabeties rickets pregnancyB"kidney_disease goitre hypertensionBRkidney_disease hypertension anemia goitre heart_disease diabeties scurvy pregnancyBBkidney_disease hypertension anemia goitre rickets scurvy pregnancyBAkidney_disease hypertension goitre heart_disease scurvy pregnancyB.kidney_disease obesity goitre scurvy pregnancyBIkidney_disease obesity hypertension goitre heart_disease scurvy pregnancyBobesity cancer hypertensionBobesity diabeties goitre anemiaB%obesity diabeties goitre hypertensionB!obesity eye_disease heart_diseaseB+obesity kidney_disease scurvy heart_diseaseBpregnancy anemia kidney_diseaseB(scurvy rickets eye_disease heart_disease
?
Const_9Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                        	       
                                                                                                                                                   
?
Const_10Const*
_output_shapes
:*
dtype0*?
value?B?BgoitreBhypertensionBkidneydiseaseB	pregnancyBanemiaBricketsBobesityBheartdiseaseB	diabetiesBcancerBscurvyB
eyedisease
?
Const_11Const*
_output_shapes
:*
dtype0	*u
valuelBj	"`                                                 	       
                            
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_6Const_7*
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
GPU 2J 8? *#
fR
__inference_<lambda>_12294
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_8Const_9*
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
GPU 2J 8? *#
fR
__inference_<lambda>_12302
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_10Const_11*
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
GPU 2J 8? *#
fR
__inference_<lambda>_12310
?
PartitionedCallPartitionedCall*	
Tin
 *
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
GPU 2J 8? *#
fR
__inference_<lambda>_12315
p
NoOpNoOp^PartitionedCall^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
??
Const_12Const"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
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
?
embedding_model
dense_layers
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
5
0
1
3
4
5
6
7*
'
0
1
2
3
4*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
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
serving_default* 
?
 user_embedding
!disease_embedding
"disease_vector
#disease_text_embedding
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
?
*layer_with_weights-0
*layer-0
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
'
0
1
3
4
5*
'
0
1
2
3
4*
* 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
TN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEembedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEembedding_2/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*

1
2*

0*
* 
* 
* 
* 
?
6layer-0
7layer_with_weights-0
7layer-1
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
?
>layer-0
?layer_with_weights-0
?layer-1
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
;
F_lookup_layer
G	keras_api
H_adapt_function*
?
"layer_with_weights-0
"layer-0
Ilayer_with_weights-1
Ilayer-1
Jlayer-2
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*

0
1
3*

0
1
2*
* 
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
?

kernel
bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses*

0
1*

0
1*
* 
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
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
alookup_table
b	keras_api* 
?

embeddings
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*

0*

0*
* 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
#
nlookup_table
o	keras_api* 
?

embeddings
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses*

0*

0*
* 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 
7
{lookup_table
|token_counts
}	keras_api*
* 
* 
?

embeddings
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 

1*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
* 
 
 0
!1
"2
#3*
* 
* 
* 

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
* 
* 
* 

*0*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
* 

60
71*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*
* 
* 
* 

>0
?1*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource`
tableWquery_model/embedding_model/disease_vector/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

"0
I1
J2*
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
* 
* 
* 
* 
* 
* 
* 
r
serving_default_DiseasePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
serving_default_User_IdPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_3StatefulPartitionedCallserving_default_Diseaseserving_default_User_Id
hash_tableConstembedding/embeddingshash_table_1Const_1embedding_1/embeddingshash_table_2Const_2Const_3Const_4embedding_2/embeddingsdense/kernel
dense/bias
candidatesidentifiers*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_11206
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp*embedding_2/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_12*
Tin
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_12385
?
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddingsembedding_1/embeddingsembedding_2/embeddingsdense/kernel
dense/biasMutableHashTable*
Tin
2	*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_12419??
?
?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10290
dense_input
dense_10284:` 
dense_10286: 
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_10284dense_10286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10212u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
'
_output_shapes
:?????????`
%
_user_specified_namedense_input
??
?
F__inference_query_model_layer_call_and_return_conditional_losses_11368
inputs_disease
inputs_user_idR
Nuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleS
Ouser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	H
6user_model_sequential_embedding_embedding_lookup_11278:8 V
Ruser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleW
Suser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	L
:user_model_sequential_1_embedding_1_embedding_lookup_11287: i
euser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handlej
fuser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	F
Buser_model_sequential_2_text_vectorization_string_lookup_2_equal_yI
Euser_model_sequential_2_text_vectorization_string_lookup_2_selectv2_t	M
:user_model_sequential_2_embedding_2_embedding_lookup_11339:	? C
1sequential_3_dense_matmul_readvariableop_resource:` @
2sequential_3_dense_biasadd_readvariableop_resource: 
identity??)sequential_3/dense/BiasAdd/ReadVariableOp?(sequential_3/dense/MatMul/ReadVariableOp?0user_model/sequential/embedding/embedding_lookup?Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?4user_model/sequential_1/embedding_1/embedding_lookup?Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?4user_model/sequential_2/embedding_2/embedding_lookup?Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Nuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idOuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
,user_model/sequential/string_lookup/IdentityIdentityJuser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
0user_model/sequential/embedding/embedding_lookupResourceGather6user_model_sequential_embedding_embedding_lookup_112785user_model/sequential/string_lookup/Identity:output:0*
Tindices0	*I
_class?
=;loc:@user_model/sequential/embedding/embedding_lookup/11278*'
_output_shapes
:????????? *
dtype0?
9user_model/sequential/embedding/embedding_lookup/IdentityIdentity9user_model/sequential/embedding/embedding_lookup:output:0*
T0*I
_class?
=;loc:@user_model/sequential/embedding/embedding_lookup/11278*'
_output_shapes
:????????? ?
;user_model/sequential/embedding/embedding_lookup/Identity_1IdentityBuser_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Ruser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_diseaseSuser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0user_model/sequential_1/string_lookup_1/IdentityIdentityNuser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
4user_model/sequential_1/embedding_1/embedding_lookupResourceGather:user_model_sequential_1_embedding_1_embedding_lookup_112879user_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*M
_classC
A?loc:@user_model/sequential_1/embedding_1/embedding_lookup/11287*'
_output_shapes
:????????? *
dtype0?
=user_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentity=user_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*M
_classC
A?loc:@user_model/sequential_1/embedding_1/embedding_lookup/11287*'
_output_shapes
:????????? ?
?user_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityFuser_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? z
6user_model/sequential_2/text_vectorization/StringLowerStringLowerinputs_disease*#
_output_shapes
:??????????
=user_model/sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplace?user_model/sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
<user_model/sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
Duser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2Fuser_model/sequential_2/text_vectorization/StaticRegexReplace:output:0Euser_model/sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Juser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
Duser_model/sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceNuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0Suser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Nuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Nuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceLuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0Wuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Wuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
muser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastMuser_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastOuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapequser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
vuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
{user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateruser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
vuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxquser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2~user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulzuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumsuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumsuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
zuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountquser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
tuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
xuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
tuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2euser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleMuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0fuser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
@user_model/sequential_2/text_vectorization/string_lookup_2/EqualEqualMuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0Buser_model_sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
Cuser_model/sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV2Duser_model/sequential_2/text_vectorization/string_lookup_2/Equal:z:0Euser_model_sequential_2_text_vectorization_string_lookup_2_selectv2_tauser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Cuser_model/sequential_2/text_vectorization/string_lookup_2/IdentityIdentityLuser_model/sequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
Guser_model/sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
?user_model/sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Nuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorHuser_model/sequential_2/text_vectorization/RaggedToTensor/Const:output:0Luser_model/sequential_2/text_vectorization/string_lookup_2/Identity:output:0Puser_model/sequential_2/text_vectorization/RaggedToTensor/default_value:output:0Ouser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Muser_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
4user_model/sequential_2/embedding_2/embedding_lookupResourceGather:user_model_sequential_2_embedding_2_embedding_lookup_11339Wuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*M
_classC
A?loc:@user_model/sequential_2/embedding_2/embedding_lookup/11339*4
_output_shapes"
 :?????????????????? *
dtype0?
=user_model/sequential_2/embedding_2/embedding_lookup/IdentityIdentity=user_model/sequential_2/embedding_2/embedding_lookup:output:0*
T0*M
_classC
A?loc:@user_model/sequential_2/embedding_2/embedding_lookup/11339*4
_output_shapes"
 :?????????????????? ?
?user_model/sequential_2/embedding_2/embedding_lookup/Identity_1IdentityFuser_model/sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? p
.user_model/sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
,user_model/sequential_2/embedding_2/NotEqualNotEqualWuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:07user_model/sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
Duser_model/sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Fuser_model/sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fuser_model/sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>user_model/sequential_2/global_average_pooling1d/strided_sliceStridedSliceHuser_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Muser_model/sequential_2/global_average_pooling1d/strided_slice/stack:output:0Ouser_model/sequential_2/global_average_pooling1d/strided_slice/stack_1:output:0Ouser_model/sequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
5user_model/sequential_2/global_average_pooling1d/CastCast0user_model/sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????????????
?user_model/sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
;user_model/sequential_2/global_average_pooling1d/ExpandDims
ExpandDims9user_model/sequential_2/global_average_pooling1d/Cast:y:0Huser_model/sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
4user_model/sequential_2/global_average_pooling1d/mulMulHuser_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Duser_model/sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
Fuser_model/sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
4user_model/sequential_2/global_average_pooling1d/SumSum8user_model/sequential_2/global_average_pooling1d/mul:z:0Ouser_model/sequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
Huser_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
6user_model/sequential_2/global_average_pooling1d/Sum_1SumDuser_model/sequential_2/global_average_pooling1d/ExpandDims:output:0Quser_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
8user_model/sequential_2/global_average_pooling1d/truedivRealDiv=user_model/sequential_2/global_average_pooling1d/Sum:output:0?user_model/sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? X
user_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model/concatConcatV2Duser_model/sequential/embedding/embedding_lookup/Identity_1:output:0Huser_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0<user_model/sequential_2/global_average_pooling1d/truediv:z:0user_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`?
(sequential_3/dense/MatMul/ReadVariableOpReadVariableOp1sequential_3_dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0?
sequential_3/dense/MatMulMatMuluser_model/concat:output:00sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
)sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_3/dense/BiasAddBiasAdd#sequential_3/dense/MatMul:product:01sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
IdentityIdentity#sequential_3/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp*^sequential_3/dense/BiasAdd/ReadVariableOp)^sequential_3/dense/MatMul/ReadVariableOp1^user_model/sequential/embedding/embedding_lookupB^user_model/sequential/string_lookup/None_Lookup/LookupTableFindV25^user_model/sequential_1/embedding_1/embedding_lookupF^user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV25^user_model/sequential_2/embedding_2/embedding_lookupY^user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2V
)sequential_3/dense/BiasAdd/ReadVariableOp)sequential_3/dense/BiasAdd/ReadVariableOp2T
(sequential_3/dense/MatMul/ReadVariableOp(sequential_3/dense/MatMul/ReadVariableOp2d
0user_model/sequential/embedding/embedding_lookup0user_model/sequential/embedding/embedding_lookup2?
Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV22l
4user_model/sequential_1/embedding_1/embedding_lookup4user_model/sequential_1/embedding_1/embedding_lookup2?
Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22l
4user_model/sequential_2/embedding_2/embedding_lookup4user_model/sequential_2/embedding_2/embedding_lookup2?
Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_10874
disease
user_id
query_model_10836
query_model_10838	#
query_model_10840:8 
query_model_10842
query_model_10844	#
query_model_10846: 
query_model_10848
query_model_10850	
query_model_10852
query_model_10854	$
query_model_10856:	? #
query_model_10858:` 
query_model_10860: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?#query_model/StatefulPartitionedCall?
#query_model/StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idquery_model_10836query_model_10838query_model_10840query_model_10842query_model_10844query_model_10846query_model_10848query_model_10850query_model_10852query_model_10854query_model_10856query_model_10858query_model_10860*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10425u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul,query_model/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp$^query_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2J
#query_model/StatefulPartitionedCall#query_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
??
?
F__inference_query_model_layer_call_and_return_conditional_losses_11466
inputs_disease
inputs_user_idR
Nuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleS
Ouser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	H
6user_model_sequential_embedding_embedding_lookup_11376:8 V
Ruser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleW
Suser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	L
:user_model_sequential_1_embedding_1_embedding_lookup_11385: i
euser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handlej
fuser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	F
Buser_model_sequential_2_text_vectorization_string_lookup_2_equal_yI
Euser_model_sequential_2_text_vectorization_string_lookup_2_selectv2_t	M
:user_model_sequential_2_embedding_2_embedding_lookup_11437:	? C
1sequential_3_dense_matmul_readvariableop_resource:` @
2sequential_3_dense_biasadd_readvariableop_resource: 
identity??)sequential_3/dense/BiasAdd/ReadVariableOp?(sequential_3/dense/MatMul/ReadVariableOp?0user_model/sequential/embedding/embedding_lookup?Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?4user_model/sequential_1/embedding_1/embedding_lookup?Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?4user_model/sequential_2/embedding_2/embedding_lookup?Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Nuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idOuser_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
,user_model/sequential/string_lookup/IdentityIdentityJuser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
0user_model/sequential/embedding/embedding_lookupResourceGather6user_model_sequential_embedding_embedding_lookup_113765user_model/sequential/string_lookup/Identity:output:0*
Tindices0	*I
_class?
=;loc:@user_model/sequential/embedding/embedding_lookup/11376*'
_output_shapes
:????????? *
dtype0?
9user_model/sequential/embedding/embedding_lookup/IdentityIdentity9user_model/sequential/embedding/embedding_lookup:output:0*
T0*I
_class?
=;loc:@user_model/sequential/embedding/embedding_lookup/11376*'
_output_shapes
:????????? ?
;user_model/sequential/embedding/embedding_lookup/Identity_1IdentityBuser_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Ruser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_diseaseSuser_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0user_model/sequential_1/string_lookup_1/IdentityIdentityNuser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
4user_model/sequential_1/embedding_1/embedding_lookupResourceGather:user_model_sequential_1_embedding_1_embedding_lookup_113859user_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*M
_classC
A?loc:@user_model/sequential_1/embedding_1/embedding_lookup/11385*'
_output_shapes
:????????? *
dtype0?
=user_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentity=user_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*M
_classC
A?loc:@user_model/sequential_1/embedding_1/embedding_lookup/11385*'
_output_shapes
:????????? ?
?user_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityFuser_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? z
6user_model/sequential_2/text_vectorization/StringLowerStringLowerinputs_disease*#
_output_shapes
:??????????
=user_model/sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplace?user_model/sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
<user_model/sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
Duser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2Fuser_model/sequential_2/text_vectorization/StaticRegexReplace:output:0Euser_model/sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Juser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
Duser_model/sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceNuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0Suser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Luser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Nuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Nuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceLuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0Uuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0Wuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Wuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
muser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastMuser_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastOuser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapequser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
vuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
{user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateruser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
vuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxquser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
wuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2~user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulzuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumsuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumsuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
yuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
zuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountquser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
tuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
xuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
tuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
ouser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0uuser_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0}user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2euser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleMuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0fuser_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
@user_model/sequential_2/text_vectorization/string_lookup_2/EqualEqualMuser_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0Buser_model_sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
Cuser_model/sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV2Duser_model/sequential_2/text_vectorization/string_lookup_2/Equal:z:0Euser_model_sequential_2_text_vectorization_string_lookup_2_selectv2_tauser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Cuser_model/sequential_2/text_vectorization/string_lookup_2/IdentityIdentityLuser_model/sequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
Guser_model/sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
?user_model/sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Nuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorHuser_model/sequential_2/text_vectorization/RaggedToTensor/Const:output:0Luser_model/sequential_2/text_vectorization/string_lookup_2/Identity:output:0Puser_model/sequential_2/text_vectorization/RaggedToTensor/default_value:output:0Ouser_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Muser_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
4user_model/sequential_2/embedding_2/embedding_lookupResourceGather:user_model_sequential_2_embedding_2_embedding_lookup_11437Wuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*M
_classC
A?loc:@user_model/sequential_2/embedding_2/embedding_lookup/11437*4
_output_shapes"
 :?????????????????? *
dtype0?
=user_model/sequential_2/embedding_2/embedding_lookup/IdentityIdentity=user_model/sequential_2/embedding_2/embedding_lookup:output:0*
T0*M
_classC
A?loc:@user_model/sequential_2/embedding_2/embedding_lookup/11437*4
_output_shapes"
 :?????????????????? ?
?user_model/sequential_2/embedding_2/embedding_lookup/Identity_1IdentityFuser_model/sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? p
.user_model/sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
,user_model/sequential_2/embedding_2/NotEqualNotEqualWuser_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:07user_model/sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
Duser_model/sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Fuser_model/sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fuser_model/sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>user_model/sequential_2/global_average_pooling1d/strided_sliceStridedSliceHuser_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Muser_model/sequential_2/global_average_pooling1d/strided_slice/stack:output:0Ouser_model/sequential_2/global_average_pooling1d/strided_slice/stack_1:output:0Ouser_model/sequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
5user_model/sequential_2/global_average_pooling1d/CastCast0user_model/sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????????????
?user_model/sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
;user_model/sequential_2/global_average_pooling1d/ExpandDims
ExpandDims9user_model/sequential_2/global_average_pooling1d/Cast:y:0Huser_model/sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
4user_model/sequential_2/global_average_pooling1d/mulMulHuser_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Duser_model/sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
Fuser_model/sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
4user_model/sequential_2/global_average_pooling1d/SumSum8user_model/sequential_2/global_average_pooling1d/mul:z:0Ouser_model/sequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
Huser_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
6user_model/sequential_2/global_average_pooling1d/Sum_1SumDuser_model/sequential_2/global_average_pooling1d/ExpandDims:output:0Quser_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
8user_model/sequential_2/global_average_pooling1d/truedivRealDiv=user_model/sequential_2/global_average_pooling1d/Sum:output:0?user_model/sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? X
user_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model/concatConcatV2Duser_model/sequential/embedding/embedding_lookup/Identity_1:output:0Huser_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0<user_model/sequential_2/global_average_pooling1d/truediv:z:0user_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`?
(sequential_3/dense/MatMul/ReadVariableOpReadVariableOp1sequential_3_dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0?
sequential_3/dense/MatMulMatMuluser_model/concat:output:00sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
)sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_3/dense/BiasAddBiasAdd#sequential_3/dense/MatMul:product:01sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
IdentityIdentity#sequential_3/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp*^sequential_3/dense/BiasAdd/ReadVariableOp)^sequential_3/dense/MatMul/ReadVariableOp1^user_model/sequential/embedding/embedding_lookupB^user_model/sequential/string_lookup/None_Lookup/LookupTableFindV25^user_model/sequential_1/embedding_1/embedding_lookupF^user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV25^user_model/sequential_2/embedding_2/embedding_lookupY^user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2V
)sequential_3/dense/BiasAdd/ReadVariableOp)sequential_3/dense/BiasAdd/ReadVariableOp2T
(sequential_3/dense/MatMul/ReadVariableOp(sequential_3/dense/MatMul/ReadVariableOp2d
0user_model/sequential/embedding/embedding_lookup0user_model/sequential/embedding/embedding_lookup2?
Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Auser_model/sequential/string_lookup/None_Lookup/LookupTableFindV22l
4user_model/sequential_1/embedding_1/embedding_lookup4user_model/sequential_1/embedding_1/embedding_lookup2?
Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Euser_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22l
4user_model/sequential_2/embedding_2/embedding_lookup4user_model/sequential_2/embedding_2/embedding_lookup2?
Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Xuser_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_9500
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_9496:8 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_9496*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_9412y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_9534
string_lookup_1_input
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_1_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9525o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?`
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9953
text_vectorization_inputQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	#
embedding_2_9946:	? 
identity??#embedding_2/StatefulPartitionedCall?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_9946*
Tin
2	*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
(global_average_pooling1d/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0embedding_2/NotEqual:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707?
IdentityIdentity1global_average_pooling1d/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCallA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_dense_layer_call_fn_12097

inputs
unknown:` 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10212o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
,__inference_sequential_3_layer_call_fn_10226
dense_input
unknown:` 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????`
%
_user_specified_namedense_input
?
?
__inference__traced_save_12385
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop5
1savev2_embedding_2_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_12

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*?
value?B?
B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB\query_model/embedding_model/disease_vector/_lookup_layer/token_counts/.ATTRIBUTES/table-keysB^query_model/embedding_model/disease_vector/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop1savev2_embedding_2_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1savev2_const_12"/device:CPU:0*
_output_shapes
 *
dtypes
2
	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*`
_input_shapesO
M: :?:	? :8 : :	? :` : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:?:%!

_output_shapes
:	? :$ 

_output_shapes

:8 :$ 

_output_shapes

: :%!

_output_shapes
:	? :$ 

_output_shapes

:` : 

_output_shapes
: :

_output_shapes
::	

_output_shapes
::


_output_shapes
: 
?o
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_12017

inputsQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	5
"embedding_2_embedding_lookup_11996:	? 
identity??embedding_2/embedding_lookup?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_11996?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/11996*4
_output_shapes"
 :?????????????????? *
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/11996*4
_output_shapes"
 :?????????????????? ?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:??????????????????v
,global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&global_average_pooling1d/strided_sliceStridedSlice0embedding_2/embedding_lookup/Identity_1:output:05global_average_pooling1d/strided_slice/stack:output:07global_average_pooling1d/strided_slice/stack_1:output:07global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
global_average_pooling1d/CastCastembedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????i
'global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
#global_average_pooling1d/ExpandDims
ExpandDims!global_average_pooling1d/Cast:y:00global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
global_average_pooling1d/mulMul0embedding_2/embedding_lookup/Identity_1:output:0,global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? p
.global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/SumSum global_average_pooling1d/mul:z:07global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? r
0global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/Sum_1Sum,global_average_pooling1d/ExpandDims:output:09global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
 global_average_pooling1d/truedivRealDiv%global_average_pooling1d/Sum:output:0'global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$global_average_pooling1d/truediv:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_2/embedding_lookupA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
n
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9618

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_11206
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 

unknown_12:	? 

unknown_13:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_9392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_11792

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
 embedding_embedding_lookup_11786:8 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGather embedding_embedding_lookup_11786string_lookup/Identity:output:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/11786*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/11786*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
__inference__wrapped_model_9392
disease
user_idj
fbrute_force_query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlek
gbrute_force_query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	_
Mbrute_force_query_model_user_model_sequential_embedding_embedding_lookup_9292:8 n
jbrute_force_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleo
kbrute_force_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	c
Qbrute_force_query_model_user_model_sequential_1_embedding_1_embedding_lookup_9301: ?
}brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
~brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	^
Zbrute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_ya
]brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_t	d
Qbrute_force_query_model_user_model_sequential_2_embedding_2_embedding_lookup_9353:	? [
Ibrute_force_query_model_sequential_3_dense_matmul_readvariableop_resource:` X
Jbrute_force_query_model_sequential_3_dense_biasadd_readvariableop_resource: =
*brute_force_matmul_readvariableop_resource:	? *
brute_force_gather_resource:	?
identity

identity_1??brute_force/Gather?!brute_force/MatMul/ReadVariableOp?Abrute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOp?@brute_force/query_model/sequential_3/dense/MatMul/ReadVariableOp?Hbrute_force/query_model/user_model/sequential/embedding/embedding_lookup?Ybrute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?Lbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup?]brute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?Lbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup?pbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
Ybrute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2fbrute_force_query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleuser_idgbrute_force_query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Dbrute_force/query_model/user_model/sequential/string_lookup/IdentityIdentitybbrute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Hbrute_force/query_model/user_model/sequential/embedding/embedding_lookupResourceGatherMbrute_force_query_model_user_model_sequential_embedding_embedding_lookup_9292Mbrute_force/query_model/user_model/sequential/string_lookup/Identity:output:0*
Tindices0	*`
_classV
TRloc:@brute_force/query_model/user_model/sequential/embedding/embedding_lookup/9292*'
_output_shapes
:????????? *
dtype0?
Qbrute_force/query_model/user_model/sequential/embedding/embedding_lookup/IdentityIdentityQbrute_force/query_model/user_model/sequential/embedding/embedding_lookup:output:0*
T0*`
_classV
TRloc:@brute_force/query_model/user_model/sequential/embedding/embedding_lookup/9292*'
_output_shapes
:????????? ?
Sbrute_force/query_model/user_model/sequential/embedding/embedding_lookup/Identity_1IdentityZbrute_force/query_model/user_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
]brute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2jbrute_force_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlediseasekbrute_force_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Hbrute_force/query_model/user_model/sequential_1/string_lookup_1/IdentityIdentityfbrute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Lbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookupResourceGatherQbrute_force_query_model_user_model_sequential_1_embedding_1_embedding_lookup_9301Qbrute_force/query_model/user_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*d
_classZ
XVloc:@brute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/9301*'
_output_shapes
:????????? *
dtype0?
Ubrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentityUbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@brute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/9301*'
_output_shapes
:????????? ?
Wbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1Identity^brute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Nbrute_force/query_model/user_model/sequential_2/text_vectorization/StringLowerStringLowerdisease*#
_output_shapes
:??????????
Ubrute_force/query_model/user_model/sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplaceWbrute_force/query_model/user_model/sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
Tbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
\brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2^brute_force/query_model/user_model/sequential_2/text_vectorization/StaticRegexReplace:output:0]brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
bbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
dbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
dbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
\brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_sliceStridedSlicefbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0kbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0mbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0mbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
dbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
fbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
fbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
^brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSlicedbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0mbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0obrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0obrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastebrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Castgbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0?brute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
pbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2}brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleebrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0~brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Xbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/EqualEqualebrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0Zbrute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
[brute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV2\brute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/Equal:z:0]brute_force_query_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_tybrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
[brute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/IdentityIdentitydbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
_brute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Wbrute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
fbrute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor`brute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/Const:output:0dbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/Identity:output:0hbrute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_value:output:0gbrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0ebrute_force/query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
Lbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookupResourceGatherQbrute_force_query_model_user_model_sequential_2_embedding_2_embedding_lookup_9353obrute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*d
_classZ
XVloc:@brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/9353*4
_output_shapes"
 :?????????????????? *
dtype0?
Ubrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/IdentityIdentityUbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/9353*4
_output_shapes"
 :?????????????????? ?
Wbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1Identity^brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
Fbrute_force/query_model/user_model/sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Dbrute_force/query_model/user_model/sequential_2/embedding_2/NotEqualNotEqualobrute_force/query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0Obrute_force/query_model/user_model/sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
\brute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
^brute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
^brute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Vbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_sliceStridedSlice`brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0ebrute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack:output:0gbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1:output:0gbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
Mbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/CastCastHbrute_force/query_model/user_model/sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????????????
Wbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Sbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/ExpandDims
ExpandDimsQbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Cast:y:0`brute_force/query_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
Lbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/mulMul`brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0\brute_force/query_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
^brute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Lbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/SumSumPbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/mul:z:0gbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
`brute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Nbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum_1Sum\brute_force/query_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0ibrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
Pbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/truedivRealDivUbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum:output:0Wbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? p
.brute_force/query_model/user_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
)brute_force/query_model/user_model/concatConcatV2\brute_force/query_model/user_model/sequential/embedding/embedding_lookup/Identity_1:output:0`brute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Tbrute_force/query_model/user_model/sequential_2/global_average_pooling1d/truediv:z:07brute_force/query_model/user_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`?
@brute_force/query_model/sequential_3/dense/MatMul/ReadVariableOpReadVariableOpIbrute_force_query_model_sequential_3_dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0?
1brute_force/query_model/sequential_3/dense/MatMulMatMul2brute_force/query_model/user_model/concat:output:0Hbrute_force/query_model/sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
Abrute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOpJbrute_force_query_model_sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
2brute_force/query_model/sequential_3/dense/BiasAddBiasAdd;brute_force/query_model/sequential_3/dense/MatMul:product:0Ibrute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
brute_force/MatMulMatMul;brute_force/query_model/sequential_3/dense/BiasAdd:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
?
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*'
_output_shapes
:?????????
j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOpB^brute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOpA^brute_force/query_model/sequential_3/dense/MatMul/ReadVariableOpI^brute_force/query_model/user_model/sequential/embedding/embedding_lookupZ^brute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2M^brute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup^^brute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2M^brute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookupq^brute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2?
Abrute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOpAbrute_force/query_model/sequential_3/dense/BiasAdd/ReadVariableOp2?
@brute_force/query_model/sequential_3/dense/MatMul/ReadVariableOp@brute_force/query_model/sequential_3/dense/MatMul/ReadVariableOp2?
Hbrute_force/query_model/user_model/sequential/embedding/embedding_lookupHbrute_force/query_model/user_model/sequential/embedding/embedding_lookup2?
Ybrute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Ybrute_force/query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV22?
Lbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookupLbrute_force/query_model/user_model/sequential_1/embedding_1/embedding_lookup2?
]brute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2]brute_force/query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22?
Lbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookupLbrute_force/query_model/user_model/sequential_2/embedding_2/embedding_lookup2?
pbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2pbrute_force/query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_10832
disease
user_id
query_model_10794
query_model_10796	#
query_model_10798:8 
query_model_10800
query_model_10802	#
query_model_10804: 
query_model_10806
query_model_10808	
query_model_10810
query_model_10812	$
query_model_10814:	? #
query_model_10816:` 
query_model_10818: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?#query_model/StatefulPartitionedCall?
#query_model/StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idquery_model_10794query_model_10796query_model_10798query_model_10800query_model_10802query_model_10804query_model_10806query_model_10808query_model_10810query_model_10812query_model_10814query_model_10816query_model_10818*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10328u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul,query_model/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp$^query_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2J
#query_model/StatefulPartitionedCall#query_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
F__inference_query_model_layer_call_and_return_conditional_losses_10552
disease
user_id
user_model_10523
user_model_10525	"
user_model_10527:8 
user_model_10529
user_model_10531	"
user_model_10533: 
user_model_10535
user_model_10537	
user_model_10539
user_model_10541	#
user_model_10543:	? $
sequential_3_10546:`  
sequential_3_10548: 
identity??$sequential_3/StatefulPartitionedCall?"user_model/StatefulPartitionedCall?
"user_model/StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_iduser_model_10523user_model_10525user_model_10527user_model_10529user_model_10531user_model_10533user_model_10535user_model_10537user_model_10539user_model_10541user_model_10543*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_user_model_layer_call_and_return_conditional_losses_10078?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall+user_model/StatefulPartitionedCall:output:0sequential_3_10546sequential_3_10548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10256|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_3/StatefulPartitionedCall#^user_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2H
"user_model/StatefulPartitionedCall"user_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
.
__inference__initializer_12254
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
??
?
F__inference_brute_force_layer_call_and_return_conditional_losses_11166
queries_disease
queries_user_id^
Zquery_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handle_
[query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	T
Bquery_model_user_model_sequential_embedding_embedding_lookup_11066:8 b
^query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlec
_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	X
Fquery_model_user_model_sequential_1_embedding_1_embedding_lookup_11075: u
qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handlev
rquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	R
Nquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_yU
Qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_t	Y
Fquery_model_user_model_sequential_2_embedding_2_embedding_lookup_11127:	? O
=query_model_sequential_3_dense_matmul_readvariableop_resource:` L
>query_model_sequential_3_dense_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?5query_model/sequential_3/dense/BiasAdd/ReadVariableOp?4query_model/sequential_3/dense/MatMul/ReadVariableOp?<query_model/user_model/sequential/embedding/embedding_lookup?Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?@query_model/user_model/sequential_1/embedding_1/embedding_lookup?Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?@query_model/user_model/sequential_2/embedding_2/embedding_lookup?dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Zquery_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeries_user_id[query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
8query_model/user_model/sequential/string_lookup/IdentityIdentityVquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
<query_model/user_model/sequential/embedding/embedding_lookupResourceGatherBquery_model_user_model_sequential_embedding_embedding_lookup_11066Aquery_model/user_model/sequential/string_lookup/Identity:output:0*
Tindices0	*U
_classK
IGloc:@query_model/user_model/sequential/embedding/embedding_lookup/11066*'
_output_shapes
:????????? *
dtype0?
Equery_model/user_model/sequential/embedding/embedding_lookup/IdentityIdentityEquery_model/user_model/sequential/embedding/embedding_lookup:output:0*
T0*U
_classK
IGloc:@query_model/user_model/sequential/embedding/embedding_lookup/11066*'
_output_shapes
:????????? ?
Gquery_model/user_model/sequential/embedding/embedding_lookup/Identity_1IdentityNquery_model/user_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2^query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlequeries_disease_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
<query_model/user_model/sequential_1/string_lookup_1/IdentityIdentityZquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
@query_model/user_model/sequential_1/embedding_1/embedding_lookupResourceGatherFquery_model_user_model_sequential_1_embedding_1_embedding_lookup_11075Equery_model/user_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*Y
_classO
MKloc:@query_model/user_model/sequential_1/embedding_1/embedding_lookup/11075*'
_output_shapes
:????????? *
dtype0?
Iquery_model/user_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentityIquery_model/user_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@query_model/user_model/sequential_1/embedding_1/embedding_lookup/11075*'
_output_shapes
:????????? ?
Kquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityRquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Bquery_model/user_model/sequential_2/text_vectorization/StringLowerStringLowerqueries_disease*#
_output_shapes
:??????????
Iquery_model/user_model/sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplaceKquery_model/user_model/sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
Hquery_model/user_model/sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
Pquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2Rquery_model/user_model/sequential_2/text_vectorization/StaticRegexReplace:output:0Qquery_model/user_model/sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Vquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
Pquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceZquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0_query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Zquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Zquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Rquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceXquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0cquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0cquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
yquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastYquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast[query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleYquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0rquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Lquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/EqualEqualYquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0Nquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
Oquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV2Pquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/Equal:z:0Qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_tmquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Oquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/IdentityIdentityXquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
Squery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Kquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Zquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorTquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/Const:output:0Xquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/Identity:output:0\query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_value:output:0[query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Yquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
@query_model/user_model/sequential_2/embedding_2/embedding_lookupResourceGatherFquery_model_user_model_sequential_2_embedding_2_embedding_lookup_11127cquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*Y
_classO
MKloc:@query_model/user_model/sequential_2/embedding_2/embedding_lookup/11127*4
_output_shapes"
 :?????????????????? *
dtype0?
Iquery_model/user_model/sequential_2/embedding_2/embedding_lookup/IdentityIdentityIquery_model/user_model/sequential_2/embedding_2/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@query_model/user_model/sequential_2/embedding_2/embedding_lookup/11127*4
_output_shapes"
 :?????????????????? ?
Kquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1IdentityRquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? |
:query_model/user_model/sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
8query_model/user_model/sequential_2/embedding_2/NotEqualNotEqualcquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0Cquery_model/user_model/sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
Pquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Rquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Rquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Jquery_model/user_model/sequential_2/global_average_pooling1d/strided_sliceStridedSliceTquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Yquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack:output:0[query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1:output:0[query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
Aquery_model/user_model/sequential_2/global_average_pooling1d/CastCast<query_model/user_model/sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????????????
Kquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Gquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims
ExpandDimsEquery_model/user_model/sequential_2/global_average_pooling1d/Cast:y:0Tquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
@query_model/user_model/sequential_2/global_average_pooling1d/mulMulTquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Pquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
Rquery_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
@query_model/user_model/sequential_2/global_average_pooling1d/SumSumDquery_model/user_model/sequential_2/global_average_pooling1d/mul:z:0[query_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
Tquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Bquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1SumPquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0]query_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
Dquery_model/user_model/sequential_2/global_average_pooling1d/truedivRealDivIquery_model/user_model/sequential_2/global_average_pooling1d/Sum:output:0Kquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? d
"query_model/user_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
query_model/user_model/concatConcatV2Pquery_model/user_model/sequential/embedding/embedding_lookup/Identity_1:output:0Tquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Hquery_model/user_model/sequential_2/global_average_pooling1d/truediv:z:0+query_model/user_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`?
4query_model/sequential_3/dense/MatMul/ReadVariableOpReadVariableOp=query_model_sequential_3_dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0?
%query_model/sequential_3/dense/MatMulMatMul&query_model/user_model/concat:output:0<query_model/sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
5query_model/sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp>query_model_sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
&query_model/sequential_3/dense/BiasAddBiasAdd/query_model/sequential_3/dense/MatMul:product:0=query_model/sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul/query_model/sequential_3/dense/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp6^query_model/sequential_3/dense/BiasAdd/ReadVariableOp5^query_model/sequential_3/dense/MatMul/ReadVariableOp=^query_model/user_model/sequential/embedding/embedding_lookupN^query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2A^query_model/user_model/sequential_1/embedding_1/embedding_lookupR^query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2A^query_model/user_model/sequential_2/embedding_2/embedding_lookupe^query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5query_model/sequential_3/dense/BiasAdd/ReadVariableOp5query_model/sequential_3/dense/BiasAdd/ReadVariableOp2l
4query_model/sequential_3/dense/MatMul/ReadVariableOp4query_model/sequential_3/dense/MatMul/ReadVariableOp2|
<query_model/user_model/sequential/embedding/embedding_lookup<query_model/user_model/sequential/embedding/embedding_lookup2?
Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV22?
@query_model/user_model/sequential_1/embedding_1/embedding_lookup@query_model/user_model/sequential_1/embedding_1/embedding_lookup2?
Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22?
@query_model/user_model/sequential_2/embedding_2/embedding_lookup@query_model/user_model/sequential_2/embedding_2/embedding_lookup2?
dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:T P
#
_output_shapes
:?????????
)
_user_specified_namequeries/Disease:TP
#
_output_shapes
:?????????
)
_user_specified_namequeries/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9525

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	"
embedding_1_9521: 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_9521*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9597
string_lookup_1_input>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	"
embedding_1_9593: 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handlestring_lookup_1_input;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_9593*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_9586
string_lookup_1_input
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_1_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9608
string_lookup_1_input>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	"
embedding_1_9604: 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handlestring_lookup_1_input;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_9604*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_10599
queries
	queries_1
query_model_10561
query_model_10563	#
query_model_10565:8 
query_model_10567
query_model_10569	#
query_model_10571: 
query_model_10573
query_model_10575	
query_model_10577
query_model_10579	$
query_model_10581:	? #
query_model_10583:` 
query_model_10585: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?#query_model/StatefulPartitionedCall?
#query_model/StatefulPartitionedCallStatefulPartitionedCallqueries	queries_1query_model_10561query_model_10563query_model_10565query_model_10567query_model_10569query_model_10571query_model_10573query_model_10575query_model_10577query_model_10579query_model_10581query_model_10583query_model_10585*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10328u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul,query_model/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp$^query_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2J
#query_model/StatefulPartitionedCall#query_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
֞
?	
E__inference_user_model_layer_call_and_return_conditional_losses_11614
inputs_disease
inputs_user_idG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
+sequential_embedding_embedding_lookup_11530:8 K
Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleL
Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	A
/sequential_1_embedding_1_embedding_lookup_11539: ^
Zsequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle_
[sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	;
7sequential_2_text_vectorization_string_lookup_2_equal_y>
:sequential_2_text_vectorization_string_lookup_2_selectv2_t	B
/sequential_2_embedding_2_embedding_lookup_11591:	? 
identity??%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?)sequential_1/embedding_1/embedding_lookup?:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?)sequential_2/embedding_2/embedding_lookup?Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_11530*sequential/string_lookup/Identity:output:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/11530*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/11530*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_diseaseHsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_1/string_lookup_1/IdentityIdentityCsequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_1/embedding_1/embedding_lookupResourceGather/sequential_1_embedding_1_embedding_lookup_11539.sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/11539*'
_output_shapes
:????????? *
dtype0?
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/11539*'
_output_shapes
:????????? ?
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
+sequential_2/text_vectorization/StringLowerStringLowerinputs_disease*#
_output_shapes
:??????????
2sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplace4sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite r
1sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
9sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2;sequential_2/text_vectorization/StaticRegexReplace:output:0:sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
?sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Asequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Asequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
9sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceCsequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0Hsequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0Jsequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0Jsequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Asequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Csequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Csequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceAsequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0Jsequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0Lsequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Lsequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
bsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBsequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDsequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
ksequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdusequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0usequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
psequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ysequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
ksequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ssequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0usequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulosequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
osequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
isequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
msequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
isequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Zsequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleBsequential_2/text_vectorization/StringSplit/StringSplitV2:values:0[sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5sequential_2/text_vectorization/string_lookup_2/EqualEqualBsequential_2/text_vectorization/StringSplit/StringSplitV2:values:07sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
8sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV29sequential_2/text_vectorization/string_lookup_2/Equal:z:0:sequential_2_text_vectorization_string_lookup_2_selectv2_tVsequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
8sequential_2/text_vectorization/string_lookup_2/IdentityIdentityAsequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????~
<sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
4sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Csequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=sequential_2/text_vectorization/RaggedToTensor/Const:output:0Asequential_2/text_vectorization/string_lookup_2/Identity:output:0Esequential_2/text_vectorization/RaggedToTensor/default_value:output:0Dsequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Bsequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
)sequential_2/embedding_2/embedding_lookupResourceGather/sequential_2_embedding_2_embedding_lookup_11591Lsequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/11591*4
_output_shapes"
 :?????????????????? *
dtype0?
2sequential_2/embedding_2/embedding_lookup/IdentityIdentity2sequential_2/embedding_2/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/11591*4
_output_shapes"
 :?????????????????? ?
4sequential_2/embedding_2/embedding_lookup/Identity_1Identity;sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? e
#sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
!sequential_2/embedding_2/NotEqualNotEqualLsequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0,sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
9sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3sequential_2/global_average_pooling1d/strided_sliceStridedSlice=sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Bsequential_2/global_average_pooling1d/strided_slice/stack:output:0Dsequential_2/global_average_pooling1d/strided_slice/stack_1:output:0Dsequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
*sequential_2/global_average_pooling1d/CastCast%sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????v
4sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_2/global_average_pooling1d/ExpandDims
ExpandDims.sequential_2/global_average_pooling1d/Cast:y:0=sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
)sequential_2/global_average_pooling1d/mulMul=sequential_2/embedding_2/embedding_lookup/Identity_1:output:09sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? }
;sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
)sequential_2/global_average_pooling1d/SumSum-sequential_2/global_average_pooling1d/mul:z:0Dsequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 
=sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_2/global_average_pooling1d/Sum_1Sum9sequential_2/global_average_pooling1d/ExpandDims:output:0Fsequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
-sequential_2/global_average_pooling1d/truedivRealDiv2sequential_2/global_average_pooling1d/Sum:output:04sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV29sequential/embedding/embedding_lookup/Identity_1:output:0=sequential_1/embedding_1/embedding_lookup/Identity_1:output:01sequential_2/global_average_pooling1d/truediv:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*^sequential_1/embedding_1/embedding_lookup;^sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2*^sequential_2/embedding_2/embedding_lookupN^sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV22V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2x
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22V
)sequential_2/embedding_2/embedding_lookup)sequential_2/embedding_2/embedding_lookup2?
Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
+__inference_brute_force_layer_call_fn_10634
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 

unknown_12:	? 

unknown_13:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_10599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_122216
2key_value_init187_lookuptableimportv2_table_handle.
*key_value_init187_lookuptableimportv2_keys0
,key_value_init187_lookuptableimportv2_values	
identity??%key_value_init187/LookupTableImportV2?
%key_value_init187/LookupTableImportV2LookupTableImportV22key_value_init187_lookuptableimportv2_table_handle*key_value_init187_lookuptableimportv2_keys,key_value_init187_lookuptableimportv2_values*	
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
NoOpNoOp&^key_value_init187/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2N
%key_value_init187/LookupTableImportV2%key_value_init187/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
,__inference_sequential_3_layer_call_fn_11724

inputs
unknown:` 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10256o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520

inputs	'
embedding_lookup_9514: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_9514inputs*
Tindices0	*(
_class
loc:@embedding_lookup/9514*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9514*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_embedding_2_layer_call_fn_12146

inputs	
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
x
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707

inputs
mask

identity]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask\
CastCastmask*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :z

ExpandDims
ExpandDimsCast:y:0ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????f
mulMulinputsExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
Sum_1SumExpandDims:output:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????b
truedivRealDivSum:output:0Sum_1:output:0*
T0*'
_output_shapes
:????????? S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????????????? :??????????????????:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs:VR
0
_output_shapes
:??????????????????

_user_specified_namemask
?
?
E__inference_user_model_layer_call_and_return_conditional_losses_10078

inputs
inputs_1
sequential_10050
sequential_10052	"
sequential_10054:8 
sequential_1_10057
sequential_1_10059	$
sequential_1_10061: 
sequential_2_10064
sequential_2_10066	
sequential_2_10068
sequential_2_10070	%
sequential_2_10072:	? 
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_10050sequential_10052sequential_10054*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9458?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_10057sequential_1_10059sequential_1_10061*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9566?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_10064sequential_2_10066sequential_2_10068sequential_2_10070sequential_2_10072*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9811M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12172

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_11766

inputs
unknown
	unknown_0	
	unknown_1:8 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference__initializer_122036
2key_value_init165_lookuptableimportv2_table_handle.
*key_value_init165_lookuptableimportv2_keys0
,key_value_init165_lookuptableimportv2_values	
identity??%key_value_init165/LookupTableImportV2?
%key_value_init165/LookupTableImportV2LookupTableImportV22key_value_init165_lookuptableimportv2_table_handle*key_value_init165_lookuptableimportv2_keys,key_value_init165_lookuptableimportv2_values*	
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
NoOpNoOp&^key_value_init165/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :7:72N
%key_value_init165/LookupTableImportV2%key_value_init165/LookupTableImportV2: 

_output_shapes
:7: 

_output_shapes
:7
?	
?
+__inference_sequential_2_layer_call_fn_9839
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_9417

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_9413:8 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_9413*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_9412y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_query_model_layer_call_and_return_conditional_losses_10328

inputs
inputs_1
user_model_10299
user_model_10301	"
user_model_10303:8 
user_model_10305
user_model_10307	"
user_model_10309: 
user_model_10311
user_model_10313	
user_model_10315
user_model_10317	#
user_model_10319:	? $
sequential_3_10322:`  
sequential_3_10324: 
identity??$sequential_3/StatefulPartitionedCall?"user_model/StatefulPartitionedCall?
"user_model/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1user_model_10299user_model_10301user_model_10303user_model_10305user_model_10307user_model_10309user_model_10311user_model_10313user_model_10315user_model_10317user_model_10319*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_user_model_layer_call_and_return_conditional_losses_9990?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall+user_model/StatefulPartitionedCall:output:0sequential_3_10322sequential_3_10324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10219|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_3/StatefulPartitionedCall#^user_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2H
"user_model/StatefulPartitionedCall"user_model/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
,__inference_sequential_3_layer_call_fn_10272
dense_input
unknown:` 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10256o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????`
%
_user_specified_namedense_input
?
?
,__inference_sequential_1_layer_call_fn_11803

inputs
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9525o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
:
__inference__creator_12231
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name546*
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
?
?
*__inference_user_model_layer_call_fn_10131
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_user_model_layer_call_and_return_conditional_losses_10078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
D__inference_user_model_layer_call_and_return_conditional_losses_9990

inputs
inputs_1
sequential_9962
sequential_9964	!
sequential_9966:8 
sequential_1_9969
sequential_1_9971	#
sequential_1_9973: 
sequential_2_9976
sequential_2_9978	
sequential_2_9980
sequential_2_9982	$
sequential_2_9984:	? 
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_9962sequential_9964sequential_9966*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9417?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_9969sequential_1_9971sequential_1_9973*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9525?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_9976sequential_2_9978sequential_2_9980sequential_2_9982sequential_2_9984*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9710M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
*__inference_user_model_layer_call_fn_10015
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_user_model_layer_call_and_return_conditional_losses_9990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?

?
G__inference_sequential_3_layer_call_and_return_conditional_losses_11744

inputs6
$dense_matmul_readvariableop_resource:` 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9566

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	"
embedding_1_9562: 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_9562*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_embedding_2_layer_call_and_return_conditional_losses_12155

inputs	)
embedding_lookup_12149:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_12149inputs*
Tindices0	*)
_class
loc:@embedding_lookup/12149*4
_output_shapes"
 :?????????????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/12149*4
_output_shapes"
 :?????????????????? ?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
E__inference_user_model_layer_call_and_return_conditional_losses_10163
disease
user_id
sequential_10135
sequential_10137	"
sequential_10139:8 
sequential_1_10142
sequential_1_10144	$
sequential_1_10146: 
sequential_2_10149
sequential_2_10151	
sequential_2_10153
sequential_2_10155	%
sequential_2_10157:	? 
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_10135sequential_10137sequential_10139*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9417?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCalldiseasesequential_1_10142sequential_1_10144sequential_1_10146*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9525?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCalldiseasesequential_2_10149sequential_2_10151sequential_2_10153sequential_2_10155sequential_2_10157*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9710M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_11779

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
 embedding_embedding_lookup_11773:8 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGather embedding_embedding_lookup_11773string_lookup/Identity:output:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/11773*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/11773*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference_save_fn_12278
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_9412

inputs	'
embedding_lookup_9406:8 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_9406inputs*
Tindices0	*(
_class
loc:@embedding_lookup/9406*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9406*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_sequential_3_layer_call_and_return_conditional_losses_11734

inputs6
$dense_matmul_readvariableop_resource:` 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
F__inference_query_model_layer_call_and_return_conditional_losses_10519
disease
user_id
user_model_10490
user_model_10492	"
user_model_10494:8 
user_model_10496
user_model_10498	"
user_model_10500: 
user_model_10502
user_model_10504	
user_model_10506
user_model_10508	#
user_model_10510:	? $
sequential_3_10513:`  
sequential_3_10515: 
identity??$sequential_3/StatefulPartitionedCall?"user_model/StatefulPartitionedCall?
"user_model/StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_iduser_model_10490user_model_10492user_model_10494user_model_10496user_model_10498user_model_10500user_model_10502user_model_10504user_model_10506user_model_10508user_model_10510*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_user_model_layer_call_and_return_conditional_losses_9990?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall+user_model/StatefulPartitionedCall:output:0sequential_3_10513sequential_3_10515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10219|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_3/StatefulPartitionedCall#^user_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2H
"user_model/StatefulPartitionedCall"user_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_123026
2key_value_init187_lookuptableimportv2_table_handle.
*key_value_init187_lookuptableimportv2_keys0
,key_value_init187_lookuptableimportv2_values	
identity??%key_value_init187/LookupTableImportV2?
%key_value_init187/LookupTableImportV2LookupTableImportV22key_value_init187_lookuptableimportv2_table_handle*key_value_init187_lookuptableimportv2_keys,key_value_init187_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init187/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2N
%key_value_init187/LookupTableImportV2%key_value_init187/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
+__inference_brute_force_layer_call_fn_10912
queries_disease
queries_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 

unknown_12:	? 

unknown_13:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueries_diseasequeries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_10599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_namequeries/Disease:TP
#
_output_shapes
:?????????
)
_user_specified_namequeries/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_9489
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_9485:8 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_9485*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_9412y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?`
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9710

inputsQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	#
embedding_2_9685:	? 
identity??#embedding_2/StatefulPartitionedCall?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_9685*
Tin
2	*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
(global_average_pooling1d/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0embedding_2/NotEqual:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707?
IdentityIdentity1global_average_pooling1d/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCallA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_11840

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	4
"embedding_1_embedding_lookup_11834: 
identity??embedding_1/embedding_lookup?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_11834!string_lookup_1/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_1/embedding_lookup/11834*'
_output_shapes
:????????? *
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/11834*'
_output_shapes
:????????? ?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_1/embedding_lookup.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
*__inference_sequential_layer_call_fn_11755

inputs
unknown
	unknown_0	
	unknown_1:8 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?&
?
!__inference__traced_restore_12419
file_prefix+
assignvariableop_identifiers:	?0
assignvariableop_1_candidates:	? 9
'assignvariableop_2_embedding_embeddings:8 ;
)assignvariableop_3_embedding_1_embeddings: <
)assignvariableop_4_embedding_2_embeddings:	? 1
assignvariableop_5_dense_kernel:` +
assignvariableop_6_dense_bias: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: 

identity_8??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*?
value?B?
B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB\query_model/embedding_model/disease_vector/_lookup_layer/token_counts/.ATTRIBUTES/table-keysB^query_model/embedding_model/disease_vector/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp)assignvariableop_3_embedding_1_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp)assignvariableop_4_embedding_2_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:7RestoreV2:tensors:8*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 1
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_63^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_8IdentityIdentity_7:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_63^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
?
,__inference_sequential_1_layer_call_fn_11814

inputs
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
,
__inference__destroyer_12226
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
?o
?
__inference_adapt_step_11916
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*
_output_shapes
: *
output_shapes
: *
output_types
2P
StringLowerStringLowerIteratorGetNext:components:0*
_output_shapes
: ?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*
_output_shapes
: *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite d
StringSplit/stackPackStaticRegexReplace:output:0*
N*
T0*
_output_shapes
:^
StringSplit/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
%StringSplit/StringSplit/StringSplitV2StringSplitV2StringSplit/stack:output:0&StringSplit/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:|
+StringSplit/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-StringSplit/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-StringSplit/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
%StringSplit/StringSplit/strided_sliceStridedSlice/StringSplit/StringSplit/StringSplitV2:indices:04StringSplit/StringSplit/strided_slice/stack:output:06StringSplit/StringSplit/strided_slice/stack_1:output:06StringSplit/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskw
-StringSplit/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/StringSplit/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/StringSplit/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'StringSplit/StringSplit/strided_slice_1StridedSlice-StringSplit/StringSplit/StringSplitV2:shape:06StringSplit/StringSplit/strided_slice_1/stack:output:08StringSplit/StringSplit/strided_slice_1/stack_1:output:08StringSplit/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
NStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast.StringSplit/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast0StringSplit/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdaStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
\StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater`StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0eStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2_StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumbStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
YStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2bStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????w
-StringSplit/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
/StringSplit/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????y
/StringSplit/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'StringSplit/RaggedGetItem/strided_sliceStridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:06StringSplit/RaggedGetItem/strided_slice/stack:output:08StringSplit/RaggedGetItem/strided_slice/stack_1:output:08StringSplit/RaggedGetItem/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_masky
/StringSplit/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_1StridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:08StringSplit/RaggedGetItem/strided_slice_1/stack:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_masky
/StringSplit/RaggedGetItem/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_2StridedSlice0StringSplit/RaggedGetItem/strided_slice:output:08StringSplit/RaggedGetItem/strided_slice_2/stack:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_masky
/StringSplit/RaggedGetItem/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_3StridedSlice2StringSplit/RaggedGetItem/strided_slice_1:output:08StringSplit/RaggedGetItem/strided_slice_3/stack:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
/StringSplit/RaggedGetItem/strided_slice_4/stackPack2StringSplit/RaggedGetItem/strided_slice_2:output:0*
N*
T0	*
_output_shapes
:?
1StringSplit/RaggedGetItem/strided_slice_4/stack_1Pack2StringSplit/RaggedGetItem/strided_slice_3:output:0*
N*
T0	*
_output_shapes
:{
1StringSplit/RaggedGetItem/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.StringSplit/RaggedGetItem/strided_slice_4/CastCast:StringSplit/RaggedGetItem/strided_slice_4/stack_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:?
)StringSplit/RaggedGetItem/strided_slice_4StridedSlice.StringSplit/StringSplit/StringSplitV2:values:08StringSplit/RaggedGetItem/strided_slice_4/stack:output:0:StringSplit/RaggedGetItem/strided_slice_4/stack_1:output:02StringSplit/RaggedGetItem/strided_slice_4/Cast:y:0*
Index0	*
T0*#
_output_shapes
:?????????r
/StringSplit/RaggedGetItem/strided_slice_5/ConstConst*
_output_shapes
: *
dtype0*
valueB ?
)StringSplit/RaggedGetItem/strided_slice_5StridedSlice2StringSplit/RaggedGetItem/strided_slice_4:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:0*
Index0*
T0*#
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?

ExpandDims
ExpandDims2StringSplit/RaggedGetItem/strided_slice_5:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????m
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
+__inference_query_model_layer_call_fn_10486
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_10212

inputs0
matmul_readvariableop_resource:` -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:` *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
֞
?	
E__inference_user_model_layer_call_and_return_conditional_losses_11706
inputs_disease
inputs_user_idG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
+sequential_embedding_embedding_lookup_11622:8 K
Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleL
Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	A
/sequential_1_embedding_1_embedding_lookup_11631: ^
Zsequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle_
[sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	;
7sequential_2_text_vectorization_string_lookup_2_equal_y>
:sequential_2_text_vectorization_string_lookup_2_selectv2_t	B
/sequential_2_embedding_2_embedding_lookup_11683:	? 
identity??%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?)sequential_1/embedding_1/embedding_lookup?:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?)sequential_2/embedding_2/embedding_lookup?Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_user_idDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_11622*sequential/string_lookup/Identity:output:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/11622*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/11622*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_diseaseHsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_1/string_lookup_1/IdentityIdentityCsequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_1/embedding_1/embedding_lookupResourceGather/sequential_1_embedding_1_embedding_lookup_11631.sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/11631*'
_output_shapes
:????????? *
dtype0?
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/11631*'
_output_shapes
:????????? ?
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
+sequential_2/text_vectorization/StringLowerStringLowerinputs_disease*#
_output_shapes
:??????????
2sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplace4sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite r
1sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
9sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2;sequential_2/text_vectorization/StaticRegexReplace:output:0:sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
?sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Asequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Asequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
9sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceCsequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0Hsequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0Jsequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0Jsequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Asequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Csequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Csequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceAsequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0Jsequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0Lsequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Lsequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
bsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBsequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDsequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
ksequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdusequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0usequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
psequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ysequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
ksequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
lsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ssequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0usequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulosequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
osequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
isequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
msequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
isequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rsequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Zsequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleBsequential_2/text_vectorization/StringSplit/StringSplitV2:values:0[sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5sequential_2/text_vectorization/string_lookup_2/EqualEqualBsequential_2/text_vectorization/StringSplit/StringSplitV2:values:07sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
8sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV29sequential_2/text_vectorization/string_lookup_2/Equal:z:0:sequential_2_text_vectorization_string_lookup_2_selectv2_tVsequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
8sequential_2/text_vectorization/string_lookup_2/IdentityIdentityAsequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????~
<sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
4sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Csequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=sequential_2/text_vectorization/RaggedToTensor/Const:output:0Asequential_2/text_vectorization/string_lookup_2/Identity:output:0Esequential_2/text_vectorization/RaggedToTensor/default_value:output:0Dsequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Bsequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
)sequential_2/embedding_2/embedding_lookupResourceGather/sequential_2_embedding_2_embedding_lookup_11683Lsequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/11683*4
_output_shapes"
 :?????????????????? *
dtype0?
2sequential_2/embedding_2/embedding_lookup/IdentityIdentity2sequential_2/embedding_2/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/11683*4
_output_shapes"
 :?????????????????? ?
4sequential_2/embedding_2/embedding_lookup/Identity_1Identity;sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? e
#sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
!sequential_2/embedding_2/NotEqualNotEqualLsequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0,sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
9sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3sequential_2/global_average_pooling1d/strided_sliceStridedSlice=sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Bsequential_2/global_average_pooling1d/strided_slice/stack:output:0Dsequential_2/global_average_pooling1d/strided_slice/stack_1:output:0Dsequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
*sequential_2/global_average_pooling1d/CastCast%sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????v
4sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_2/global_average_pooling1d/ExpandDims
ExpandDims.sequential_2/global_average_pooling1d/Cast:y:0=sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
)sequential_2/global_average_pooling1d/mulMul=sequential_2/embedding_2/embedding_lookup/Identity_1:output:09sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? }
;sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
)sequential_2/global_average_pooling1d/SumSum-sequential_2/global_average_pooling1d/mul:z:0Dsequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 
=sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_2/global_average_pooling1d/Sum_1Sum9sequential_2/global_average_pooling1d/ExpandDims:output:0Fsequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
-sequential_2/global_average_pooling1d/truedivRealDiv2sequential_2/global_average_pooling1d/Sum:output:04sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV29sequential/embedding/embedding_lookup/Identity_1:output:0=sequential_1/embedding_1/embedding_lookup/Identity_1:output:01sequential_2/global_average_pooling1d/truediv:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*^sequential_1/embedding_1/embedding_lookup;^sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2*^sequential_2/embedding_2/embedding_lookupN^sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV22V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2x
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22V
)sequential_2/embedding_2/embedding_lookup)sequential_2/embedding_2/embedding_lookup2?
Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Msequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?	
?
+__inference_sequential_2_layer_call_fn_9723
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_12195
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name166*
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
?
?
+__inference_query_model_layer_call_fn_11238
inputs_disease
inputs_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_diseaseinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
T
8__inference_global_average_pooling1d_layer_call_fn_12160

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9618i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?o
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_12088

inputsQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	5
"embedding_2_embedding_lookup_12067:	? 
identity??embedding_2/embedding_lookup?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_12067?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/12067*4
_output_shapes"
 :?????????????????? *
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/12067*4
_output_shapes"
 :?????????????????? ?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:??????????????????v
,global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&global_average_pooling1d/strided_sliceStridedSlice0embedding_2/embedding_lookup/Identity_1:output:05global_average_pooling1d/strided_slice/stack:output:07global_average_pooling1d/strided_slice/stack_1:output:07global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
global_average_pooling1d/CastCastembedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????i
'global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
#global_average_pooling1d/ExpandDims
ExpandDims!global_average_pooling1d/Cast:y:00global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
global_average_pooling1d/mulMul0embedding_2/embedding_lookup/Identity_1:output:0,global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? p
.global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/SumSum global_average_pooling1d/mul:z:07global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? r
0global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/Sum_1Sum,global_average_pooling1d/ExpandDims:output:09global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
 global_average_pooling1d/truedivRealDiv%global_average_pooling1d/Sum:output:0'global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$global_average_pooling1d/truediv:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_2/embedding_lookupA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
^
8__inference_global_average_pooling1d_layer_call_fn_12166

inputs
mask

identity?
PartitionedCallPartitionedCallinputsmask*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????????????? :??????????????????:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs:VR
0
_output_shapes
:??????????????????

_user_specified_namemask
?
}
)__inference_embedding_layer_call_fn_12114

inputs	
unknown:8 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_9412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_query_model_layer_call_and_return_conditional_losses_10425

inputs
inputs_1
user_model_10396
user_model_10398	"
user_model_10400:8 
user_model_10402
user_model_10404	"
user_model_10406: 
user_model_10408
user_model_10410	
user_model_10412
user_model_10414	#
user_model_10416:	? $
sequential_3_10419:`  
sequential_3_10421: 
identity??$sequential_3/StatefulPartitionedCall?"user_model/StatefulPartitionedCall?
"user_model/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1user_model_10396user_model_10398user_model_10400user_model_10402user_model_10404user_model_10406user_model_10408user_model_10410user_model_10412user_model_10414user_model_10416*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_user_model_layer_call_and_return_conditional_losses_10078?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall+user_model/StatefulPartitionedCall:output:0sequential_3_10419sequential_3_10421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10256|
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^sequential_3/StatefulPartitionedCall#^user_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2H
"user_model/StatefulPartitionedCall"user_model/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
+__inference_query_model_layer_call_fn_10357
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
E__inference_user_model_layer_call_and_return_conditional_losses_10195
disease
user_id
sequential_10167
sequential_10169	"
sequential_10171:8 
sequential_1_10174
sequential_1_10176	$
sequential_1_10178: 
sequential_2_10181
sequential_2_10183	
sequential_2_10185
sequential_2_10187	%
sequential_2_10189:	? 
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_10167sequential_10169sequential_10171*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9458?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCalldiseasesequential_1_10174sequential_1_10176sequential_1_10178*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_9566?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCalldiseasesequential_2_10181sequential_2_10183sequential_2_10185sequential_2_10187sequential_2_10189*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9811M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????`?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
*__inference_user_model_layer_call_fn_11494
inputs_disease
inputs_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_diseaseinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_user_model_layer_call_and_return_conditional_losses_9990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_9426
string_lookup_input
unknown
	unknown_0	
	unknown_1:8 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_12107

inputs0
matmul_readvariableop_resource:` -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:` *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10281
dense_input
dense_10275:` 
dense_10277: 
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_10275dense_10277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10212u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
'
_output_shapes
:?????????`
%
_user_specified_namedense_input
?
?
)__inference_sequential_layer_call_fn_9478
string_lookup_input
unknown
	unknown_0	
	unknown_1:8 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?

+__inference_embedding_1_layer_call_fn_12130

inputs	
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_9520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_12244
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
?
?
F__inference_brute_force_layer_call_and_return_conditional_losses_10717
queries
	queries_1
query_model_10679
query_model_10681	#
query_model_10683:8 
query_model_10685
query_model_10687	#
query_model_10689: 
query_model_10691
query_model_10693	
query_model_10695
query_model_10697	$
query_model_10699:	? #
query_model_10701:` 
query_model_10703: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?#query_model/StatefulPartitionedCall?
#query_model/StatefulPartitionedCallStatefulPartitionedCallqueries	queries_1query_model_10679query_model_10681query_model_10683query_model_10685query_model_10687query_model_10689query_model_10691query_model_10693query_model_10695query_model_10697query_model_10699query_model_10701query_model_10703*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10425u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul,query_model/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp$^query_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2J
#query_model/StatefulPartitionedCall#query_model/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
F
__inference__creator_12249
identity: ??MutableHashTable~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_206*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
,__inference_sequential_2_layer_call_fn_11931

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_embedding_1_layer_call_and_return_conditional_losses_12139

inputs	(
embedding_lookup_12133: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_12133inputs*
Tindices0	*)
_class
loc:@embedding_lookup/12133*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/12133*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
y
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12190

inputs
mask

identity]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask\
CastCastmask*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :z

ExpandDims
ExpandDimsCast:y:0ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :??????????????????f
mulMulinputsExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
Sum_1SumExpandDims:output:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????b
truedivRealDivSum:output:0Sum_1:output:0*
T0*'
_output_shapes
:????????? S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????????????? :??????????????????:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs:VR
0
_output_shapes
:??????????????????

_user_specified_namemask
?
:
__inference__creator_12213
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name188*
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
?
?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10256

inputs
dense_10250:` 
dense_10252: 
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10250dense_10252*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10212u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
__inference_restore_fn_12286
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
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
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
+__inference_brute_force_layer_call_fn_10790
disease
user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 

unknown_12:	? 

unknown_13:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldiseaseuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_10717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	Disease:LH
#
_output_shapes
:?????????
!
_user_specified_name	User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
+__inference_brute_force_layer_call_fn_10950
queries_disease
queries_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 

unknown_12:	? 

unknown_13:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueries_diseasequeries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_10717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_namequeries/Disease:TP
#
_output_shapes
:?????????
)
_user_specified_namequeries/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_12208
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
??
?
F__inference_brute_force_layer_call_and_return_conditional_losses_11058
queries_disease
queries_user_id^
Zquery_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handle_
[query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	T
Bquery_model_user_model_sequential_embedding_embedding_lookup_10958:8 b
^query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlec
_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	X
Fquery_model_user_model_sequential_1_embedding_1_embedding_lookup_10967: u
qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handlev
rquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	R
Nquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_yU
Qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_t	Y
Fquery_model_user_model_sequential_2_embedding_2_embedding_lookup_11019:	? O
=query_model_sequential_3_dense_matmul_readvariableop_resource:` L
>query_model_sequential_3_dense_biasadd_readvariableop_resource: 1
matmul_readvariableop_resource:	? 
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?5query_model/sequential_3/dense/BiasAdd/ReadVariableOp?4query_model/sequential_3/dense/MatMul/ReadVariableOp?<query_model/user_model/sequential/embedding/embedding_lookup?Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?@query_model/user_model/sequential_1/embedding_1/embedding_lookup?Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?@query_model/user_model/sequential_2/embedding_2/embedding_lookup?dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2?
Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Zquery_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeries_user_id[query_model_user_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
8query_model/user_model/sequential/string_lookup/IdentityIdentityVquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
<query_model/user_model/sequential/embedding/embedding_lookupResourceGatherBquery_model_user_model_sequential_embedding_embedding_lookup_10958Aquery_model/user_model/sequential/string_lookup/Identity:output:0*
Tindices0	*U
_classK
IGloc:@query_model/user_model/sequential/embedding/embedding_lookup/10958*'
_output_shapes
:????????? *
dtype0?
Equery_model/user_model/sequential/embedding/embedding_lookup/IdentityIdentityEquery_model/user_model/sequential/embedding/embedding_lookup:output:0*
T0*U
_classK
IGloc:@query_model/user_model/sequential/embedding/embedding_lookup/10958*'
_output_shapes
:????????? ?
Gquery_model/user_model/sequential/embedding/embedding_lookup/Identity_1IdentityNquery_model/user_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2^query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlequeries_disease_query_model_user_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
<query_model/user_model/sequential_1/string_lookup_1/IdentityIdentityZquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
@query_model/user_model/sequential_1/embedding_1/embedding_lookupResourceGatherFquery_model_user_model_sequential_1_embedding_1_embedding_lookup_10967Equery_model/user_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*Y
_classO
MKloc:@query_model/user_model/sequential_1/embedding_1/embedding_lookup/10967*'
_output_shapes
:????????? *
dtype0?
Iquery_model/user_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentityIquery_model/user_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@query_model/user_model/sequential_1/embedding_1/embedding_lookup/10967*'
_output_shapes
:????????? ?
Kquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityRquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Bquery_model/user_model/sequential_2/text_vectorization/StringLowerStringLowerqueries_disease*#
_output_shapes
:??????????
Iquery_model/user_model/sequential_2/text_vectorization/StaticRegexReplaceStaticRegexReplaceKquery_model/user_model/sequential_2/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
Hquery_model/user_model/sequential_2/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
Pquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2StringSplitV2Rquery_model/user_model/sequential_2/text_vectorization/StaticRegexReplace:output:0Qquery_model/user_model/sequential_2/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Vquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
Pquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_sliceStridedSliceZquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:indices:0_query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack:output:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_1:output:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Xquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Zquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Zquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Rquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1StridedSliceXquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:shape:0aquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack:output:0cquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0cquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
yquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastYquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast[query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProd?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumquery_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount}query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
{query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0?query_model/user_model/sequential_2/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleYquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0rquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Lquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/EqualEqualYquery_model/user_model/sequential_2/text_vectorization/StringSplit/StringSplitV2:values:0Nquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
Oquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2SelectV2Pquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/Equal:z:0Qquery_model_user_model_sequential_2_text_vectorization_string_lookup_2_selectv2_tmquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Oquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/IdentityIdentityXquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
Squery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Kquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
Zquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorTquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/Const:output:0Xquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/Identity:output:0\query_model/user_model/sequential_2/text_vectorization/RaggedToTensor/default_value:output:0[query_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice_1:output:0Yquery_model/user_model/sequential_2/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
@query_model/user_model/sequential_2/embedding_2/embedding_lookupResourceGatherFquery_model_user_model_sequential_2_embedding_2_embedding_lookup_11019cquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*Y
_classO
MKloc:@query_model/user_model/sequential_2/embedding_2/embedding_lookup/11019*4
_output_shapes"
 :?????????????????? *
dtype0?
Iquery_model/user_model/sequential_2/embedding_2/embedding_lookup/IdentityIdentityIquery_model/user_model/sequential_2/embedding_2/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@query_model/user_model/sequential_2/embedding_2/embedding_lookup/11019*4
_output_shapes"
 :?????????????????? ?
Kquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1IdentityRquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? |
:query_model/user_model/sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
8query_model/user_model/sequential_2/embedding_2/NotEqualNotEqualcquery_model/user_model/sequential_2/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0Cquery_model/user_model/sequential_2/embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
Pquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Rquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Rquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Jquery_model/user_model/sequential_2/global_average_pooling1d/strided_sliceStridedSliceTquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Yquery_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack:output:0[query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_1:output:0[query_model/user_model/sequential_2/global_average_pooling1d/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask?
Aquery_model/user_model/sequential_2/global_average_pooling1d/CastCast<query_model/user_model/sequential_2/embedding_2/NotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????????????
Kquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Gquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims
ExpandDimsEquery_model/user_model/sequential_2/global_average_pooling1d/Cast:y:0Tquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :???????????????????
@query_model/user_model/sequential_2/global_average_pooling1d/mulMulTquery_model/user_model/sequential_2/embedding_2/embedding_lookup/Identity_1:output:0Pquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
Rquery_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
@query_model/user_model/sequential_2/global_average_pooling1d/SumSumDquery_model/user_model/sequential_2/global_average_pooling1d/mul:z:0[query_model/user_model/sequential_2/global_average_pooling1d/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
Tquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
Bquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1SumPquery_model/user_model/sequential_2/global_average_pooling1d/ExpandDims:output:0]query_model/user_model/sequential_2/global_average_pooling1d/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
Dquery_model/user_model/sequential_2/global_average_pooling1d/truedivRealDivIquery_model/user_model/sequential_2/global_average_pooling1d/Sum:output:0Kquery_model/user_model/sequential_2/global_average_pooling1d/Sum_1:output:0*
T0*'
_output_shapes
:????????? d
"query_model/user_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
query_model/user_model/concatConcatV2Pquery_model/user_model/sequential/embedding/embedding_lookup/Identity_1:output:0Tquery_model/user_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Hquery_model/user_model/sequential_2/global_average_pooling1d/truediv:z:0+query_model/user_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????`?
4query_model/sequential_3/dense/MatMul/ReadVariableOpReadVariableOp=query_model_sequential_3_dense_matmul_readvariableop_resource*
_output_shapes

:` *
dtype0?
%query_model/sequential_3/dense/MatMulMatMul&query_model/user_model/concat:output:0<query_model/sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
5query_model/sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp>query_model_sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
&query_model/sequential_3/dense/BiasAddBiasAdd/query_model/sequential_3/dense/MatMul:product:0=query_model/sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
MatMulMatMul/query_model/sequential_3/dense/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp6^query_model/sequential_3/dense/BiasAdd/ReadVariableOp5^query_model/sequential_3/dense/MatMul/ReadVariableOp=^query_model/user_model/sequential/embedding/embedding_lookupN^query_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2A^query_model/user_model/sequential_1/embedding_1/embedding_lookupR^query_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2A^query_model/user_model/sequential_2/embedding_2/embedding_lookupe^query_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:?????????:?????????: : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5query_model/sequential_3/dense/BiasAdd/ReadVariableOp5query_model/sequential_3/dense/BiasAdd/ReadVariableOp2l
4query_model/sequential_3/dense/MatMul/ReadVariableOp4query_model/sequential_3/dense/MatMul/ReadVariableOp2|
<query_model/user_model/sequential/embedding/embedding_lookup<query_model/user_model/sequential/embedding/embedding_lookup2?
Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Mquery_model/user_model/sequential/string_lookup/None_Lookup/LookupTableFindV22?
@query_model/user_model/sequential_1/embedding_1/embedding_lookup@query_model/user_model/sequential_1/embedding_1/embedding_lookup2?
Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Qquery_model/user_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22?
@query_model/user_model/sequential_2/embedding_2/embedding_lookup@query_model/user_model/sequential_2/embedding_2/embedding_lookup2?
dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2dquery_model/user_model/sequential_2/text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:T P
#
_output_shapes
:?????????
)
_user_specified_namequeries/Disease:TP
#
_output_shapes
:?????????
)
_user_specified_namequeries/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_123106
2key_value_init545_lookuptableimportv2_table_handle.
*key_value_init545_lookuptableimportv2_keys0
,key_value_init545_lookuptableimportv2_values	
identity??%key_value_init545/LookupTableImportV2?
%key_value_init545/LookupTableImportV2LookupTableImportV22key_value_init545_lookuptableimportv2_table_handle*key_value_init545_lookuptableimportv2_keys,key_value_init545_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init545/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2N
%key_value_init545/LookupTableImportV2%key_value_init545/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10219

inputs
dense_10213:` 
dense_10215: 
identity??dense/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10213dense_10215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10212u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
__inference__initializer_122396
2key_value_init545_lookuptableimportv2_table_handle.
*key_value_init545_lookuptableimportv2_keys0
,key_value_init545_lookuptableimportv2_values	
identity??%key_value_init545/LookupTableImportV2?
%key_value_init545/LookupTableImportV2LookupTableImportV22key_value_init545_lookuptableimportv2_table_handle*key_value_init545_lookuptableimportv2_keys,key_value_init545_lookuptableimportv2_values*	
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
NoOpNoOp&^key_value_init545/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2N
%key_value_init545/LookupTableImportV2%key_value_init545/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
,__inference_sequential_2_layer_call_fn_11946

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_9811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_query_model_layer_call_fn_11270
inputs_disease
inputs_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 

unknown_10:` 

unknown_11: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_diseaseinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_query_model_layer_call_and_return_conditional_losses_10425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_12259
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
?`
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9811

inputsQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	#
embedding_2_9804:	? 
identity??#embedding_2/StatefulPartitionedCall?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_9804*
Tin
2	*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
(global_average_pooling1d/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0embedding_2/NotEqual:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707?
IdentityIdentity1global_average_pooling1d/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCallA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
*
__inference_<lambda>_12315
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_9458

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_9454:8 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_9454*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_9412y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?`
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9896
text_vectorization_inputQ
Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handleR
Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value	.
*text_vectorization_string_lookup_2_equal_y1
-text_vectorization_string_lookup_2_selectv2_t	#
embedding_2_9889:	? 
identity??#embedding_2/StatefulPartitionedCall?@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Mtext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ntext_vectorization_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
(text_vectorization/string_lookup_2/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0*text_vectorization_string_lookup_2_equal_y*
T0*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/SelectV2SelectV2,text_vectorization/string_lookup_2/Equal:z:0-text_vectorization_string_lookup_2_selectv2_tItext_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+text_vectorization/string_lookup_2/IdentityIdentity4text_vectorization/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????????????
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_2/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_9889*
Tin
2	*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
embedding_2/NotEqualNotEqual?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*0
_output_shapes
:???????????????????
(global_average_pooling1d/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0embedding_2/NotEqual:z:0*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_9707?
IdentityIdentity1global_average_pooling1d/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_2/StatefulPartitionedCallA^text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2?
@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2@text_vectorization/string_lookup_2/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_embedding_2_layer_call_and_return_conditional_losses_9684

inputs	(
embedding_lookup_9678:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_9678inputs*
Tindices0	*(
_class
loc:@embedding_lookup/9678*4
_output_shapes"
 :?????????????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9678*4
_output_shapes"
 :?????????????????? ?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? ?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_11827

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	4
"embedding_1_embedding_lookup_11821: 
identity??embedding_1/embedding_lookup?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_11821!string_lookup_1/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_1/embedding_lookup/11821*'
_output_shapes
:????????? *
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/11821*'
_output_shapes
:????????? ?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_1/embedding_lookup.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_12123

inputs	(
embedding_lookup_12117:8 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_12117inputs*
Tindices0	*)
_class
loc:@embedding_lookup/12117*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/12117*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_3_layer_call_fn_11715

inputs
unknown:` 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_10219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
*__inference_user_model_layer_call_fn_11522
inputs_disease
inputs_user_id
unknown
	unknown_0	
	unknown_1:8 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_diseaseinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_user_model_layer_call_and_return_conditional_losses_10078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Disease:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/User_Id:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_122946
2key_value_init165_lookuptableimportv2_table_handle.
*key_value_init165_lookuptableimportv2_keys0
,key_value_init165_lookuptableimportv2_values	
identity??%key_value_init165/LookupTableImportV2?
%key_value_init165/LookupTableImportV2LookupTableImportV22key_value_init165_lookuptableimportv2_table_handle*key_value_init165_lookuptableimportv2_keys,key_value_init165_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init165/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :7:72N
%key_value_init165/LookupTableImportV2%key_value_init165/LookupTableImportV2: 

_output_shapes
:7: 

_output_shapes
:7"?L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
Disease,
serving_default_Disease:0?????????
7
User_Id,
serving_default_User_Id:0?????????>
output_12
StatefulPartitionedCall_3:0?????????
>
output_22
StatefulPartitionedCall_3:1?????????
tensorflow/serving/predict:??
?
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
?
embedding_model
dense_layers
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_model
:?2identifiers
:	? 2
candidates
Q
0
1
3
4
5
6
7"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_brute_force_layer_call_fn_10634
+__inference_brute_force_layer_call_fn_10912
+__inference_brute_force_layer_call_fn_10950
+__inference_brute_force_layer_call_fn_10790?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_brute_force_layer_call_and_return_conditional_losses_11058
F__inference_brute_force_layer_call_and_return_conditional_losses_11166
F__inference_brute_force_layer_call_and_return_conditional_losses_10832
F__inference_brute_force_layer_call_and_return_conditional_losses_10874?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_9392DiseaseUser_Id"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
serving_default"
signature_map
?
 user_embedding
!disease_embedding
"disease_vector
#disease_text_embedding
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_model
?
*layer_with_weights-0
*layer-0
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_sequential
C
0
1
3
4
5"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_query_model_layer_call_fn_10357
+__inference_query_model_layer_call_fn_11238
+__inference_query_model_layer_call_fn_11270
+__inference_query_model_layer_call_fn_10486?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_query_model_layer_call_and_return_conditional_losses_11368
F__inference_query_model_layer_call_and_return_conditional_losses_11466
F__inference_query_model_layer_call_and_return_conditional_losses_10519
F__inference_query_model_layer_call_and_return_conditional_losses_10552?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
&:$8 2embedding/embeddings
(:& 2embedding_1/embeddings
):'	? 2embedding_2/embeddings
:` 2dense/kernel
: 2
dense/bias
.
1
2"
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
?B?
#__inference_signature_wrapper_11206DiseaseUser_Id"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
6layer-0
7layer_with_weights-0
7layer-1
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
>layer-0
?layer_with_weights-0
?layer-1
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_sequential
P
F_lookup_layer
G	keras_api
H_adapt_function"
_tf_keras_layer
?
"layer_with_weights-0
"layer-0
Ilayer_with_weights-1
Ilayer-1
Jlayer-2
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_sequential
5
0
1
3"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_user_model_layer_call_fn_10015
*__inference_user_model_layer_call_fn_11494
*__inference_user_model_layer_call_fn_11522
*__inference_user_model_layer_call_fn_10131?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_user_model_layer_call_and_return_conditional_losses_11614
E__inference_user_model_layer_call_and_return_conditional_losses_11706
E__inference_user_model_layer_call_and_return_conditional_losses_10163
E__inference_user_model_layer_call_and_return_conditional_losses_10195?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?

kernel
bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_sequential_3_layer_call_fn_10226
,__inference_sequential_3_layer_call_fn_11715
,__inference_sequential_3_layer_call_fn_11724
,__inference_sequential_3_layer_call_fn_10272?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_3_layer_call_and_return_conditional_losses_11734
G__inference_sequential_3_layer_call_and_return_conditional_losses_11744
G__inference_sequential_3_layer_call_and_return_conditional_losses_10281
G__inference_sequential_3_layer_call_and_return_conditional_losses_10290?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
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
alookup_table
b	keras_api"
_tf_keras_layer
?

embeddings
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_sequential_layer_call_fn_9426
*__inference_sequential_layer_call_fn_11755
*__inference_sequential_layer_call_fn_11766
)__inference_sequential_layer_call_fn_9478?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_11779
E__inference_sequential_layer_call_and_return_conditional_losses_11792
D__inference_sequential_layer_call_and_return_conditional_losses_9489
D__inference_sequential_layer_call_and_return_conditional_losses_9500?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:
nlookup_table
o	keras_api"
_tf_keras_layer
?

embeddings
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_sequential_1_layer_call_fn_9534
,__inference_sequential_1_layer_call_fn_11803
,__inference_sequential_1_layer_call_fn_11814
+__inference_sequential_1_layer_call_fn_9586?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_11827
G__inference_sequential_1_layer_call_and_return_conditional_losses_11840
F__inference_sequential_1_layer_call_and_return_conditional_losses_9597
F__inference_sequential_1_layer_call_and_return_conditional_losses_9608?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
L
{lookup_table
|token_counts
}	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_11916?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?

embeddings
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
'
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_sequential_2_layer_call_fn_9723
,__inference_sequential_2_layer_call_fn_11931
,__inference_sequential_2_layer_call_fn_11946
+__inference_sequential_2_layer_call_fn_9839?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_2_layer_call_and_return_conditional_losses_12017
G__inference_sequential_2_layer_call_and_return_conditional_losses_12088
F__inference_sequential_2_layer_call_and_return_conditional_losses_9896
F__inference_sequential_2_layer_call_and_return_conditional_losses_9953?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
<
 0
!1
"2
#3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_12097?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_12107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_12114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_12123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_embedding_1_layer_call_fn_12130?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_1_layer_call_and_return_conditional_losses_12139?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_embedding_2_layer_call_fn_12146?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_2_layer_call_and_return_conditional_losses_12155?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
8__inference_global_average_pooling1d_layer_call_fn_12160
8__inference_global_average_pooling1d_layer_call_fn_12166?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12172
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12190?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
5
"0
I1
J2"
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
"
_generic_user_object
?2?
__inference__creator_12195?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_12203?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_12208?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
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
"
_generic_user_object
?2?
__inference__creator_12213?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_12221?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_12226?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
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
"
_generic_user_object
?2?
__inference__creator_12231?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_12239?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_12244?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_12249?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_12254?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_12259?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
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
?B?
__inference_save_fn_12278checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_12286restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_116
__inference__creator_12195?

? 
? "? 6
__inference__creator_12213?

? 
? "? 6
__inference__creator_12231?

? 
? "? 6
__inference__creator_12249?

? 
? "? 8
__inference__destroyer_12208?

? 
? "? 8
__inference__destroyer_12226?

? 
? "? 8
__inference__destroyer_12244?

? 
? "? 8
__inference__destroyer_12259?

? 
? "? A
__inference__initializer_12203a???

? 
? "? A
__inference__initializer_12221n???

? 
? "? A
__inference__initializer_12239{???

? 
? "? :
__inference__initializer_12254?

? 
? "? ?
__inference__wrapped_model_9392?a?n?{???f?c
\?Y
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
? "c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
]
__inference_adapt_step_11916=|?2?/
(?%
#? ?	
? IteratorSpec 
? "
 ?
F__inference_brute_force_layer_call_and_return_conditional_losses_10832?a?n?{???n?k
d?a
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_10874?a?n?{???n?k
d?a
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_11058?a?n?{???~?{
t?q
g?d
0
Disease%?"
queries/Disease?????????
0
User_Id%?"
queries/User_Id?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
F__inference_brute_force_layer_call_and_return_conditional_losses_11166?a?n?{???~?{
t?q
g?d
0
Disease%?"
queries/Disease?????????
0
User_Id%?"
queries/User_Id?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
+__inference_brute_force_layer_call_fn_10634?a?n?{???n?k
d?a
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_10790?a?n?{???n?k
d?a
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_10912?a?n?{???~?{
t?q
g?d
0
Disease%?"
queries/Disease?????????
0
User_Id%?"
queries/User_Id?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
+__inference_brute_force_layer_call_fn_10950?a?n?{???~?{
t?q
g?d
0
Disease%?"
queries/Disease?????????
0
User_Id%?"
queries/User_Id?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
@__inference_dense_layer_call_and_return_conditional_losses_12107\/?,
%?"
 ?
inputs?????????`
? "%?"
?
0????????? 
? x
%__inference_dense_layer_call_fn_12097O/?,
%?"
 ?
inputs?????????`
? "?????????? ?
F__inference_embedding_1_layer_call_and_return_conditional_losses_12139W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? y
+__inference_embedding_1_layer_call_fn_12130J+?(
!?
?
inputs?????????	
? "?????????? ?
F__inference_embedding_2_layer_call_and_return_conditional_losses_12155q8?5
.?+
)?&
inputs??????????????????	
? "2?/
(?%
0?????????????????? 
? ?
+__inference_embedding_2_layer_call_fn_12146d8?5
.?+
)?&
inputs??????????????????	
? "%?"?????????????????? ?
D__inference_embedding_layer_call_and_return_conditional_losses_12123W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? w
)__inference_embedding_layer_call_fn_12114J+?(
!?
?
inputs?????????	
? "?????????? ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12172{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_12190?e?b
[?X
-?*
inputs?????????????????? 
'?$
mask??????????????????

? "%?"
?
0????????? 
? ?
8__inference_global_average_pooling1d_layer_call_fn_12160nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
8__inference_global_average_pooling1d_layer_call_fn_12166?e?b
[?X
-?*
inputs?????????????????? 
'?$
mask??????????????????

? "?????????? ?
F__inference_query_model_layer_call_and_return_conditional_losses_10519?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p 
? "%?"
?
0????????? 
? ?
F__inference_query_model_layer_call_and_return_conditional_losses_10552?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p
? "%?"
?
0????????? 
? ?
F__inference_query_model_layer_call_and_return_conditional_losses_11368?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p 
? "%?"
?
0????????? 
? ?
F__inference_query_model_layer_call_and_return_conditional_losses_11466?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p
? "%?"
?
0????????? 
? ?
+__inference_query_model_layer_call_fn_10357?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p 
? "?????????? ?
+__inference_query_model_layer_call_fn_10486?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p
? "?????????? ?
+__inference_query_model_layer_call_fn_11238?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p 
? "?????????? ?
+__inference_query_model_layer_call_fn_11270?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p
? "?????????? y
__inference_restore_fn_12286Y|K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_12278?|&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
G__inference_sequential_1_layer_call_and_return_conditional_losses_11827bn?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_11840bn?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9597qn?B??
8?5
+?(
string_lookup_1_input?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_9608qn?B??
8?5
+?(
string_lookup_1_input?????????
p

 
? "%?"
?
0????????? 
? ?
,__inference_sequential_1_layer_call_fn_11803Un?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
,__inference_sequential_1_layer_call_fn_11814Un?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
+__inference_sequential_1_layer_call_fn_9534dn?B??
8?5
+?(
string_lookup_1_input?????????
p 

 
? "?????????? ?
+__inference_sequential_1_layer_call_fn_9586dn?B??
8?5
+?(
string_lookup_1_input?????????
p

 
? "?????????? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_12017f{???3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_12088f{???3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9896x{???E?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_9953x{???E?B
;?8
.?+
text_vectorization_input?????????
p

 
? "%?"
?
0????????? 
? ?
,__inference_sequential_2_layer_call_fn_11931Y{???3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
,__inference_sequential_2_layer_call_fn_11946Y{???3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
+__inference_sequential_2_layer_call_fn_9723k{???E?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "?????????? ?
+__inference_sequential_2_layer_call_fn_9839k{???E?B
;?8
.?+
text_vectorization_input?????????
p

 
? "?????????? ?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10281i<?9
2?/
%?"
dense_input?????????`
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_3_layer_call_and_return_conditional_losses_10290i<?9
2?/
%?"
dense_input?????????`
p

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_3_layer_call_and_return_conditional_losses_11734d7?4
-?*
 ?
inputs?????????`
p 

 
? "%?"
?
0????????? 
? ?
G__inference_sequential_3_layer_call_and_return_conditional_losses_11744d7?4
-?*
 ?
inputs?????????`
p

 
? "%?"
?
0????????? 
? ?
,__inference_sequential_3_layer_call_fn_10226\<?9
2?/
%?"
dense_input?????????`
p 

 
? "?????????? ?
,__inference_sequential_3_layer_call_fn_10272\<?9
2?/
%?"
dense_input?????????`
p

 
? "?????????? ?
,__inference_sequential_3_layer_call_fn_11715W7?4
-?*
 ?
inputs?????????`
p 

 
? "?????????? ?
,__inference_sequential_3_layer_call_fn_11724W7?4
-?*
 ?
inputs?????????`
p

 
? "?????????? ?
E__inference_sequential_layer_call_and_return_conditional_losses_11779ba?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_11792ba?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_9489oa?@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_9500oa?@?=
6?3
)?&
string_lookup_input?????????
p

 
? "%?"
?
0????????? 
? ?
*__inference_sequential_layer_call_fn_11755Ua?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
*__inference_sequential_layer_call_fn_11766Ua?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
)__inference_sequential_layer_call_fn_9426ba?@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "?????????? ?
)__inference_sequential_layer_call_fn_9478ba?@?=
6?3
)?&
string_lookup_input?????????
p

 
? "?????????? ?
#__inference_signature_wrapper_11206?a?n?{???a?^
? 
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????"c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
E__inference_user_model_layer_call_and_return_conditional_losses_10163?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p 
? "%?"
?
0?????????`
? ?
E__inference_user_model_layer_call_and_return_conditional_losses_10195?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p
? "%?"
?
0?????????`
? ?
E__inference_user_model_layer_call_and_return_conditional_losses_11614?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p 
? "%?"
?
0?????????`
? ?
E__inference_user_model_layer_call_and_return_conditional_losses_11706?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p
? "%?"
?
0?????????`
? ?
*__inference_user_model_layer_call_fn_10015?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p 
? "??????????`?
*__inference_user_model_layer_call_fn_10131?a?n?{???j?g
`?]
W?T
(
Disease?
Disease?????????
(
User_Id?
User_Id?????????
p
? "??????????`?
*__inference_user_model_layer_call_fn_11494?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p 
? "??????????`?
*__inference_user_model_layer_call_fn_11522?a?n?{???x?u
n?k
e?b
/
Disease$?!
inputs/Disease?????????
/
User_Id$?!
inputs/User_Id?????????
p
? "??????????`