��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
�
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *$

debug_nameAdam/dense_7/bias/v/*
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *&

debug_nameAdam/dense_7/kernel/v/*
dtype0*
shape
:e
*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:e
*
dtype0
�
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *$

debug_nameAdam/dense_6/bias/v/*
dtype0*
shape:e*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:e*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *&

debug_nameAdam/dense_6/kernel/v/*
dtype0*
shape:	�e*&
shared_nameAdam/dense_6/kernel/v
�
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	�e*
dtype0
�
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *$

debug_nameAdam/dense_7/bias/m/*
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *&

debug_nameAdam/dense_7/kernel/m/*
dtype0*
shape
:e
*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:e
*
dtype0
�
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *$

debug_nameAdam/dense_6/bias/m/*
dtype0*
shape:e*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:e*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *&

debug_nameAdam/dense_6/kernel/m/*
dtype0*
shape:	�e*&
shared_nameAdam/dense_6/kernel/m
�
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	�e*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameAdam/learning_rate/*
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�

Adam/decayVarHandleOp*
_output_shapes
: *

debug_nameAdam/decay/*
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
�
Adam/beta_2VarHandleOp*
_output_shapes
: *

debug_nameAdam/beta_2/*
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
�
Adam/beta_1VarHandleOp*
_output_shapes
: *

debug_nameAdam/beta_1/*
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
�
	Adam/iterVarHandleOp*
_output_shapes
: *

debug_name
Adam/iter/*
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
dense_7/biasVarHandleOp*
_output_shapes
: *

debug_namedense_7/bias/*
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:
*
dtype0
�
dense_7/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_7/kernel/*
dtype0*
shape
:e
*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:e
*
dtype0
�
dense_6/biasVarHandleOp*
_output_shapes
: *

debug_namedense_6/bias/*
dtype0*
shape:e*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:e*
dtype0
�
dense_6/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_6/kernel/*
dtype0*
shape:	�e*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	�e*
dtype0
�
serving_default_flatten_3_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_3_inputdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_12661667

NoOpNoOp
�,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�+
value�+B�+ B�+
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
 
0
1
)2
*3*
 
0
1
)2
*3*
* 
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

0trace_0
1trace_1* 

2trace_0
3trace_1* 
* 
�
4iter

5beta_1

6beta_2
	7decay
8learning_ratemcmd)me*mfvgvh)vi*vj*

9serving_default* 
* 
* 
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

?trace_0* 

@trace_0* 

0
1*

0
1*
* 
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ftrace_0* 

Gtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

Mtrace_0
Ntrace_1* 

Otrace_0
Ptrace_1* 
* 

)0
*1*

)0
*1*
* 
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

X0
Y1*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
8
Z	variables
[	keras_api
	\total
	]count*
H
^	variables
_	keras_api
	`total
	acount
b
_fn_kwargs*

\0
]1*

Z	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

^	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vConst*"
Tin
2*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_12661893
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*!
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_12661965��
�

�
E__inference_dense_7_layer_call_and_return_conditional_losses_12661560

inputs0
matmul_readvariableop_resource:e
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:e
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������e: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�

�
E__inference_dense_6_layer_call_and_return_conditional_losses_12661531

inputs1
matmul_readvariableop_resource:	�e-
biasadd_readvariableop_resource:e
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�e*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������er
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:e*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������eP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������ea
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������eS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_6_layer_call_and_return_conditional_losses_12661698

inputs1
matmul_readvariableop_resource:	�e-
biasadd_readvariableop_resource:e
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�e*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������er
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:e*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������eP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������ea
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������eS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ߥ
�
!__inference__traced_save_12661893
file_prefix8
%read_disablecopyonread_dense_6_kernel:	�e3
%read_1_disablecopyonread_dense_6_bias:e9
'read_2_disablecopyonread_dense_7_kernel:e
3
%read_3_disablecopyonread_dense_7_bias:
,
"read_4_disablecopyonread_adam_iter:	 .
$read_5_disablecopyonread_adam_beta_1: .
$read_6_disablecopyonread_adam_beta_2: -
#read_7_disablecopyonread_adam_decay: 5
+read_8_disablecopyonread_adam_learning_rate: *
 read_9_disablecopyonread_total_1: +
!read_10_disablecopyonread_count_1: )
read_11_disablecopyonread_total: )
read_12_disablecopyonread_count: B
/read_13_disablecopyonread_adam_dense_6_kernel_m:	�e;
-read_14_disablecopyonread_adam_dense_6_bias_m:eA
/read_15_disablecopyonread_adam_dense_7_kernel_m:e
;
-read_16_disablecopyonread_adam_dense_7_bias_m:
B
/read_17_disablecopyonread_adam_dense_6_kernel_v:	�e;
-read_18_disablecopyonread_adam_dense_6_bias_v:eA
/read_19_disablecopyonread_adam_dense_7_kernel_v:e
;
-read_20_disablecopyonread_adam_dense_7_bias_v:

savev2_const
identity_43��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_6_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�e*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�eb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�ey
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_6_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:e*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:e_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:e{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_7_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:e
*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:e
y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_7_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_adam_iter^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_adam_beta_1^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_adam_beta_2^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_adam_decay^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_8/DisableCopyOnReadDisableCopyOnRead+read_8_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp+read_8_disablecopyonread_adam_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_9/DisableCopyOnReadDisableCopyOnRead read_9_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp read_9_disablecopyonread_total_1^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_10/DisableCopyOnReadDisableCopyOnRead!read_10_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp!read_10_disablecopyonread_count_1^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_11/DisableCopyOnReadDisableCopyOnReadread_11_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpread_11_disablecopyonread_total^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_12/DisableCopyOnReadDisableCopyOnReadread_12_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpread_12_disablecopyonread_count^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_dense_6_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_dense_6_kernel_m^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�e*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�ef
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	�e�
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_adam_dense_6_bias_m"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_adam_dense_6_bias_m^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:e*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ea
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:e�
Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_dense_7_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_dense_7_kernel_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:e
*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:e
�
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_dense_7_bias_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_dense_7_bias_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_dense_6_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_dense_6_kernel_v^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�e*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�ef
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	�e�
Read_18/DisableCopyOnReadDisableCopyOnRead-read_18_disablecopyonread_adam_dense_6_bias_v"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp-read_18_disablecopyonread_adam_dense_6_bias_v^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:e*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:ea
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:e�
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_dense_7_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_dense_7_kernel_v^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:e
*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:e
�
Read_20/DisableCopyOnReadDisableCopyOnRead-read_20_disablecopyonread_adam_dense_7_bias_v"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp-read_20_disablecopyonread_adam_dense_7_bias_v^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *$
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_42Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_43IdentityIdentity_42:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:3/
-
_user_specified_nameAdam/dense_7/bias/v:51
/
_user_specified_nameAdam/dense_7/kernel/v:3/
-
_user_specified_nameAdam/dense_6/bias/v:51
/
_user_specified_nameAdam/dense_6/kernel/v:3/
-
_user_specified_nameAdam/dense_7/bias/m:51
/
_user_specified_nameAdam/dense_7/kernel/m:3/
-
_user_specified_nameAdam/dense_6/bias/m:51
/
_user_specified_nameAdam/dense_6/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'
#
!
_user_specified_name	total_1:2	.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
/__inference_sequential_3_layer_call_fn_12661601
flatten_3_input
unknown:	�e
	unknown_0:e
	unknown_1:e

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_3_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12661597:($
"
_user_specified_name
12661595:($
"
_user_specified_name
12661593:($
"
_user_specified_name
12661591:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661548

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�=�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������eQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������e*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *1��=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������eT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������ea
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������e"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661725

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������e[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������e"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
�
*__inference_dense_6_layer_call_fn_12661687

inputs
unknown:	�e
	unknown_0:e
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_12661531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������e<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12661683:($
"
_user_specified_name
12661681:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_7_layer_call_and_return_conditional_losses_12661745

inputs0
matmul_readvariableop_resource:e
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:e
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������e: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661580

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������e[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������e"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
c
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661519

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_7_layer_call_fn_12661734

inputs
unknown:e

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_12661560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������e: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12661730:($
"
_user_specified_name
12661728:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
H
,__inference_flatten_3_layer_call_fn_12661672

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661519a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
&__inference_signature_wrapper_12661667
flatten_3_input
unknown:	�e
	unknown_0:e
	unknown_1:e

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_3_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_12661511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12661663:($
"
_user_specified_name
12661661:($
"
_user_specified_name
12661659:($
"
_user_specified_name
12661657:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�
�
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661588
flatten_3_input#
dense_6_12661571:	�e
dense_6_12661573:e"
dense_7_12661582:e

dense_7_12661584:

identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
flatten_3/PartitionedCallPartitionedCallflatten_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661519�
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_12661571dense_6_12661573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_12661531�
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661580�
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_12661582dense_7_12661584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_12661560w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
f
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:($
"
_user_specified_name
12661584:($
"
_user_specified_name
12661582:($
"
_user_specified_name
12661573:($
"
_user_specified_name
12661571:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�c
�
$__inference__traced_restore_12661965
file_prefix2
assignvariableop_dense_6_kernel:	�e-
assignvariableop_1_dense_6_bias:e3
!assignvariableop_2_dense_7_kernel:e
-
assignvariableop_3_dense_7_bias:
&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: <
)assignvariableop_13_adam_dense_6_kernel_m:	�e5
'assignvariableop_14_adam_dense_6_bias_m:e;
)assignvariableop_15_adam_dense_7_kernel_m:e
5
'assignvariableop_16_adam_dense_7_bias_m:
<
)assignvariableop_17_adam_dense_6_kernel_v:	�e5
'assignvariableop_18_adam_dense_6_bias_v:e;
)assignvariableop_19_adam_dense_7_kernel_v:e
5
'assignvariableop_20_adam_dense_7_bias_v:

identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_6_kernel_mIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_6_bias_mIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_7_kernel_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_7_bias_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_6_kernel_vIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_6_bias_vIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_7_kernel_vIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_7_bias_vIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_22Identity_22:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:3/
-
_user_specified_nameAdam/dense_7/bias/v:51
/
_user_specified_nameAdam/dense_7/kernel/v:3/
-
_user_specified_nameAdam/dense_6/bias/v:51
/
_user_specified_nameAdam/dense_6/kernel/v:3/
-
_user_specified_nameAdam/dense_7/bias/m:51
/
_user_specified_nameAdam/dense_7/kernel/m:3/
-
_user_specified_nameAdam/dense_6/bias/m:51
/
_user_specified_nameAdam/dense_6/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'
#
!
_user_specified_name	total_1:2	.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
c
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661678

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661567
flatten_3_input#
dense_6_12661532:	�e
dense_6_12661534:e"
dense_7_12661561:e

dense_7_12661563:

identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�
flatten_3/PartitionedCallPartitionedCallflatten_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661519�
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_12661532dense_6_12661534*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_12661531�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661548�
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_12661561dense_7_12661563*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_12661560w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:($
"
_user_specified_name
12661563:($
"
_user_specified_name
12661561:($
"
_user_specified_name
12661534:($
"
_user_specified_name
12661532:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�	
�
/__inference_sequential_3_layer_call_fn_12661614
flatten_3_input
unknown:	�e
	unknown_0:e
	unknown_1:e

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_3_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12661610:($
"
_user_specified_name
12661608:($
"
_user_specified_name
12661606:($
"
_user_specified_name
12661604:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�
�
#__inference__wrapped_model_12661511
flatten_3_inputF
3sequential_3_dense_6_matmul_readvariableop_resource:	�eB
4sequential_3_dense_6_biasadd_readvariableop_resource:eE
3sequential_3_dense_7_matmul_readvariableop_resource:e
B
4sequential_3_dense_7_biasadd_readvariableop_resource:

identity��+sequential_3/dense_6/BiasAdd/ReadVariableOp�*sequential_3/dense_6/MatMul/ReadVariableOp�+sequential_3/dense_7/BiasAdd/ReadVariableOp�*sequential_3/dense_7/MatMul/ReadVariableOpm
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_3/flatten_3/ReshapeReshapeflatten_3_input%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_3/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_6_matmul_readvariableop_resource*
_output_shapes
:	�e*
dtype0�
sequential_3/dense_6/MatMulMatMul'sequential_3/flatten_3/Reshape:output:02sequential_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e�
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes
:e*
dtype0�
sequential_3/dense_6/BiasAddBiasAdd%sequential_3/dense_6/MatMul:product:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������ez
sequential_3/dense_6/ReluRelu%sequential_3/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������e�
sequential_3/dropout_3/IdentityIdentity'sequential_3/dense_6/Relu:activations:0*
T0*'
_output_shapes
:���������e�
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes

:e
*
dtype0�
sequential_3/dense_7/MatMulMatMul(sequential_3/dropout_3/Identity:output:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
sequential_3/dense_7/SoftmaxSoftmax%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������
u
IdentityIdentity&sequential_3/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp+^sequential_3/dense_6/MatMul/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2X
*sequential_3/dense_6/MatMul/ReadVariableOp*sequential_3/dense_6/MatMul/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_3_input
�
H
,__inference_dropout_3_layer_call_fn_12661708

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661580`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������e"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�
e
,__inference_dropout_3_layer_call_fn_12661703

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������e* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661548o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������e<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs
�

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661720

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�=�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������eQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������e*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *1��=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������eT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������ea
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������e"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������e:O K
'
_output_shapes
:���������e
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
O
flatten_3_input<
!serving_default_flatten_3_input:0���������;
dense_70
StatefulPartitionedCall:0���������
tensorflow/serving/predict:�s
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
<
0
1
)2
*3"
trackable_list_wrapper
<
0
1
)2
*3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
0trace_0
1trace_12�
/__inference_sequential_3_layer_call_fn_12661601
/__inference_sequential_3_layer_call_fn_12661614�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z0trace_0z1trace_1
�
2trace_0
3trace_12�
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661567
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661588�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z2trace_0z3trace_1
�B�
#__inference__wrapped_model_12661511flatten_3_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
4iter

5beta_1

6beta_2
	7decay
8learning_ratemcmd)me*mfvgvh)vi*vj"
	optimizer
,
9serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
?trace_02�
,__inference_flatten_3_layer_call_fn_12661672�
���
FullArgSpec
args�

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
annotations� *
 z?trace_0
�
@trace_02�
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661678�
���
FullArgSpec
args�

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
annotations� *
 z@trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ftrace_02�
*__inference_dense_6_layer_call_fn_12661687�
���
FullArgSpec
args�

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
annotations� *
 zFtrace_0
�
Gtrace_02�
E__inference_dense_6_layer_call_and_return_conditional_losses_12661698�
���
FullArgSpec
args�

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
annotations� *
 zGtrace_0
!:	�e2dense_6/kernel
:e2dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
Mtrace_0
Ntrace_12�
,__inference_dropout_3_layer_call_fn_12661703
,__inference_dropout_3_layer_call_fn_12661708�
���
FullArgSpec!
args�
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
annotations� *
 zMtrace_0zNtrace_1
�
Otrace_0
Ptrace_12�
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661720
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661725�
���
FullArgSpec!
args�
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
annotations� *
 zOtrace_0zPtrace_1
"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
Vtrace_02�
*__inference_dense_7_layer_call_fn_12661734�
���
FullArgSpec
args�

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
annotations� *
 zVtrace_0
�
Wtrace_02�
E__inference_dense_7_layer_call_and_return_conditional_losses_12661745�
���
FullArgSpec
args�

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
annotations� *
 zWtrace_0
 :e
2dense_7/kernel
:
2dense_7/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_3_layer_call_fn_12661601flatten_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_3_layer_call_fn_12661614flatten_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661567flatten_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661588flatten_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
&__inference_signature_wrapper_12661667flatten_3_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jflatten_3_input
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_flatten_3_layer_call_fn_12661672inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661678inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
*__inference_dense_6_layer_call_fn_12661687inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_6_layer_call_and_return_conditional_losses_12661698inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dropout_3_layer_call_fn_12661703inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_3_layer_call_fn_12661708inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661720inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661725inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dense_7_layer_call_fn_12661734inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_7_layer_call_and_return_conditional_losses_12661745inputs"�
���
FullArgSpec
args�

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
annotations� *
 
N
Z	variables
[	keras_api
	\total
	]count"
_tf_keras_metric
^
^	variables
_	keras_api
	`total
	acount
b
_fn_kwargs"
_tf_keras_metric
.
\0
]1"
trackable_list_wrapper
-
Z	variables"
_generic_user_object
:  (2total
:  (2count
.
`0
a1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
&:$	�e2Adam/dense_6/kernel/m
:e2Adam/dense_6/bias/m
%:#e
2Adam/dense_7/kernel/m
:
2Adam/dense_7/bias/m
&:$	�e2Adam/dense_6/kernel/v
:e2Adam/dense_6/bias/v
%:#e
2Adam/dense_7/kernel/v
:
2Adam/dense_7/bias/v�
#__inference__wrapped_model_12661511w)*<�9
2�/
-�*
flatten_3_input���������
� "1�.
,
dense_7!�
dense_7���������
�
E__inference_dense_6_layer_call_and_return_conditional_losses_12661698d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������e
� �
*__inference_dense_6_layer_call_fn_12661687Y0�-
&�#
!�
inputs����������
� "!�
unknown���������e�
E__inference_dense_7_layer_call_and_return_conditional_losses_12661745c)*/�,
%�"
 �
