÷ë
°
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
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
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ù
´
+recommender_net_36/embedding_144/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹}*<
shared_name-+recommender_net_36/embedding_144/embeddings
­
?recommender_net_36/embedding_144/embeddings/Read/ReadVariableOpReadVariableOp+recommender_net_36/embedding_144/embeddings* 
_output_shapes
:
ý¹}*
dtype0
´
+recommender_net_36/embedding_145/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹*<
shared_name-+recommender_net_36/embedding_145/embeddings
­
?recommender_net_36/embedding_145/embeddings/Read/ReadVariableOpReadVariableOp+recommender_net_36/embedding_145/embeddings* 
_output_shapes
:
ý¹*
dtype0
´
+recommender_net_36/embedding_146/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ}*<
shared_name-+recommender_net_36/embedding_146/embeddings
­
?recommender_net_36/embedding_146/embeddings/Read/ReadVariableOpReadVariableOp+recommender_net_36/embedding_146/embeddings* 
_output_shapes
:
øÐ}*
dtype0
´
+recommender_net_36/embedding_147/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ*<
shared_name-+recommender_net_36/embedding_147/embeddings
­
?recommender_net_36/embedding_147/embeddings/Read/ReadVariableOpReadVariableOp+recommender_net_36/embedding_147/embeddings* 
_output_shapes
:
øÐ*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Â
2Adam/recommender_net_36/embedding_144/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹}*C
shared_name42Adam/recommender_net_36/embedding_144/embeddings/m
»
FAdam/recommender_net_36/embedding_144/embeddings/m/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_144/embeddings/m* 
_output_shapes
:
ý¹}*
dtype0
Â
2Adam/recommender_net_36/embedding_145/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹*C
shared_name42Adam/recommender_net_36/embedding_145/embeddings/m
»
FAdam/recommender_net_36/embedding_145/embeddings/m/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_145/embeddings/m* 
_output_shapes
:
ý¹*
dtype0
Â
2Adam/recommender_net_36/embedding_146/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ}*C
shared_name42Adam/recommender_net_36/embedding_146/embeddings/m
»
FAdam/recommender_net_36/embedding_146/embeddings/m/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_146/embeddings/m* 
_output_shapes
:
øÐ}*
dtype0
Â
2Adam/recommender_net_36/embedding_147/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ*C
shared_name42Adam/recommender_net_36/embedding_147/embeddings/m
»
FAdam/recommender_net_36/embedding_147/embeddings/m/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_147/embeddings/m* 
_output_shapes
:
øÐ*
dtype0
Â
2Adam/recommender_net_36/embedding_144/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹}*C
shared_name42Adam/recommender_net_36/embedding_144/embeddings/v
»
FAdam/recommender_net_36/embedding_144/embeddings/v/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_144/embeddings/v* 
_output_shapes
:
ý¹}*
dtype0
Â
2Adam/recommender_net_36/embedding_145/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ý¹*C
shared_name42Adam/recommender_net_36/embedding_145/embeddings/v
»
FAdam/recommender_net_36/embedding_145/embeddings/v/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_145/embeddings/v* 
_output_shapes
:
ý¹*
dtype0
Â
2Adam/recommender_net_36/embedding_146/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ}*C
shared_name42Adam/recommender_net_36/embedding_146/embeddings/v
»
FAdam/recommender_net_36/embedding_146/embeddings/v/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_146/embeddings/v* 
_output_shapes
:
øÐ}*
dtype0
Â
2Adam/recommender_net_36/embedding_147/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
øÐ*C
shared_name42Adam/recommender_net_36/embedding_147/embeddings/v
»
FAdam/recommender_net_36/embedding_147/embeddings/v/Read/ReadVariableOpReadVariableOp2Adam/recommender_net_36/embedding_147/embeddings/v* 
_output_shapes
:
øÐ*
dtype0

NoOpNoOp
Æ#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*#
value÷"Bô" Bí"
¹
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api

iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO

0
1
2
3
 

0
1
2
3
­

$layers
%non_trainable_variables
trainable_variables
&layer_regularization_losses
regularization_losses
'metrics
	variables
(layer_metrics
 
us
VARIABLE_VALUE+recommender_net_36/embedding_144/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

)layers
*non_trainable_variables
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics
	variables
-layer_metrics
pn
VARIABLE_VALUE+recommender_net_36/embedding_145/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

.layers
/non_trainable_variables
trainable_variables
0layer_regularization_losses
regularization_losses
1metrics
	variables
2layer_metrics
vt
VARIABLE_VALUE+recommender_net_36/embedding_146/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

3layers
4non_trainable_variables
trainable_variables
5layer_regularization_losses
regularization_losses
6metrics
	variables
7layer_metrics
qo
VARIABLE_VALUE+recommender_net_36/embedding_147/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

8layers
9non_trainable_variables
trainable_variables
:layer_regularization_losses
regularization_losses
;metrics
	variables
<layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 

=0
>1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	?total
	@count
A	variables
B	keras_api
D
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

A	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

F	variables

VARIABLE_VALUE2Adam/recommender_net_36/embedding_144/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_145/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_146/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_147/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_144/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_145/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_146/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/recommender_net_36/embedding_147/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
ï
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1+recommender_net_36/embedding_144/embeddings+recommender_net_36/embedding_145/embeddings+recommender_net_36/embedding_146/embeddings+recommender_net_36/embedding_147/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1492606
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename?recommender_net_36/embedding_144/embeddings/Read/ReadVariableOp?recommender_net_36/embedding_145/embeddings/Read/ReadVariableOp?recommender_net_36/embedding_146/embeddings/Read/ReadVariableOp?recommender_net_36/embedding_147/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpFAdam/recommender_net_36/embedding_144/embeddings/m/Read/ReadVariableOpFAdam/recommender_net_36/embedding_145/embeddings/m/Read/ReadVariableOpFAdam/recommender_net_36/embedding_146/embeddings/m/Read/ReadVariableOpFAdam/recommender_net_36/embedding_147/embeddings/m/Read/ReadVariableOpFAdam/recommender_net_36/embedding_144/embeddings/v/Read/ReadVariableOpFAdam/recommender_net_36/embedding_145/embeddings/v/Read/ReadVariableOpFAdam/recommender_net_36/embedding_146/embeddings/v/Read/ReadVariableOpFAdam/recommender_net_36/embedding_147/embeddings/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1492802
å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+recommender_net_36/embedding_144/embeddings+recommender_net_36/embedding_145/embeddings+recommender_net_36/embedding_146/embeddings+recommender_net_36/embedding_147/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_12Adam/recommender_net_36/embedding_144/embeddings/m2Adam/recommender_net_36/embedding_145/embeddings/m2Adam/recommender_net_36/embedding_146/embeddings/m2Adam/recommender_net_36/embedding_147/embeddings/m2Adam/recommender_net_36/embedding_144/embeddings/v2Adam/recommender_net_36/embedding_145/embeddings/v2Adam/recommender_net_36/embedding_146/embeddings/v2Adam/recommender_net_36/embedding_147/embeddings/v*!
Tin
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1492875¤ë
ù

/__inference_embedding_146_layer_call_fn_1492663

inputs	
unknown:
øÐ}
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_146_layer_call_and_return_conditional_losses_14924542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í`
§
#__inference__traced_restore_1492875
file_prefixP
<assignvariableop_recommender_net_36_embedding_144_embeddings:
ý¹}R
>assignvariableop_1_recommender_net_36_embedding_145_embeddings:
ý¹R
>assignvariableop_2_recommender_net_36_embedding_146_embeddings:
øÐ}R
>assignvariableop_3_recommender_net_36_embedding_147_embeddings:
øÐ&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: Z
Fassignvariableop_13_adam_recommender_net_36_embedding_144_embeddings_m:
ý¹}Z
Fassignvariableop_14_adam_recommender_net_36_embedding_145_embeddings_m:
ý¹Z
Fassignvariableop_15_adam_recommender_net_36_embedding_146_embeddings_m:
øÐ}Z
Fassignvariableop_16_adam_recommender_net_36_embedding_147_embeddings_m:
øÐZ
Fassignvariableop_17_adam_recommender_net_36_embedding_144_embeddings_v:
ý¹}Z
Fassignvariableop_18_adam_recommender_net_36_embedding_145_embeddings_v:
ý¹Z
Fassignvariableop_19_adam_recommender_net_36_embedding_146_embeddings_v:
øÐ}Z
Fassignvariableop_20_adam_recommender_net_36_embedding_147_embeddings_v:
øÐ
identity_22¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9´
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À

value¶
B³
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity»
AssignVariableOpAssignVariableOp<assignvariableop_recommender_net_36_embedding_144_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ã
AssignVariableOp_1AssignVariableOp>assignvariableop_1_recommender_net_36_embedding_145_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ã
AssignVariableOp_2AssignVariableOp>assignvariableop_2_recommender_net_36_embedding_146_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ã
AssignVariableOp_3AssignVariableOp>assignvariableop_3_recommender_net_36_embedding_147_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11£
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12£
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Î
AssignVariableOp_13AssignVariableOpFassignvariableop_13_adam_recommender_net_36_embedding_144_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Î
AssignVariableOp_14AssignVariableOpFassignvariableop_14_adam_recommender_net_36_embedding_145_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Î
AssignVariableOp_15AssignVariableOpFassignvariableop_15_adam_recommender_net_36_embedding_146_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Î
AssignVariableOp_16AssignVariableOpFassignvariableop_16_adam_recommender_net_36_embedding_147_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Î
AssignVariableOp_17AssignVariableOpFassignvariableop_17_adam_recommender_net_36_embedding_144_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Î
AssignVariableOp_18AssignVariableOpFassignvariableop_18_adam_recommender_net_36_embedding_145_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Î
AssignVariableOp_19AssignVariableOpFassignvariableop_19_adam_recommender_net_36_embedding_146_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Î
AssignVariableOp_20AssignVariableOpFassignvariableop_20_adam_recommender_net_36_embedding_147_embeddings_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¬
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
í
ú
J__inference_embedding_144_layer_call_and_return_conditional_losses_1492414

inputs	,
embedding_lookup_1492402:
ý¹}
identity¢embedding_lookup¢Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpù
embedding_lookupResourceGatherembedding_lookup_1492402inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492402*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492402*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity_1ù
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1492402* 
_output_shapes
:
ý¹}*
dtype02O
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ý¹}2@
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_144/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_144/embeddings/Regularizer/Const®
;recommender_net_36/embedding_144/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_144/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_144/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_144/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_144/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_144/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/mulÛ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookupN^recommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥	
ª
J__inference_embedding_147_layer_call_and_return_conditional_losses_1492694

inputs	,
embedding_lookup_1492688:
øÐ
identity¢embedding_lookupù
embedding_lookupResourceGatherembedding_lookup_1492688inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492688*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492688*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ì
__inference_loss_fn_0_1492705j
Vrecommender_net_36_embedding_144_embeddings_regularizer_square_readvariableop_resource:
ý¹}
identity¢Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp·
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpVrecommender_net_36_embedding_144_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
ý¹}*
dtype02O
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ý¹}2@
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_144/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_144/embeddings/Regularizer/Const®
;recommender_net_36/embedding_144/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_144/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_144/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_144/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_144/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_144/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/mulÒ
IdentityIdentity?recommender_net_36/embedding_144/embeddings/Regularizer/mul:z:0N^recommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp
¥	
ª
J__inference_embedding_145_layer_call_and_return_conditional_losses_1492650

inputs	,
embedding_lookup_1492644:
ý¹
identity¢embedding_lookupù
embedding_lookupResourceGatherembedding_lookup_1492644inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492644*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492644*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥	
ª
J__inference_embedding_147_layer_call_and_return_conditional_losses_1492471

inputs	,
embedding_lookup_1492465:
øÐ
identity¢embedding_lookupù
embedding_lookupResourceGatherembedding_lookup_1492465inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492465*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492465*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

è
4__inference_recommender_net_36_layer_call_fn_1492541
input_1	
unknown:
ý¹}
	unknown_0:
ý¹
	unknown_1:
øÐ}
	unknown_2:
øÐ
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_recommender_net_36_layer_call_and_return_conditional_losses_14925272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
í
ú
J__inference_embedding_144_layer_call_and_return_conditional_losses_1492634

inputs	,
embedding_lookup_1492622:
ý¹}
identity¢embedding_lookup¢Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpù
embedding_lookupResourceGatherembedding_lookup_1492622inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492622*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492622*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity_1ù
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1492622* 
_output_shapes
:
ý¹}*
dtype02O
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ý¹}2@
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_144/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_144/embeddings/Regularizer/Const®
;recommender_net_36/embedding_144/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_144/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_144/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_144/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_144/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_144/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/mulÛ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookupN^recommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
ú
J__inference_embedding_146_layer_call_and_return_conditional_losses_1492454

inputs	,
embedding_lookup_1492442:
øÐ}
identity¢embedding_lookup¢Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpù
embedding_lookupResourceGatherembedding_lookup_1492442inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492442*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492442*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity_1ù
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1492442* 
_output_shapes
:
øÐ}*
dtype02O
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
øÐ}2@
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_146/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_146/embeddings/Regularizer/Const®
;recommender_net_36/embedding_146/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_146/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_146/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_146/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_146/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_146/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/mulÛ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookupN^recommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

/__inference_embedding_147_layer_call_fn_1492685

inputs	
unknown:
øÐ
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_147_layer_call_and_return_conditional_losses_14924712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
Ù
%__inference_signature_wrapper_1492606
input_1	
unknown:
ý¹}
	unknown_0:
ý¹
	unknown_1:
øÐ}
	unknown_2:
øÐ
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_14923912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¥	
ª
J__inference_embedding_145_layer_call_and_return_conditional_losses_1492431

inputs	,
embedding_lookup_1492425:
ý¹
identity¢embedding_lookupù
embedding_lookupResourceGatherembedding_lookup_1492425inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492425*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492425*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
Î
"__inference__wrapped_model_1492391
input_1	M
9recommender_net_36_embedding_144_embedding_lookup_1492319:
ý¹}M
9recommender_net_36_embedding_145_embedding_lookup_1492328:
ý¹M
9recommender_net_36_embedding_146_embedding_lookup_1492337:
øÐ}M
9recommender_net_36_embedding_147_embedding_lookup_1492346:
øÐ
identity¢1recommender_net_36/embedding_144/embedding_lookup¢1recommender_net_36/embedding_145/embedding_lookup¢1recommender_net_36/embedding_146/embedding_lookup¢1recommender_net_36/embedding_147/embedding_lookup¡
&recommender_net_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&recommender_net_36/strided_slice/stack¥
(recommender_net_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(recommender_net_36/strided_slice/stack_1¥
(recommender_net_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(recommender_net_36/strided_slice/stack_2é
 recommender_net_36/strided_sliceStridedSliceinput_1/recommender_net_36/strided_slice/stack:output:01recommender_net_36/strided_slice/stack_1:output:01recommender_net_36/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2"
 recommender_net_36/strided_slice 
1recommender_net_36/embedding_144/embedding_lookupResourceGather9recommender_net_36_embedding_144_embedding_lookup_1492319)recommender_net_36/strided_slice:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*L
_classB
@>loc:@recommender_net_36/embedding_144/embedding_lookup/1492319*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype023
1recommender_net_36/embedding_144/embedding_lookupî
:recommender_net_36/embedding_144/embedding_lookup/IdentityIdentity:recommender_net_36/embedding_144/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*L
_classB
@>loc:@recommender_net_36/embedding_144/embedding_lookup/1492319*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2<
:recommender_net_36/embedding_144/embedding_lookup/Identityÿ
<recommender_net_36/embedding_144/embedding_lookup/Identity_1IdentityCrecommender_net_36/embedding_144/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2>
<recommender_net_36/embedding_144/embedding_lookup/Identity_1¥
(recommender_net_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(recommender_net_36/strided_slice_1/stack©
*recommender_net_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*recommender_net_36/strided_slice_1/stack_1©
*recommender_net_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*recommender_net_36/strided_slice_1/stack_2ó
"recommender_net_36/strided_slice_1StridedSliceinput_11recommender_net_36/strided_slice_1/stack:output:03recommender_net_36/strided_slice_1/stack_1:output:03recommender_net_36/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2$
"recommender_net_36/strided_slice_1¢
1recommender_net_36/embedding_145/embedding_lookupResourceGather9recommender_net_36_embedding_145_embedding_lookup_1492328+recommender_net_36/strided_slice_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*L
_classB
@>loc:@recommender_net_36/embedding_145/embedding_lookup/1492328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype023
1recommender_net_36/embedding_145/embedding_lookupî
:recommender_net_36/embedding_145/embedding_lookup/IdentityIdentity:recommender_net_36/embedding_145/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*L
_classB
@>loc:@recommender_net_36/embedding_145/embedding_lookup/1492328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:recommender_net_36/embedding_145/embedding_lookup/Identityÿ
<recommender_net_36/embedding_145/embedding_lookup/Identity_1IdentityCrecommender_net_36/embedding_145/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<recommender_net_36/embedding_145/embedding_lookup/Identity_1¥
(recommender_net_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(recommender_net_36/strided_slice_2/stack©
*recommender_net_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*recommender_net_36/strided_slice_2/stack_1©
*recommender_net_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*recommender_net_36/strided_slice_2/stack_2ó
"recommender_net_36/strided_slice_2StridedSliceinput_11recommender_net_36/strided_slice_2/stack:output:03recommender_net_36/strided_slice_2/stack_1:output:03recommender_net_36/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2$
"recommender_net_36/strided_slice_2¢
1recommender_net_36/embedding_146/embedding_lookupResourceGather9recommender_net_36_embedding_146_embedding_lookup_1492337+recommender_net_36/strided_slice_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*L
_classB
@>loc:@recommender_net_36/embedding_146/embedding_lookup/1492337*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype023
1recommender_net_36/embedding_146/embedding_lookupî
:recommender_net_36/embedding_146/embedding_lookup/IdentityIdentity:recommender_net_36/embedding_146/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*L
_classB
@>loc:@recommender_net_36/embedding_146/embedding_lookup/1492337*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2<
:recommender_net_36/embedding_146/embedding_lookup/Identityÿ
<recommender_net_36/embedding_146/embedding_lookup/Identity_1IdentityCrecommender_net_36/embedding_146/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2>
<recommender_net_36/embedding_146/embedding_lookup/Identity_1¥
(recommender_net_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(recommender_net_36/strided_slice_3/stack©
*recommender_net_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*recommender_net_36/strided_slice_3/stack_1©
*recommender_net_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*recommender_net_36/strided_slice_3/stack_2ó
"recommender_net_36/strided_slice_3StridedSliceinput_11recommender_net_36/strided_slice_3/stack:output:03recommender_net_36/strided_slice_3/stack_1:output:03recommender_net_36/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2$
"recommender_net_36/strided_slice_3¢
1recommender_net_36/embedding_147/embedding_lookupResourceGather9recommender_net_36_embedding_147_embedding_lookup_1492346+recommender_net_36/strided_slice_3:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*L
_classB
@>loc:@recommender_net_36/embedding_147/embedding_lookup/1492346*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype023
1recommender_net_36/embedding_147/embedding_lookupî
:recommender_net_36/embedding_147/embedding_lookup/IdentityIdentity:recommender_net_36/embedding_147/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*L
_classB
@>loc:@recommender_net_36/embedding_147/embedding_lookup/1492346*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:recommender_net_36/embedding_147/embedding_lookup/Identityÿ
<recommender_net_36/embedding_147/embedding_lookup/Identity_1IdentityCrecommender_net_36/embedding_147/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<recommender_net_36/embedding_147/embedding_lookup/Identity_1
!recommender_net_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2#
!recommender_net_36/Tensordot/axes
!recommender_net_36/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2#
!recommender_net_36/Tensordot/free½
"recommender_net_36/Tensordot/ShapeShapeErecommender_net_36/embedding_144/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2$
"recommender_net_36/Tensordot/Shape
*recommender_net_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*recommender_net_36/Tensordot/GatherV2/axis®
%recommender_net_36/Tensordot/GatherV2GatherV2+recommender_net_36/Tensordot/Shape:output:0*recommender_net_36/Tensordot/free:output:03recommender_net_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2'
%recommender_net_36/Tensordot/GatherV2
,recommender_net_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,recommender_net_36/Tensordot/GatherV2_1/axis¶
'recommender_net_36/Tensordot/GatherV2_1GatherV2+recommender_net_36/Tensordot/Shape:output:0*recommender_net_36/Tensordot/axes:output:05recommender_net_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'recommender_net_36/Tensordot/GatherV2_1
"recommender_net_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"recommender_net_36/Tensordot/ConstÌ
!recommender_net_36/Tensordot/ProdProd.recommender_net_36/Tensordot/GatherV2:output:0+recommender_net_36/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!recommender_net_36/Tensordot/Prod
$recommender_net_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$recommender_net_36/Tensordot/Const_1Ô
#recommender_net_36/Tensordot/Prod_1Prod0recommender_net_36/Tensordot/GatherV2_1:output:0-recommender_net_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#recommender_net_36/Tensordot/Prod_1
(recommender_net_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(recommender_net_36/Tensordot/concat/axis
#recommender_net_36/Tensordot/concatConcatV2*recommender_net_36/Tensordot/free:output:0*recommender_net_36/Tensordot/axes:output:01recommender_net_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#recommender_net_36/Tensordot/concatØ
"recommender_net_36/Tensordot/stackPack*recommender_net_36/Tensordot/Prod:output:0,recommender_net_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"recommender_net_36/Tensordot/stack
&recommender_net_36/Tensordot/transpose	TransposeErecommender_net_36/embedding_144/embedding_lookup/Identity_1:output:0,recommender_net_36/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2(
&recommender_net_36/Tensordot/transposeë
$recommender_net_36/Tensordot/ReshapeReshape*recommender_net_36/Tensordot/transpose:y:0+recommender_net_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2&
$recommender_net_36/Tensordot/Reshape
#recommender_net_36/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#recommender_net_36/Tensordot/axes_1
#recommender_net_36/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2%
#recommender_net_36/Tensordot/free_1Á
$recommender_net_36/Tensordot/Shape_1ShapeErecommender_net_36/embedding_146/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2&
$recommender_net_36/Tensordot/Shape_1
,recommender_net_36/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,recommender_net_36/Tensordot/GatherV2_2/axis¸
'recommender_net_36/Tensordot/GatherV2_2GatherV2-recommender_net_36/Tensordot/Shape_1:output:0,recommender_net_36/Tensordot/free_1:output:05recommender_net_36/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2)
'recommender_net_36/Tensordot/GatherV2_2
,recommender_net_36/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,recommender_net_36/Tensordot/GatherV2_3/axisº
'recommender_net_36/Tensordot/GatherV2_3GatherV2-recommender_net_36/Tensordot/Shape_1:output:0,recommender_net_36/Tensordot/axes_1:output:05recommender_net_36/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'recommender_net_36/Tensordot/GatherV2_3
$recommender_net_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2&
$recommender_net_36/Tensordot/Const_2Ô
#recommender_net_36/Tensordot/Prod_2Prod0recommender_net_36/Tensordot/GatherV2_2:output:0-recommender_net_36/Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2%
#recommender_net_36/Tensordot/Prod_2
$recommender_net_36/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2&
$recommender_net_36/Tensordot/Const_3Ô
#recommender_net_36/Tensordot/Prod_3Prod0recommender_net_36/Tensordot/GatherV2_3:output:0-recommender_net_36/Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2%
#recommender_net_36/Tensordot/Prod_3
*recommender_net_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*recommender_net_36/Tensordot/concat_1/axis
%recommender_net_36/Tensordot/concat_1ConcatV2,recommender_net_36/Tensordot/axes_1:output:0,recommender_net_36/Tensordot/free_1:output:03recommender_net_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%recommender_net_36/Tensordot/concat_1Þ
$recommender_net_36/Tensordot/stack_1Pack,recommender_net_36/Tensordot/Prod_3:output:0,recommender_net_36/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2&
$recommender_net_36/Tensordot/stack_1
(recommender_net_36/Tensordot/transpose_1	TransposeErecommender_net_36/embedding_146/embedding_lookup/Identity_1:output:0.recommender_net_36/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2*
(recommender_net_36/Tensordot/transpose_1ó
&recommender_net_36/Tensordot/Reshape_1Reshape,recommender_net_36/Tensordot/transpose_1:y:0-recommender_net_36/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&recommender_net_36/Tensordot/Reshape_1ï
#recommender_net_36/Tensordot/MatMulMatMul-recommender_net_36/Tensordot/Reshape:output:0/recommender_net_36/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#recommender_net_36/Tensordot/MatMul
*recommender_net_36/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*recommender_net_36/Tensordot/concat_2/axis
%recommender_net_36/Tensordot/concat_2ConcatV2.recommender_net_36/Tensordot/GatherV2:output:00recommender_net_36/Tensordot/GatherV2_2:output:03recommender_net_36/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2'
%recommender_net_36/Tensordot/concat_2Ç
recommender_net_36/TensordotReshape-recommender_net_36/Tensordot/MatMul:product:0.recommender_net_36/Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
recommender_net_36/TensordotÙ
recommender_net_36/addAddV2%recommender_net_36/Tensordot:output:0Erecommender_net_36/embedding_145/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_36/addÒ
recommender_net_36/add_1AddV2recommender_net_36/add:z:0Erecommender_net_36/embedding_147/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_36/add_1
recommender_net_36/SigmoidSigmoidrecommender_net_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
recommender_net_36/SigmoidÂ
IdentityIdentityrecommender_net_36/Sigmoid:y:02^recommender_net_36/embedding_144/embedding_lookup2^recommender_net_36/embedding_145/embedding_lookup2^recommender_net_36/embedding_146/embedding_lookup2^recommender_net_36/embedding_147/embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2f
1recommender_net_36/embedding_144/embedding_lookup1recommender_net_36/embedding_144/embedding_lookup2f
1recommender_net_36/embedding_145/embedding_lookup1recommender_net_36/embedding_145/embedding_lookup2f
1recommender_net_36/embedding_146/embedding_lookup1recommender_net_36/embedding_146/embedding_lookup2f
1recommender_net_36/embedding_147/embedding_lookup1recommender_net_36/embedding_147/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
í8
±
 __inference__traced_save_1492802
file_prefixJ
Fsavev2_recommender_net_36_embedding_144_embeddings_read_readvariableopJ
Fsavev2_recommender_net_36_embedding_145_embeddings_read_readvariableopJ
Fsavev2_recommender_net_36_embedding_146_embeddings_read_readvariableopJ
Fsavev2_recommender_net_36_embedding_147_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_144_embeddings_m_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_145_embeddings_m_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_146_embeddings_m_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_147_embeddings_m_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_144_embeddings_v_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_145_embeddings_v_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_146_embeddings_v_read_readvariableopQ
Msavev2_adam_recommender_net_36_embedding_147_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename®
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À

value¶
B³
B4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names´
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices¿
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_recommender_net_36_embedding_144_embeddings_read_readvariableopFsavev2_recommender_net_36_embedding_145_embeddings_read_readvariableopFsavev2_recommender_net_36_embedding_146_embeddings_read_readvariableopFsavev2_recommender_net_36_embedding_147_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopMsavev2_adam_recommender_net_36_embedding_144_embeddings_m_read_readvariableopMsavev2_adam_recommender_net_36_embedding_145_embeddings_m_read_readvariableopMsavev2_adam_recommender_net_36_embedding_146_embeddings_m_read_readvariableopMsavev2_adam_recommender_net_36_embedding_147_embeddings_m_read_readvariableopMsavev2_adam_recommender_net_36_embedding_144_embeddings_v_read_readvariableopMsavev2_adam_recommender_net_36_embedding_145_embeddings_v_read_readvariableopMsavev2_adam_recommender_net_36_embedding_146_embeddings_v_read_readvariableopMsavev2_adam_recommender_net_36_embedding_147_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*»
_input_shapes©
¦: :
ý¹}:
ý¹:
øÐ}:
øÐ: : : : : : : : : :
ý¹}:
ý¹:
øÐ}:
øÐ:
ý¹}:
ý¹:
øÐ}:
øÐ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ý¹}:&"
 
_output_shapes
:
ý¹:&"
 
_output_shapes
:
øÐ}:&"
 
_output_shapes
:
øÐ:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
ý¹}:&"
 
_output_shapes
:
ý¹:&"
 
_output_shapes
:
øÐ}:&"
 
_output_shapes
:
øÐ:&"
 
_output_shapes
:
ý¹}:&"
 
_output_shapes
:
ý¹:&"
 
_output_shapes
:
øÐ}:&"
 
_output_shapes
:
øÐ:

_output_shapes
: 

ì
__inference_loss_fn_1_1492716j
Vrecommender_net_36_embedding_146_embeddings_regularizer_square_readvariableop_resource:
øÐ}
identity¢Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp·
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpVrecommender_net_36_embedding_146_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
øÐ}*
dtype02O
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
øÐ}2@
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_146/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_146/embeddings/Regularizer/Const®
;recommender_net_36/embedding_146/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_146/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_146/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_146/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_146/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_146/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/mulÒ
IdentityIdentity?recommender_net_36/embedding_146/embeddings/Regularizer/mul:z:0N^recommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp
ù

/__inference_embedding_144_layer_call_fn_1492619

inputs	
unknown:
ý¹}
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_144_layer_call_and_return_conditional_losses_14924142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
òt
Û
O__inference_recommender_net_36_layer_call_and_return_conditional_losses_1492527
input_1	)
embedding_144_1492415:
ý¹})
embedding_145_1492432:
ý¹)
embedding_146_1492455:
øÐ})
embedding_147_1492472:
øÐ
identity¢%embedding_144/StatefulPartitionedCall¢%embedding_145/StatefulPartitionedCall¢%embedding_146/StatefulPartitionedCall¢%embedding_147/StatefulPartitionedCall¢Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp¢Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice§
%embedding_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_144_1492415*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_144_layer_call_and_return_conditional_losses_14924142'
%embedding_144/StatefulPartitionedCall
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1©
%embedding_145/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_145_1492432*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_145_layer_call_and_return_conditional_losses_14924312'
%embedding_145/StatefulPartitionedCall
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2©
%embedding_146/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_146_1492455*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_146_layer_call_and_return_conditional_losses_14924542'
%embedding_146/StatefulPartitionedCall
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3©
%embedding_147/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_147_1492472*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_147_layer_call_and_return_conditional_losses_14924712'
%embedding_147/StatefulPartitionedCallq
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axesc
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free
Tensordot/ShapeShape.embedding_144/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÏ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack´
Tensordot/transpose	Transpose.embedding_144/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshapeu
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/axes_1g
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 2
Tensordot/free_1
Tensordot/Shape_1Shape.embedding_146/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
Tensordot/Shape_1x
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_2/axisÙ
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
Tensordot/GatherV2_2x
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_3/axisÛ
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_3p
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_2p
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_3
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_3t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisº
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack_1º
Tensordot/transpose_1	Transpose.embedding_146/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
Tensordot/transpose_1§
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1£
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMult
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_2/axis¾
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 2
Tensordot/concat_2{
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 2
	Tensordot
addAddV2Tensordot:output:0.embedding_145/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
add_1AddV2add:z:0.embedding_147/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidö
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_144_1492415* 
_output_shapes
:
ý¹}*
dtype02O
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ý¹}2@
>recommender_net_36/embedding_144/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_144/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_144/embeddings/Regularizer/Const®
;recommender_net_36/embedding_144/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_144/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_144/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_144/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_144/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_144/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_144/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_144/embeddings/Regularizer/mulö
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_146_1492455* 
_output_shapes
:
øÐ}*
dtype02O
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
øÐ}2@
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_146/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_146/embeddings/Regularizer/Const®
;recommender_net_36/embedding_146/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_146/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_146/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_146/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_146/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_146/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/mul
IdentityIdentitySigmoid:y:0&^embedding_144/StatefulPartitionedCall&^embedding_145/StatefulPartitionedCall&^embedding_146/StatefulPartitionedCall&^embedding_147/StatefulPartitionedCallN^recommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpN^recommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2N
%embedding_144/StatefulPartitionedCall%embedding_144/StatefulPartitionedCall2N
%embedding_145/StatefulPartitionedCall%embedding_145/StatefulPartitionedCall2N
%embedding_146/StatefulPartitionedCall%embedding_146/StatefulPartitionedCall2N
%embedding_147/StatefulPartitionedCall%embedding_147/StatefulPartitionedCall2
Mrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_144/embeddings/Regularizer/Square/ReadVariableOp2
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
í
ú
J__inference_embedding_146_layer_call_and_return_conditional_losses_1492678

inputs	,
embedding_lookup_1492666:
øÐ}
identity¢embedding_lookup¢Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpù
embedding_lookupResourceGatherembedding_lookup_1492666inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*+
_class!
loc:@embedding_lookup/1492666*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype02
embedding_lookupê
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1492666*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
embedding_lookup/Identity_1ù
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1492666* 
_output_shapes
:
øÐ}*
dtype02O
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareSquareUrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
øÐ}2@
>recommender_net_36/embedding_146/embeddings/Regularizer/SquareÏ
=recommender_net_36/embedding_146/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2?
=recommender_net_36/embedding_146/embeddings/Regularizer/Const®
;recommender_net_36/embedding_146/embeddings/Regularizer/SumSumBrecommender_net_36/embedding_146/embeddings/Regularizer/Square:y:0Frecommender_net_36/embedding_146/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/SumÃ
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752?
=recommender_net_36/embedding_146/embeddings/Regularizer/mul/x°
;recommender_net_36/embedding_146/embeddings/Regularizer/mulMulFrecommender_net_36/embedding_146/embeddings/Regularizer/mul/x:output:0Drecommender_net_36/embedding_146/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2=
;recommender_net_36/embedding_146/embeddings/Regularizer/mulÛ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookupN^recommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Mrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOpMrecommender_net_36/embedding_146/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

/__inference_embedding_145_layer_call_fn_1492641

inputs	
unknown:
ý¹
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_145_layer_call_and_return_conditional_losses_14924312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Õz
¬
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
P__call__
Q_default_save_signature
*R&call_and_return_all_conditional_losses"	
_tf_keras_modelÿ{"name": "recommender_net_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "RecommenderNet", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2]}, "int64", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "RecommenderNet"}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 0}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 1}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"name": "embedding_144", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_144", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 138493, "output_dim": 125, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 2}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 3}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
Ý

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
U__call__
*V&call_and_return_all_conditional_losses"¾
_tf_keras_layer¤{"name": "embedding_145", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_145", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 138493, "output_dim": 1, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 5}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 6, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
W__call__
*X&call_and_return_all_conditional_losses"é
_tf_keras_layerÏ{"name": "embedding_146", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_146", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26744, "output_dim": 125, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 7}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 8}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 9, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
Þ

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"¿
_tf_keras_layer¥{"name": "embedding_147", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_147", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 26744, "output_dim": 1, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 10}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}

iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
Ê

$layers
%non_trainable_variables
trainable_variables
&layer_regularization_losses
regularization_losses
'metrics
	variables
(layer_metrics
P__call__
Q_default_save_signature
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
,
]serving_default"
signature_map
?:=
ý¹}2+recommender_net_36/embedding_144/embeddings
'
0"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

)layers
*non_trainable_variables
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics
	variables
-layer_metrics
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?:=
ý¹2+recommender_net_36/embedding_145/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

.layers
/non_trainable_variables
trainable_variables
0layer_regularization_losses
regularization_losses
1metrics
	variables
2layer_metrics
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
?:=
øÐ}2+recommender_net_36/embedding_146/embeddings
'
0"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

3layers
4non_trainable_variables
trainable_variables
5layer_regularization_losses
regularization_losses
6metrics
	variables
7layer_metrics
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
?:=
øÐ2+recommender_net_36/embedding_147/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

8layers
9non_trainable_variables
trainable_variables
:layer_regularization_losses
regularization_losses
;metrics
	variables
<layer_metrics
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
[0"
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
trackable_list_wrapper
 "
trackable_list_wrapper
'
\0"
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
Ô
	?total
	@count
A	variables
B	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 12}

	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api"Ä
_tf_keras_metric©{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 1}
:  (2total
:  (2count
.
?0
@1"
trackable_list_wrapper
-
A	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
D:B
ý¹}22Adam/recommender_net_36/embedding_144/embeddings/m
D:B
ý¹22Adam/recommender_net_36/embedding_145/embeddings/m
D:B
øÐ}22Adam/recommender_net_36/embedding_146/embeddings/m
D:B
øÐ22Adam/recommender_net_36/embedding_147/embeddings/m
D:B
ý¹}22Adam/recommender_net_36/embedding_144/embeddings/v
D:B
ý¹22Adam/recommender_net_36/embedding_145/embeddings/v
D:B
øÐ}22Adam/recommender_net_36/embedding_146/embeddings/v
D:B
øÐ22Adam/recommender_net_36/embedding_147/embeddings/v
2ÿ
4__inference_recommender_net_36_layer_call_fn_1492541Æ
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
à2Ý
"__inference__wrapped_model_1492391¶
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
2
O__inference_recommender_net_36_layer_call_and_return_conditional_losses_1492527Æ
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
Ù2Ö
/__inference_embedding_144_layer_call_fn_1492619¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_embedding_144_layer_call_and_return_conditional_losses_1492634¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_embedding_145_layer_call_fn_1492641¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_embedding_145_layer_call_and_return_conditional_losses_1492650¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_embedding_146_layer_call_fn_1492663¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_embedding_146_layer_call_and_return_conditional_losses_1492678¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_embedding_147_layer_call_fn_1492685¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_embedding_147_layer_call_and_return_conditional_losses_1492694¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±
__inference_loss_fn_0_1492705
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_1_1492716
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÌBÉ
%__inference_signature_wrapper_1492606input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"__inference__wrapped_model_1492391m0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¥
J__inference_embedding_144_layer_call_and_return_conditional_losses_1492634W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ}
 }
/__inference_embedding_144_layer_call_fn_1492619J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ}¥
J__inference_embedding_145_layer_call_and_return_conditional_losses_1492650W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
/__inference_embedding_145_layer_call_fn_1492641J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¥
J__inference_embedding_146_layer_call_and_return_conditional_losses_1492678W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ}
 }
/__inference_embedding_146_layer_call_fn_1492663J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ}¥
J__inference_embedding_147_layer_call_and_return_conditional_losses_1492694W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
/__inference_embedding_147_layer_call_fn_1492685J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_1492705¢

¢ 
ª " <
__inference_loss_fn_1_1492716¢

¢ 
ª " ²
O__inference_recommender_net_36_layer_call_and_return_conditional_losses_1492527_0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
4__inference_recommender_net_36_layer_call_fn_1492541R0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¡
%__inference_signature_wrapper_1492606x;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