inputs���������e
� ",�)
"�
tensor_0���������

� �
*__inference_dense_7_layer_call_fn_12661734X)*/�,
%�"
 �
inputs���������e
� "!�
unknown���������
�
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661720c3�0
)�&
 �
inputs���������e
p
� ",�)
"�
tensor_0���������e
� �
G__inference_dropout_3_layer_call_and_return_conditional_losses_12661725c3�0
)�&
 �
inputs���������e
p 
� ",�)
"�
tensor_0���������e
� �
,__inference_dropout_3_layer_call_fn_12661703X3�0
)�&
 �
inputs���������e
p
� "!�
unknown���������e�
,__inference_dropout_3_layer_call_fn_12661708X3�0
)�&
 �
inputs���������e
p 
� "!�
unknown���������e�
G__inference_flatten_3_layer_call_and_return_conditional_losses_12661678d3�0
)�&
$�!
inputs���������
� "-�*
#� 
tensor_0����������
� �
,__inference_flatten_3_layer_call_fn_12661672Y3�0
)�&
$�!
inputs���������
� ""�
unknown�����������
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661567z)*D�A
:�7
-�*
flatten_3_input���������
p

 
� ",�)
"�
tensor_0���������

� �
J__inference_sequential_3_layer_call_and_return_conditional_losses_12661588z)*D�A
:�7
-�*
flatten_3_input���������
p 

 
� ",�)
"�
tensor_0���������

� �
/__inference_sequential_3_layer_call_fn_12661601o)*D�A
:�7
-�*
flatten_3_input���������
p

 
� "!�
unknown���������
�
/__inference_sequential_3_layer_call_fn_12661614o)*D�A
:�7
-�*
flatten_3_input���������
p 

 
� "!�
unknown���������
�
&__inference_signature_wrapper_12661667�)*O�L
� 
E�B
@
flatten_3_input-�*
flatten_3_input���������"1�.
,
dense_7!�
dense_7���������
