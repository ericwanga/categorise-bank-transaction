??%
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
?
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
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
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
2
StopGradient

input"T
output"T"	
Ttype
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
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??"
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:P*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:P*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:P*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
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
?
3token_and_position_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*D
shared_name53token_and_position_embedding/embedding_1/embeddings
?
Gtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_1/embeddings*
_output_shapes
:	?*
dtype0
?
3token_and_position_embedding/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*D
shared_name53token_and_position_embedding/embedding_2/embeddings
?
Gtoken_and_position_embedding/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_2/embeddings*
_output_shapes

:*
dtype0
?
3transformer_block/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53transformer_block/multi_head_attention/query/kernel
?
Gtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/query/kernel*"
_output_shapes
:*
dtype0
?
1transformer_block/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31transformer_block/multi_head_attention/query/bias
?
Etransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/query/bias*
_output_shapes

:*
dtype0
?
1transformer_block/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31transformer_block/multi_head_attention/key/kernel
?
Etransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/key/kernel*"
_output_shapes
:*
dtype0
?
/transformer_block/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/transformer_block/multi_head_attention/key/bias
?
Ctransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp/transformer_block/multi_head_attention/key/bias*
_output_shapes

:*
dtype0
?
3transformer_block/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53transformer_block/multi_head_attention/value/kernel
?
Gtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/value/kernel*"
_output_shapes
:*
dtype0
?
1transformer_block/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31transformer_block/multi_head_attention/value/bias
?
Etransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/value/bias*
_output_shapes

:*
dtype0
?
>transformer_block/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*O
shared_name@>transformer_block/multi_head_attention/attention_output/kernel
?
Rtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp>transformer_block/multi_head_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
?
<transformer_block/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*M
shared_name><transformer_block/multi_head_attention/attention_output/bias
?
Ptransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp<transformer_block/multi_head_attention/attention_output/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
?
+transformer_block/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+transformer_block/layer_normalization/gamma
?
?transformer_block/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+transformer_block/layer_normalization/gamma*
_output_shapes
:*
dtype0
?
*transformer_block/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*transformer_block/layer_normalization/beta
?
>transformer_block/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*transformer_block/layer_normalization/beta*
_output_shapes
:*
dtype0
?
-transformer_block/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-transformer_block/layer_normalization_1/gamma
?
Atransformer_block/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-transformer_block/layer_normalization_1/gamma*
_output_shapes
:*
dtype0
?
,transformer_block/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,transformer_block/layer_normalization_1/beta
?
@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,transformer_block/layer_normalization_1/beta*
_output_shapes
:*
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
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
?
weights_intermediateVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameweights_intermediate
y
(weights_intermediate/Read/ReadVariableOpReadVariableOpweights_intermediate*
_output_shapes
:*
dtype0
l
conf_mtxVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
conf_mtx
e
conf_mtx/Read/ReadVariableOpReadVariableOpconf_mtx*
_output_shapes

:*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:P*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:P*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:P*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
?
:Adam/token_and_position_embedding/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/m
?
NAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/m*
_output_shapes
:	?*
dtype0
?
:Adam/token_and_position_embedding/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*K
shared_name<:Adam/token_and_position_embedding/embedding_2/embeddings/m
?
NAdam/token_and_position_embedding/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_2/embeddings/m*
_output_shapes

:*
dtype0
?
:Adam/transformer_block/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/m
?
NAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/m*"
_output_shapes
:*
dtype0
?
8Adam/transformer_block/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/m
?
LAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/m*
_output_shapes

:*
dtype0
?
8Adam/transformer_block/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/m
?
LAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/m*"
_output_shapes
:*
dtype0
?
6Adam/transformer_block/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/m
?
JAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/m*
_output_shapes

:*
dtype0
?
:Adam/transformer_block/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/m
?
NAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/m*"
_output_shapes
:*
dtype0
?
8Adam/transformer_block/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/m
?
LAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/m*
_output_shapes

:*
dtype0
?
EAdam/transformer_block/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/m
?
YAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/m*"
_output_shapes
:*
dtype0
?
CAdam/transformer_block/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/m
?
WAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
2Adam/transformer_block/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/transformer_block/layer_normalization/gamma/m
?
FAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/m*
_output_shapes
:*
dtype0
?
1Adam/transformer_block/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/transformer_block/layer_normalization/beta/m
?
EAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/m*
_output_shapes
:*
dtype0
?
4Adam/transformer_block/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/m
?
HAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/m*
_output_shapes
:*
dtype0
?
3Adam/transformer_block/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/m
?
GAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:P*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:P*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:P*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
?
:Adam/token_and_position_embedding/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/v
?
NAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/v*
_output_shapes
:	?*
dtype0
?
:Adam/token_and_position_embedding/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*K
shared_name<:Adam/token_and_position_embedding/embedding_2/embeddings/v
?
NAdam/token_and_position_embedding/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_2/embeddings/v*
_output_shapes

:*
dtype0
?
:Adam/transformer_block/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/v
?
NAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/v*"
_output_shapes
:*
dtype0
?
8Adam/transformer_block/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/v
?
LAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/v*
_output_shapes

:*
dtype0
?
8Adam/transformer_block/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/v
?
LAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/v*"
_output_shapes
:*
dtype0
?
6Adam/transformer_block/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/v
?
JAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/v*
_output_shapes

:*
dtype0
?
:Adam/transformer_block/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/v
?
NAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/v*"
_output_shapes
:*
dtype0
?
8Adam/transformer_block/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/v
?
LAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/v*
_output_shapes

:*
dtype0
?
EAdam/transformer_block/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/v
?
YAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/v*"
_output_shapes
:*
dtype0
?
CAdam/transformer_block/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/v
?
WAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
?
2Adam/transformer_block/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/transformer_block/layer_normalization/gamma/v
?
FAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/v*
_output_shapes
:*
dtype0
?
1Adam/transformer_block/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/transformer_block/layer_normalization/beta/v
?
EAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/v*
_output_shapes
:*
dtype0
?
4Adam/transformer_block/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/v
?
HAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/v*
_output_shapes
:*
dtype0
?
3Adam/transformer_block/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/v
?
GAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ô
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
 
n
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
 	keras_api
h

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?
-iter

.beta_1

/beta_2
	0decay
1learning_rate!m?"m?'m?(m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?!v?"v?'v?(v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?
?
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
!18
"19
'20
(21
?
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
!18
"19
'20
(21
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
	trainable_variables

regularization_losses
 
b
2
embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
b
3
embeddings
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api

20
31

20
31
 
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
?
V_query_dense
W
_key_dense
X_value_dense
Y_softmax
Z_dropout_layer
[_output_dense
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?
`layer_with_weights-0
`layer-0
alayer_with_weights-1
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
q
faxis
	@gamma
Abeta
g	variables
htrainable_variables
iregularization_losses
j	keras_api
q
kaxis
	Bgamma
Cbeta
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
R
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
R
t	variables
utrainable_variables
vregularization_losses
w	keras_api
v
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
v
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
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
om
VARIABLE_VALUE3token_and_position_embedding/embedding_1/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3token_and_position_embedding/embedding_2/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block/multi_head_attention/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/transformer_block/multi_head_attention/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block/multi_head_attention/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer_block/multi_head_attention/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>transformer_block/multi_head_attention/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE<transformer_block/multi_head_attention/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+transformer_block/layer_normalization/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*transformer_block/layer_normalization/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-transformer_block/layer_normalization_1/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,transformer_block/layer_normalization_1/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
*
0
1
2
3
4
5
 
?0
?1
?2
?3
 
 

20

20
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses

30

30
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 

0
1
 
 
 
?
?partial_output_shape
?full_output_shape

4kernel
5bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

6kernel
7bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

8kernel
9bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

:kernel
;bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
8
40
51
62
73
84
95
:6
;7
8
40
51
62
73
84
95
:6
;7
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
l

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

<0
=1
>2
?3

<0
=1
>2
?3
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
 

@0
A1

@0
A1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
 

B0
C1

B0
C1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
 
*
0
1
2
3
4
5
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
?
?
init_shape
?true_positives
?false_positives
?false_negatives
?weights_intermediate
?	variables
?	keras_api
/
?conf_mtx
?	variables
?	keras_api
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

40
51

40
51
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

60
71

60
71
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

80
91

80
91
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

:0
;1

:0
;1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
*
V0
W1
X2
Y3
Z4
[5
 
 
 

<0
=1

<0
=1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

>0
?1

>0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

`0
a1
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
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEweights_intermediateCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
US
VARIABLE_VALUEconf_mtx7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUE

?0

?	variables
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
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_2/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_2/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_3/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_3/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_2/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_2/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_3/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_3/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13token_and_position_embedding/embedding_2/embeddings3token_and_position_embedding/embedding_1/embeddings3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/bias-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_34421
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpGtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpGtoken_and_position_embedding/embedding_2/embeddings/Read/ReadVariableOpGtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpEtransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpCtransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpGtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpRtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpPtransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp?transformer_block/layer_normalization/gamma/Read/ReadVariableOp>transformer_block/layer_normalization/beta/Read/ReadVariableOpAtransformer_block/layer_normalization_1/gamma/Read/ReadVariableOp@transformer_block/layer_normalization_1/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp(weights_intermediate/Read/ReadVariableOpconf_mtx/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_2/embeddings/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_2/embeddings/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpConst*]
TinV
T2R	*
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
__inference__traced_save_36291
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate3token_and_position_embedding/embedding_1/embeddings3token_and_position_embedding/embedding_2/embeddings3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/beta-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betatotalcounttotal_1count_1true_positivesfalse_positivesfalse_negativesweights_intermediateconf_mtxAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m:Adam/token_and_position_embedding/embedding_1/embeddings/m:Adam/token_and_position_embedding/embedding_2/embeddings/m:Adam/transformer_block/multi_head_attention/query/kernel/m8Adam/transformer_block/multi_head_attention/query/bias/m8Adam/transformer_block/multi_head_attention/key/kernel/m6Adam/transformer_block/multi_head_attention/key/bias/m:Adam/transformer_block/multi_head_attention/value/kernel/m8Adam/transformer_block/multi_head_attention/value/bias/mEAdam/transformer_block/multi_head_attention/attention_output/kernel/mCAdam/transformer_block/multi_head_attention/attention_output/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m2Adam/transformer_block/layer_normalization/gamma/m1Adam/transformer_block/layer_normalization/beta/m4Adam/transformer_block/layer_normalization_1/gamma/m3Adam/transformer_block/layer_normalization_1/beta/mAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v:Adam/token_and_position_embedding/embedding_1/embeddings/v:Adam/token_and_position_embedding/embedding_2/embeddings/v:Adam/transformer_block/multi_head_attention/query/kernel/v8Adam/transformer_block/multi_head_attention/query/bias/v8Adam/transformer_block/multi_head_attention/key/kernel/v6Adam/transformer_block/multi_head_attention/key/bias/v:Adam/transformer_block/multi_head_attention/value/kernel/v8Adam/transformer_block/multi_head_attention/value/bias/vEAdam/transformer_block/multi_head_attention/attention_output/kernel/vCAdam/transformer_block/multi_head_attention/attention_output/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v2Adam/transformer_block/layer_normalization/gamma/v1Adam/transformer_block/layer_normalization/beta/v4Adam/transformer_block/layer_normalization_1/gamma/v3Adam/transformer_block/layer_normalization_1/beta/v*\
TinU
S2Q*
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
!__inference__traced_restore_36541ݒ
?
@
cond_false_35834
cond_identity_squeeze	
cond_identity	S
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35481

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :g
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????U
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_33440
dense_2_input 
dense_2_33429:	?
dense_2_33431:	? 
dense_3_33434:	?
dense_3_33436:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_33429dense_2_33431*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_33285?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_33434dense_3_33436*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_33321{
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namedense_2_input
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_35501

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Pa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Pw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
T
8__inference_global_average_pooling1d_layer_call_fn_35469

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
6
__inference__safe_squeeze_35867
y	
identity	8
SqueezeSqueezey*
T0	*
_output_shapes
:?
RankRankSqueeze:output:0*
T0	*
_output_shapes
: C
xConst*
_output_shapes
: *
dtype0*
value	B : j
EqualEqualRank:output:0
x:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( ?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35855*
output_shapes
:*"
then_branchR
cond_true_35854K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namey
?
?
,__inference_sequential_1_layer_call_fn_35547

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_33388s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
<__inference_token_and_position_embedding_layer_call_fn_35094
x
unknown:
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
@confusion_matrix_remove_squeezable_dimensions_cond_1_false_35888S
Oconfusion_matrix_remove_squeezable_dimensions_cond_1_identity_partitionedcall_1	A
=confusion_matrix_remove_squeezable_dimensions_cond_1_identity	?
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentityOconfusion_matrix_remove_squeezable_dimensions_cond_1_identity_partitionedcall_1*
T0	*
_output_shapes
:"?
=confusion_matrix_remove_squeezable_dimensions_cond_1_identityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
?
B__inference_dense_3_layer_call_and_return_conditional_losses_33321

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_33686

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Pa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Pw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484
x4
"embedding_2_embedding_lookup_33471:5
"embedding_1_embedding_lookup_33477:	?
identity??embedding_1/embedding_lookup?embedding_2/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_33471range:output:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/33471*
_output_shapes

:*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/33471*
_output_shapes

:?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:\
embedding_1/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_33477embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/33477*+
_output_shapes
:?????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/33477*+
_output_shapes
:??????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
addAddV20embedding_1/embedding_lookup/Identity_1:output:00embedding_2/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^embedding_1/embedding_lookup^embedding_2/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2<
embedding_2/embedding_lookupembedding_2/embedding_lookup:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
%__inference_model_layer_call_fn_34224
input_1
unknown:
	unknown_0:	?
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:

unknown_15:

unknown_16:

unknown_17:P

unknown_18:P

unknown_19:P

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_34128o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
;
cond_false_35812
cond_cast_y_pred
cond_identity	d
	cond/CastCastcond_cast_y_pred*

DstT0	*

SrcT0*'
_output_shapes
:?????????Z
cond/IdentityIdentitycond/Cast:y:0*
T0	*'
_output_shapes
:?????????"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
??
?
+__inference__update_multi_class_model_36028

y_true

y_pred.
assignaddvariableop_resource:
identity??AssignAddVariableOp?ReadVariableOp?/confusion_matrix/assert_less/Assert/AssertGuard?1confusion_matrix/assert_less_1/Assert/AssertGuard?Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard?Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardR
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :a
ArgMaxArgMaxy_trueArgMax/dimension:output:0*
T0*#
_output_shapes
:??????????
PartitionedCallPartitionedCally_pred*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__cast_ypred_35825?
PartitionedCall_1PartitionedCallArgMax:output:0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__safe_squeeze_35846?
PartitionedCall_2PartitionedCallPartitionedCall:output:0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__safe_squeeze_35867w
2confusion_matrix/remove_squeezable_dimensions/RankRankPartitionedCall_2:output:0*
T0	*
_output_shapes
: y
4confusion_matrix/remove_squeezable_dimensions/Rank_1RankPartitionedCall_1:output:0*
T0	*
_output_shapes
: ?
1confusion_matrix/remove_squeezable_dimensions/subSub;confusion_matrix/remove_squeezable_dimensions/Rank:output:0=confusion_matrix/remove_squeezable_dimensions/Rank_1:output:0*
T0*
_output_shapes
: w
5confusion_matrix/remove_squeezable_dimensions/Equal/xConst*
_output_shapes
: *
dtype0*
value	B :?
3confusion_matrix/remove_squeezable_dimensions/EqualEqual>confusion_matrix/remove_squeezable_dimensions/Equal/x:output:05confusion_matrix/remove_squeezable_dimensions/sub:z:0*
T0*
_output_shapes
: ?
2confusion_matrix/remove_squeezable_dimensions/condStatelessIf7confusion_matrix/remove_squeezable_dimensions/Equal:z:0PartitionedCall_2:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *Q
else_branchBR@
>confusion_matrix_remove_squeezable_dimensions_cond_false_35875*
output_shapes
:*P
then_branchAR?
=confusion_matrix_remove_squeezable_dimensions_cond_true_35874?
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentity;confusion_matrix/remove_squeezable_dimensions/cond:output:0*
T0	*
_output_shapes
:?
7confusion_matrix/remove_squeezable_dimensions/Equal_1/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5confusion_matrix/remove_squeezable_dimensions/Equal_1Equal@confusion_matrix/remove_squeezable_dimensions/Equal_1/x:output:05confusion_matrix/remove_squeezable_dimensions/sub:z:0*
T0*
_output_shapes
: ?
4confusion_matrix/remove_squeezable_dimensions/cond_1StatelessIf9confusion_matrix/remove_squeezable_dimensions/Equal_1:z:0PartitionedCall_1:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *S
else_branchDRB
@confusion_matrix_remove_squeezable_dimensions_cond_1_false_35888*
output_shapes
:*R
then_branchCRA
?confusion_matrix_remove_squeezable_dimensions_cond_1_true_35887?
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentity=confusion_matrix/remove_squeezable_dimensions/cond_1:output:0*
T0	*
_output_shapes
:l
*confusion_matrix/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
@confusion_matrix/assert_non_negative/assert_less_equal/LessEqual	LessEqual3confusion_matrix/assert_non_negative/Const:output:0Fconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
T0	*
_output_shapes
:?
;confusion_matrix/assert_non_negative/assert_less_equal/RankRankDconfusion_matrix/assert_non_negative/assert_less_equal/LessEqual:z:0*
T0
*
_output_shapes
: ?
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : ?
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
<confusion_matrix/assert_non_negative/assert_less_equal/rangeRangeKconfusion_matrix/assert_non_negative/assert_less_equal/range/start:output:0Dconfusion_matrix/assert_non_negative/assert_less_equal/Rank:output:0Kconfusion_matrix/assert_non_negative/assert_less_equal/range/delta:output:0*#
_output_shapes
:??????????
:confusion_matrix/assert_non_negative/assert_less_equal/AllAllDconfusion_matrix/assert_non_negative/assert_less_equal/LessEqual:z:0Econfusion_matrix/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: ?
Cconfusion_matrix/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*5
value,B* B$`labels` contains negative values.  ?
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:?
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (confusion_matrix/remove_squeezable_dimensions/cond_1/Identity:0) = ?
Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardIfCconfusion_matrix/assert_non_negative/assert_less_equal/All:output:0Cconfusion_matrix/assert_non_negative/assert_less_equal/All:output:0Fconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *h
else_branchYRW
Uconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_35909*
output_shapes
: *g
then_branchXRV
Tconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_35908?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityRconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ?
#confusion_matrix/control_dependencyIdentityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0S^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0	*P
_classF
DBloc:@confusion_matrix/remove_squeezable_dimensions/cond_1/Identity*
_output_shapes
:n
,confusion_matrix/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
Bconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual5confusion_matrix/assert_non_negative_1/Const:output:0Dconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*
T0	*
_output_shapes
:?
=confusion_matrix/assert_non_negative_1/assert_less_equal/RankRankFconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual:z:0*
T0
*
_output_shapes
: ?
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : ?
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
>confusion_matrix/assert_non_negative_1/assert_less_equal/rangeRangeMconfusion_matrix/assert_non_negative_1/assert_less_equal/range/start:output:0Fconfusion_matrix/assert_non_negative_1/assert_less_equal/Rank:output:0Mconfusion_matrix/assert_non_negative_1/assert_less_equal/range/delta:output:0*#
_output_shapes
:??????????
<confusion_matrix/assert_non_negative_1/assert_less_equal/AllAllFconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual:z:0Gconfusion_matrix/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: ?
Econfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*:
value1B/ B)`predictions` contains negative values.  ?
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:?
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (confusion_matrix/remove_squeezable_dimensions/cond/Identity:0) = ?
Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardIfEconfusion_matrix/assert_non_negative_1/assert_less_equal/All:output:0Econfusion_matrix/assert_non_negative_1/assert_less_equal/All:output:0Dconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0J^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *j
else_branch[RY
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_false_35937*
output_shapes
: *i
then_branchZRX
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_true_35936?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentityTconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ?
%confusion_matrix/control_dependency_1IdentityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0U^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity*
T0	*N
_classD
B@loc:@confusion_matrix/remove_squeezable_dimensions/cond/Identity*
_output_shapes
:Y
confusion_matrix/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
confusion_matrix/CastCast confusion_matrix/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
!confusion_matrix/assert_less/LessLess,confusion_matrix/control_dependency:output:0confusion_matrix/Cast:y:0*
T0	*
_output_shapes
:q
!confusion_matrix/assert_less/RankRank%confusion_matrix/assert_less/Less:z:0*
T0
*
_output_shapes
: j
(confusion_matrix/assert_less/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(confusion_matrix/assert_less/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
"confusion_matrix/assert_less/rangeRange1confusion_matrix/assert_less/range/start:output:0*confusion_matrix/assert_less/Rank:output:01confusion_matrix/assert_less/range/delta:output:0*#
_output_shapes
:??????????
 confusion_matrix/assert_less/AllAll%confusion_matrix/assert_less/Less:z:0+confusion_matrix/assert_less/range:output:0*
_output_shapes
: 
)confusion_matrix/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*&
valueB B`labels` out of bound?
+confusion_matrix/assert_less/Assert/Const_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:?
+confusion_matrix/assert_less/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (confusion_matrix/control_dependency:0) = ?
+confusion_matrix/assert_less/Assert/Const_3Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = ?
/confusion_matrix/assert_less/Assert/AssertGuardIf)confusion_matrix/assert_less/All:output:0)confusion_matrix/assert_less/All:output:0,confusion_matrix/control_dependency:output:0confusion_matrix/Cast:y:0L^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *N
else_branch?R=
;confusion_matrix_assert_less_Assert_AssertGuard_false_35967*
output_shapes
: *M
then_branch>R<
:confusion_matrix_assert_less_Assert_AssertGuard_true_35966?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentity8confusion_matrix/assert_less/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ?
%confusion_matrix/control_dependency_2Identity,confusion_matrix/control_dependency:output:09^confusion_matrix/assert_less/Assert/AssertGuard/Identity*
T0	*P
_classF
DBloc:@confusion_matrix/remove_squeezable_dimensions/cond_1/Identity*
_output_shapes
:?
#confusion_matrix/assert_less_1/LessLess.confusion_matrix/control_dependency_1:output:0confusion_matrix/Cast:y:0*
T0	*
_output_shapes
:u
#confusion_matrix/assert_less_1/RankRank'confusion_matrix/assert_less_1/Less:z:0*
T0
*
_output_shapes
: l
*confusion_matrix/assert_less_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*confusion_matrix/assert_less_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$confusion_matrix/assert_less_1/rangeRange3confusion_matrix/assert_less_1/range/start:output:0,confusion_matrix/assert_less_1/Rank:output:03confusion_matrix/assert_less_1/range/delta:output:0*#
_output_shapes
:??????????
"confusion_matrix/assert_less_1/AllAll'confusion_matrix/assert_less_1/Less:z:0-confusion_matrix/assert_less_1/range:output:0*
_output_shapes
: ?
+confusion_matrix/assert_less_1/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  B`predictions` out of bound?
-confusion_matrix/assert_less_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:?
-confusion_matrix/assert_less_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (confusion_matrix/control_dependency_1:0) = ?
-confusion_matrix/assert_less_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = ?
1confusion_matrix/assert_less_1/Assert/AssertGuardIf+confusion_matrix/assert_less_1/All:output:0+confusion_matrix/assert_less_1/All:output:0.confusion_matrix/control_dependency_1:output:0confusion_matrix/Cast:y:00^confusion_matrix/assert_less/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *P
else_branchAR?
=confusion_matrix_assert_less_1_Assert_AssertGuard_false_35998*
output_shapes
: *O
then_branch@R>
<confusion_matrix_assert_less_1_Assert_AssertGuard_true_35997?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity:confusion_matrix/assert_less_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: ?
%confusion_matrix/control_dependency_3Identity.confusion_matrix/control_dependency_1:output:0;^confusion_matrix/assert_less_1/Assert/AssertGuard/Identity*
T0	*N
_classD
B@loc:@confusion_matrix/remove_squeezable_dimensions/cond/Identity*
_output_shapes
:g
confusion_matrix/stackConst*
_output_shapes
:*
dtype0*
valueB"      ?
confusion_matrix/stack_1Pack.confusion_matrix/control_dependency_2:output:0.confusion_matrix/control_dependency_3:output:0*
N*
T0	*
_output_shapes
:*

axis?
 confusion_matrix/ones_like/ShapeShape.confusion_matrix/control_dependency_3:output:0*
T0	*#
_output_shapes
:?????????e
 confusion_matrix/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
confusion_matrix/ones_likeFill)confusion_matrix/ones_like/Shape:output:0)confusion_matrix/ones_like/Const:output:0*
T0*
_output_shapes
:t
confusion_matrix/Cast_1Castconfusion_matrix/stack:output:0*

DstT0	*

SrcT0*
_output_shapes
:?
confusion_matrix/ScatterNd	ScatterNd!confusion_matrix/stack_1:output:0#confusion_matrix/ones_like:output:0confusion_matrix/Cast_1:y:0*
T0*
Tindices0	*
_output_shapes

:?
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resource#confusion_matrix/ScatterNd:output:0*
_output_shapes
 *
dtype0?
ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes

:*
dtype0\
IdentityIdentityReadVariableOp:value:0^NoOp*
T0*
_output_shapes

:?
NoOpNoOp^AssignAddVariableOp^ReadVariableOp0^confusion_matrix/assert_less/Assert/AssertGuard2^confusion_matrix/assert_less_1/Assert/AssertGuardJ^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardL^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????:?????????: 2*
AssignAddVariableOpAssignAddVariableOp2 
ReadVariableOpReadVariableOp2b
/confusion_matrix/assert_less/Assert/AssertGuard/confusion_matrix/assert_less/Assert/AssertGuard2f
1confusion_matrix/assert_less_1/Assert/AssertGuard1confusion_matrix/assert_less_1/Assert/AssertGuard2?
Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardIconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard2?
Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardKconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard:O K
'
_output_shapes
:?????????
 
_user_specified_namey_true:OK
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?
?
1__inference_transformer_block_layer_call_fn_35155

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
;
cond_false_35747
cond_cast_y_pred
cond_identity	d
	cond/CastCastcond_cast_y_pred*

DstT0	*

SrcT0*'
_output_shapes
:?????????Z
cond/IdentityIdentitycond/Cast:y:0*
T0	*'
_output_shapes
:?????????"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
#__inference_signature_wrapper_34421
input_1
unknown:
	unknown_0:	?
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:

unknown_15:

unknown_16:

unknown_17:P

unknown_18:P

unknown_19:P

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_33247o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_35118
x4
"embedding_2_embedding_lookup_35105:5
"embedding_1_embedding_lookup_35111:	?
identity??embedding_1/embedding_lookup?embedding_2/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_35105range:output:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/35105*
_output_shapes

:*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/35105*
_output_shapes

:?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:\
embedding_1/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_35111embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/35111*+
_output_shapes
:?????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/35111*+
_output_shapes
:??????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
addAddV20embedding_1/embedding_lookup/Identity_1:output:00embedding_2/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^embedding_1/embedding_lookup^embedding_2/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2<
embedding_2/embedding_lookupembedding_2/embedding_lookup:J F
'
_output_shapes
:?????????

_user_specified_namex
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33450

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
'__inference_dense_2_layer_call_fn_35670

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_33285t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
A
cond_true_35854
cond_expanddims_squeeze	
cond_identity	U
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : w
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:V
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
<
cond_true_35746
cond_argmax_y_pred
cond_identity	`
cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????w
cond/ArgMaxArgMaxcond_argmax_y_predcond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????]
cond/IdentityIdentitycond/ArgMax:output:0*
T0	*#
_output_shapes
:?????????"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
Uconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_35909?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_all
?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_1_identity	X
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
??Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*5
value,B* B$`labels` contains negative values.  ?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (confusion_matrix/remove_squeezable_dimensions/cond_1/Identity:0) = ?
Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_all`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_1_identity*
T
2	*
_output_shapes
 ?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_allQ^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: ?
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1Identity[confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0O^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
Nconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpQ^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1]confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :2?
Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertPconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
:
?

?
B__inference_dense_5_layer_call_and_return_conditional_losses_33703

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
1__inference_transformer_block_layer_call_fn_35192

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_3_layer_call_fn_35710

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_33321s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?#
@__inference_model_layer_call_and_return_conditional_losses_34789

inputsQ
?token_and_position_embedding_embedding_2_embedding_lookup_34530:R
?token_and_position_embedding_embedding_1_embedding_lookup_34536:	?h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource:f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource:h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource:s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource:Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:[
Htransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource:	?U
Ftransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource:	?[
Htransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource:	?T
Ftransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource:[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:P8
&dense_5_matmul_readvariableop_resource:P5
'dense_5_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?9token_and_position_embedding/embedding_1/embedding_lookup?9token_and_position_embedding/embedding_2/embedding_lookup?>transformer_block/layer_normalization/batchnorm/ReadVariableOp?Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp?@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp?Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp?@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp?Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp?Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp?Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp?Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp?Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp?Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp?Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp?=transformer_block/multi_head_attention/key/add/ReadVariableOp??transformer_block/multi_head_attention/key/add_1/ReadVariableOp?Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp??transformer_block/multi_head_attention/query/add/ReadVariableOp?Atransformer_block/multi_head_attention/query/add_1/ReadVariableOp?Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp??transformer_block/multi_head_attention/value/add/ReadVariableOp?Atransformer_block/multi_head_attention/value/add_1/ReadVariableOp?Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp?=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp??transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp??transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp?Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp?=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp??transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp??transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp?Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:?
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:?
9token_and_position_embedding/embedding_2/embedding_lookupResourceGather?token_and_position_embedding_embedding_2_embedding_lookup_34530+token_and_position_embedding/range:output:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_2/embedding_lookup/34530*
_output_shapes

:*
dtype0?
Btoken_and_position_embedding/embedding_2/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_2/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_2/embedding_lookup/34530*
_output_shapes

:?
Dtoken_and_position_embedding/embedding_2/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:~
-token_and_position_embedding/embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_345361token_and_position_embedding/embedding_1/Cast:y:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/34536*+
_output_shapes
:?????????*
dtype0?
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/34536*+
_output_shapes
:??????????
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
 token_and_position_embedding/addAddV2Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_2/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????q
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
7transformer_block/multi_head_attention/dropout/IdentityIdentity@transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/dropout/Identity:output:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
"transformer_block/dropout/IdentityIdentity?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:??????????
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0
5transformer_block/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
5transformer_block/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
6transformer_block/sequential_1/dense_2/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
>transformer_block/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot/GatherV2GatherV2?transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_2/Tensordot/free:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
@transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2?transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Itransformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
6transformer_block/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
5transformer_block/sequential_1/dense_2/Tensordot/ProdProdBtransformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0?transformer_block/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
8transformer_block/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_2/Tensordot/Prod_1ProdDtransformer_block/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Atransformer_block/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7transformer_block/sequential_1/dense_2/Tensordot/concatConcatV2>transformer_block/sequential_1/dense_2/Tensordot/free:output:0>transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Etransformer_block/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
6transformer_block/sequential_1/dense_2/Tensordot/stackPack>transformer_block/sequential_1/dense_2/Tensordot/Prod:output:0@transformer_block/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
:transformer_block/sequential_1/dense_2/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0@transformer_block/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
8transformer_block/sequential_1/dense_2/Tensordot/ReshapeReshape>transformer_block/sequential_1/dense_2/Tensordot/transpose:y:0?transformer_block/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
7transformer_block/sequential_1/dense_2/Tensordot/MatMulMatMulAtransformer_block/sequential_1/dense_2/Tensordot/Reshape:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8transformer_block/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
>transformer_block/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot/concat_1ConcatV2Btransformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0Atransformer_block/sequential_1/dense_2/Tensordot/Const_2:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
0transformer_block/sequential_1/dense_2/TensordotReshapeAtransformer_block/sequential_1/dense_2/Tensordot/MatMul:product:0Btransformer_block/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.transformer_block/sequential_1/dense_2/BiasAddBiasAdd9transformer_block/sequential_1/dense_2/Tensordot:output:0Etransformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
+transformer_block/sequential_1/dense_2/ReluRelu7transformer_block/sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0
5transformer_block/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
5transformer_block/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
6transformer_block/sequential_1/dense_3/Tensordot/ShapeShape9transformer_block/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:?
>transformer_block/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot/GatherV2GatherV2?transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_3/Tensordot/free:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
@transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2?transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Itransformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
6transformer_block/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
5transformer_block/sequential_1/dense_3/Tensordot/ProdProdBtransformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0?transformer_block/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
8transformer_block/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_3/Tensordot/Prod_1ProdDtransformer_block/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Atransformer_block/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7transformer_block/sequential_1/dense_3/Tensordot/concatConcatV2>transformer_block/sequential_1/dense_3/Tensordot/free:output:0>transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Etransformer_block/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
6transformer_block/sequential_1/dense_3/Tensordot/stackPack>transformer_block/sequential_1/dense_3/Tensordot/Prod:output:0@transformer_block/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
:transformer_block/sequential_1/dense_3/Tensordot/transpose	Transpose9transformer_block/sequential_1/dense_2/Relu:activations:0@transformer_block/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
8transformer_block/sequential_1/dense_3/Tensordot/ReshapeReshape>transformer_block/sequential_1/dense_3/Tensordot/transpose:y:0?transformer_block/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
7transformer_block/sequential_1/dense_3/Tensordot/MatMulMatMulAtransformer_block/sequential_1/dense_3/Tensordot/Reshape:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
8transformer_block/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
>transformer_block/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot/concat_1ConcatV2Btransformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0Atransformer_block/sequential_1/dense_3/Tensordot/Const_2:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
0transformer_block/sequential_1/dense_3/TensordotReshapeAtransformer_block/sequential_1/dense_3/Tensordot/MatMul:product:0Btransformer_block/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
.transformer_block/sequential_1/dense_3/BiasAddBiasAdd9transformer_block/sequential_1/dense_3/Tensordot:output:0Etransformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
$transformer_block/dropout_1/IdentityIdentity7transformer_block/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
<transformer_block/multi_head_attention/query/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Stransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Atransformer_block/multi_head_attention/query/add_1/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
2transformer_block/multi_head_attention/query/add_1AddV2Etransformer_block/multi_head_attention/query/einsum_1/Einsum:output:0Itransformer_block/multi_head_attention/query/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/key/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Qtransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/key/add_1/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/key/add_1AddV2Ctransformer_block/multi_head_attention/key/einsum_1/Einsum:output:0Gtransformer_block/multi_head_attention/key/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
<transformer_block/multi_head_attention/value/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Stransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Atransformer_block/multi_head_attention/value/add_1/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
2transformer_block/multi_head_attention/value/add_1AddV2Etransformer_block/multi_head_attention/value/einsum_1/Einsum:output:0Itransformer_block/multi_head_attention/value/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????s
.transformer_block/multi_head_attention/Mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
,transformer_block/multi_head_attention/Mul_1Mul6transformer_block/multi_head_attention/query/add_1:z:07transformer_block/multi_head_attention/Mul_1/y:output:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_2/EinsumEinsum4transformer_block/multi_head_attention/key/add_1:z:00transformer_block/multi_head_attention/Mul_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
8transformer_block/multi_head_attention/softmax/Softmax_1Softmax?transformer_block/multi_head_attention/einsum_2/Einsum:output:0*
T0*/
_output_shapes
:??????????
9transformer_block/multi_head_attention/dropout/Identity_1IdentityBtransformer_block/multi_head_attention/softmax/Softmax_1:softmax:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_3/EinsumEinsumBtransformer_block/multi_head_attention/dropout/Identity_1:output:06transformer_block/multi_head_attention/value/add_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Gtransformer_block/multi_head_attention/attention_output/einsum_1/EinsumEinsum?transformer_block/multi_head_attention/einsum_3/Einsum:output:0^transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
=transformer_block/multi_head_attention/attention_output/add_1AddV2Ptransformer_block/multi_head_attention/attention_output/einsum_1/Einsum:output:0Ttransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
$transformer_block/dropout/Identity_1IdentityAtransformer_block/multi_head_attention/attention_output/add_1:z:0*
T0*+
_output_shapes
:??????????
transformer_block/add_2AddV2;transformer_block/layer_normalization_1/batchnorm/add_1:z:0-transformer_block/dropout/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_block/layer_normalization/moments_1/meanMeantransformer_block/add_2:z:0Otransformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
<transformer_block/layer_normalization/moments_1/StopGradientStopGradient=transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Atransformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_2:z:0Etransformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Jtransformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block/layer_normalization/moments_1/varianceMeanEtransformer_block/layer_normalization/moments_1/SquaredDifference:z:0Stransformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(|
7transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
5transformer_block/layer_normalization/batchnorm_1/addAddV2Atransformer_block/layer_normalization/moments_1/variance:output:0@transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt9transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization/batchnorm_1/mulMul;transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Ltransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/mul_1Multransformer_block/add_2:z:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/mul_2Mul=transformer_block/layer_normalization/moments_1/mean:output:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization/batchnorm_1/subSubHtransformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0;transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/add_1AddV2;transformer_block/layer_normalization/batchnorm_1/mul_1:z:09transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:??????????
Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7transformer_block/sequential_1/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block/sequential_1/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
8transformer_block/sequential_1/dense_2/Tensordot_1/ShapeShape;transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:?
@transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2GatherV2Atransformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Btransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1GatherV2Atransformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Ktransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
8transformer_block/sequential_1/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_2/Tensordot_1/ProdProdDtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Atransformer_block/sequential_1/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
:transformer_block/sequential_1/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9transformer_block/sequential_1/dense_2/Tensordot_1/Prod_1ProdFtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1:output:0Ctransformer_block/sequential_1/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
>transformer_block/sequential_1/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot_1/concatConcatV2@transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Gtransformer_block/sequential_1/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
8transformer_block/sequential_1/dense_2/Tensordot_1/stackPack@transformer_block/sequential_1/dense_2/Tensordot_1/Prod:output:0Btransformer_block/sequential_1/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
<transformer_block/sequential_1/dense_2/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization/batchnorm_1/add_1:z:0Btransformer_block/sequential_1/dense_2/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:??????????
:transformer_block/sequential_1/dense_2/Tensordot_1/ReshapeReshape@transformer_block/sequential_1/dense_2/Tensordot_1/transpose:y:0Atransformer_block/sequential_1/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
9transformer_block/sequential_1/dense_2/Tensordot_1/MatMulMatMulCtransformer_block/sequential_1/dense_2/Tensordot_1/Reshape:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:transformer_block/sequential_1/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
@transformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot_1/concat_1ConcatV2Dtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Ctransformer_block/sequential_1/dense_2/Tensordot_1/Const_2:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
2transformer_block/sequential_1/dense_2/Tensordot_1ReshapeCtransformer_block/sequential_1/dense_2/Tensordot_1/MatMul:product:0Dtransformer_block/sequential_1/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:???????????
?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
0transformer_block/sequential_1/dense_2/BiasAdd_1BiasAdd;transformer_block/sequential_1/dense_2/Tensordot_1:output:0Gtransformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-transformer_block/sequential_1/dense_2/Relu_1Relu9transformer_block/sequential_1/dense_2/BiasAdd_1:output:0*
T0*,
_output_shapes
:???????????
Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7transformer_block/sequential_1/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block/sequential_1/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
8transformer_block/sequential_1/dense_3/Tensordot_1/ShapeShape;transformer_block/sequential_1/dense_2/Relu_1:activations:0*
T0*
_output_shapes
:?
@transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2GatherV2Atransformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Btransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1GatherV2Atransformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Ktransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
8transformer_block/sequential_1/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_3/Tensordot_1/ProdProdDtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Atransformer_block/sequential_1/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
:transformer_block/sequential_1/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9transformer_block/sequential_1/dense_3/Tensordot_1/Prod_1ProdFtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1:output:0Ctransformer_block/sequential_1/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
>transformer_block/sequential_1/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot_1/concatConcatV2@transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Gtransformer_block/sequential_1/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
8transformer_block/sequential_1/dense_3/Tensordot_1/stackPack@transformer_block/sequential_1/dense_3/Tensordot_1/Prod:output:0Btransformer_block/sequential_1/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
<transformer_block/sequential_1/dense_3/Tensordot_1/transpose	Transpose;transformer_block/sequential_1/dense_2/Relu_1:activations:0Btransformer_block/sequential_1/dense_3/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:???????????
:transformer_block/sequential_1/dense_3/Tensordot_1/ReshapeReshape@transformer_block/sequential_1/dense_3/Tensordot_1/transpose:y:0Atransformer_block/sequential_1/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
9transformer_block/sequential_1/dense_3/Tensordot_1/MatMulMatMulCtransformer_block/sequential_1/dense_3/Tensordot_1/Reshape:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
:transformer_block/sequential_1/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot_1/concat_1ConcatV2Dtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Ctransformer_block/sequential_1/dense_3/Tensordot_1/Const_2:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
2transformer_block/sequential_1/dense_3/Tensordot_1ReshapeCtransformer_block/sequential_1/dense_3/Tensordot_1/MatMul:product:0Dtransformer_block/sequential_1/dense_3/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:??????????
?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
0transformer_block/sequential_1/dense_3/BiasAdd_1BiasAdd;transformer_block/sequential_1/dense_3/Tensordot_1:output:0Gtransformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
&transformer_block/dropout_1/Identity_1Identity9transformer_block/sequential_1/dense_3/BiasAdd_1:output:0*
T0*+
_output_shapes
:??????????
transformer_block/add_3AddV2;transformer_block/layer_normalization/batchnorm_1/add_1:z:0/transformer_block/dropout_1/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Htransformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_block/layer_normalization_1/moments_1/meanMeantransformer_block/add_3:z:0Qtransformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
>transformer_block/layer_normalization_1/moments_1/StopGradientStopGradient?transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Ctransformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_3:z:0Gtransformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Ltransformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block/layer_normalization_1/moments_1/varianceMeanGtransformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0Utransformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(~
9transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
7transformer_block/layer_normalization_1/batchnorm_1/addAddV2Ctransformer_block/layer_normalization_1/moments_1/variance:output:0Btransformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrt;transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
7transformer_block/layer_normalization_1/batchnorm_1/mulMul=transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Ntransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/mul_1Multransformer_block/add_3:z:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/mul_2Mul?transformer_block/layer_normalization_1/moments_1/mean:output:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
7transformer_block/layer_normalization_1/batchnorm_1/subSubJtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0=transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2=transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0;transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:?????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean=transformer_block/layer_normalization_1/batchnorm_1/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
dense_4/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp:^token_and_position_embedding/embedding_1/embedding_lookup:^token_and_position_embedding/embedding_2/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization/batchnorm_1/ReadVariableOpE^transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpG^transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpM^transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpW^transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOp@^transformer_block/multi_head_attention/key/add_1/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpJ^transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpB^transformer_block/multi_head_attention/query/add_1/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpL^transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpB^transformer_block/multi_head_attention/value/add_1/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpL^transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp>^transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp@^transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp@^transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpB^transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp>^transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp@^transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp@^transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpB^transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2v
9token_and_position_embedding/embedding_2/embedding_lookup9token_and_position_embedding/embedding_2/embedding_lookup2?
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2?
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2?
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2?
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpDtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2?
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2?
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpBtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2?
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpFtransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2?
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2?
Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpLtransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp2?
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpVtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2?
?transformer_block/multi_head_attention/key/add_1/ReadVariableOp?transformer_block/multi_head_attention/key/add_1/ReadVariableOp2?
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpItransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp2?
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2?
Atransformer_block/multi_head_attention/query/add_1/ReadVariableOpAtransformer_block/multi_head_attention/query/add_1/ReadVariableOp2?
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpKtransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp2?
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2?
Atransformer_block/multi_head_attention/value/add_1/ReadVariableOpAtransformer_block/multi_head_attention/value/add_1/ReadVariableOp2?
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpKtransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp2~
=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp2?
?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp2?
?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp2?
Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpAtransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp2~
=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp2?
?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp2?
Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpAtransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
9
__inference__cast_ypred_35825

y_pred
identity	F
RankConst*
_output_shapes
: *
dtype0*
value	B :K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B :V
GreaterGreaterRank:output:0Greater/y:output:0*
T0*
_output_shapes
: ?
condStatelessIfGreater:z:0y_pred*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35812*
output_shapes
:*"
then_branchR
cond_true_35811K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?	
?
<confusion_matrix_assert_less_1_Assert_AssertGuard_true_35997a
]confusion_matrix_assert_less_1_assert_assertguard_identity_confusion_matrix_assert_less_1_all
A
=confusion_matrix_assert_less_1_assert_assertguard_placeholder	C
?confusion_matrix_assert_less_1_assert_assertguard_placeholder_1	@
<confusion_matrix_assert_less_1_assert_assertguard_identity_1
T
6confusion_matrix/assert_less_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity]confusion_matrix_assert_less_1_assert_assertguard_identity_confusion_matrix_assert_less_1_all7^confusion_matrix/assert_less_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1IdentityCconfusion_matrix/assert_less_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "?
<confusion_matrix_assert_less_1_assert_assertguard_identity_1Econfusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: : 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_33426
dense_2_input 
dense_2_33415:	?
dense_2_33417:	? 
dense_3_33420:	?
dense_3_33422:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_33415dense_2_33417*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_33285?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_33420dense_3_33422*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_33321{
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namedense_2_input
?+
?	
@__inference_model_layer_call_and_return_conditional_losses_34294
input_14
"token_and_position_embedding_34227:5
"token_and_position_embedding_34229:	?-
transformer_block_34232:)
transformer_block_34234:-
transformer_block_34236:)
transformer_block_34238:-
transformer_block_34240:)
transformer_block_34242:-
transformer_block_34244:%
transformer_block_34246:%
transformer_block_34248:%
transformer_block_34250:*
transformer_block_34252:	?&
transformer_block_34254:	?*
transformer_block_34256:	?%
transformer_block_34258:%
transformer_block_34260:%
transformer_block_34262:
dense_4_34283:P
dense_4_34285:P
dense_5_34288:P
dense_5_34290:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?4token_and_position_embedding/StatefulPartitionedCall?)transformer_block/StatefulPartitionedCall?+transformer_block/StatefulPartitionedCall_1?
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_34227"token_and_position_embedding_34229*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484?
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_34232transformer_block_34234transformer_block_34236transformer_block_34238transformer_block_34240transformer_block_34242transformer_block_34244transformer_block_34246transformer_block_34248transformer_block_34250transformer_block_34252transformer_block_34254transformer_block_34256transformer_block_34258transformer_block_34260transformer_block_34262*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617?
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_34232transformer_block_34234transformer_block_34236transformer_block_34238transformer_block_34240transformer_block_34242transformer_block_34244transformer_block_34246transformer_block_34248transformer_block_34250transformer_block_34252transformer_block_34254transformer_block_34256transformer_block_34258transformer_block_34260transformer_block_34262*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617?
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_34283dense_4_34285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_33686?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_34288dense_5_34290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_33703w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?>
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_35604

inputs<
)dense_2_tensordot_readvariableop_resource:	?6
'dense_2_biasadd_readvariableop_resource:	?<
)dense_3_tensordot_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp? dense_2/Tensordot/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp? dense_3/Tensordot/ReadVariableOp?
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/transpose	Transposeinputs!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????k
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
>confusion_matrix_remove_squeezable_dimensions_cond_false_35875Q
Mconfusion_matrix_remove_squeezable_dimensions_cond_identity_partitionedcall_2	?
;confusion_matrix_remove_squeezable_dimensions_cond_identity	?
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentityMconfusion_matrix_remove_squeezable_dimensions_cond_identity_partitionedcall_2*
T0	*
_output_shapes
:"?
;confusion_matrix_remove_squeezable_dimensions_cond_identityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
A
cond_true_35767
cond_expanddims_squeeze	
cond_identity	U
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : w
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:V
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
?
=confusion_matrix_assert_less_1_Assert_AssertGuard_false_35998_
[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_all
b
^confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_control_dependency_1	R
Nconfusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_cast	@
<confusion_matrix_assert_less_1_assert_assertguard_identity_1
??8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  B`predictions` out of bound?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (confusion_matrix/control_dependency_1:0) = ?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = ?
8confusion_matrix/assert_less_1/Assert/AssertGuard/AssertAssert[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_allHconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_0:output:0Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_1:output:0Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_2:output:0^confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_control_dependency_1Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_4:output:0Nconfusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_cast*
T

2		*
_output_shapes
 ?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_all9^confusion_matrix/assert_less_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: ?
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1IdentityCconfusion_matrix/assert_less_1/Assert/AssertGuard/Identity:output:07^confusion_matrix/assert_less_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
6confusion_matrix/assert_less_1/Assert/AssertGuard/NoOpNoOp9^confusion_matrix/assert_less_1/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
<confusion_matrix_assert_less_1_assert_assertguard_identity_1Econfusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: 2t
8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_33388

inputs 
dense_2_33377:	?
dense_2_33379:	? 
dense_3_33382:	?
dense_3_33384:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_33377dense_2_33379*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_33285?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_33382dense_3_33384*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_33321{
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
=confusion_matrix_remove_squeezable_dimensions_cond_true_35874P
Lconfusion_matrix_remove_squeezable_dimensions_cond_squeeze_partitionedcall_2	?
;confusion_matrix_remove_squeezable_dimensions_cond_identity	?
:confusion_matrix/remove_squeezable_dimensions/cond/SqueezeSqueezeLconfusion_matrix_remove_squeezable_dimensions_cond_squeeze_partitionedcall_2*
T0	*
_output_shapes
:*
squeeze_dims

??????????
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentityCconfusion_matrix/remove_squeezable_dimensions/cond/Squeeze:output:0*
T0	*
_output_shapes
:"?
;confusion_matrix_remove_squeezable_dimensions_cond_identityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
?
B__inference_dense_3_layer_call_and_return_conditional_losses_35740

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
6
__inference__safe_squeeze_35800
y	
identity	8
SqueezeSqueezey*
T0	*
_output_shapes
:?
RankRankSqueeze:output:0*
T0	*
_output_shapes
: C
xConst*
_output_shapes
: *
dtype0*
value	B : j
EqualEqualRank:output:0
x:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( ?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35788*
output_shapes
:*"
then_branchR
cond_true_35787K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namey
??
?#
@__inference_model_layer_call_and_return_conditional_losses_35085

inputsQ
?token_and_position_embedding_embedding_2_embedding_lookup_34800:R
?token_and_position_embedding_embedding_1_embedding_lookup_34806:	?h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource:f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource:h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource:s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource:Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:[
Htransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource:	?U
Ftransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource:	?[
Htransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource:	?T
Ftransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource:[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:P8
&dense_5_matmul_readvariableop_resource:P5
'dense_5_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?9token_and_position_embedding/embedding_1/embedding_lookup?9token_and_position_embedding/embedding_2/embedding_lookup?>transformer_block/layer_normalization/batchnorm/ReadVariableOp?Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp?@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp?Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp?@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp?Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp?Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp?Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp?Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp?Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp?Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp?Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp?=transformer_block/multi_head_attention/key/add/ReadVariableOp??transformer_block/multi_head_attention/key/add_1/ReadVariableOp?Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp??transformer_block/multi_head_attention/query/add/ReadVariableOp?Atransformer_block/multi_head_attention/query/add_1/ReadVariableOp?Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp??transformer_block/multi_head_attention/value/add/ReadVariableOp?Atransformer_block/multi_head_attention/value/add_1/ReadVariableOp?Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp?=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp??transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp??transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp?Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp?=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp??transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp??transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp?Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:?
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:?
9token_and_position_embedding/embedding_2/embedding_lookupResourceGather?token_and_position_embedding_embedding_2_embedding_lookup_34800+token_and_position_embedding/range:output:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_2/embedding_lookup/34800*
_output_shapes

:*
dtype0?
Btoken_and_position_embedding/embedding_2/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_2/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_2/embedding_lookup/34800*
_output_shapes

:?
Dtoken_and_position_embedding/embedding_2/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:~
-token_and_position_embedding/embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_348061token_and_position_embedding/embedding_1/Cast:y:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/34806*+
_output_shapes
:?????????*
dtype0?
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/34806*+
_output_shapes
:??????????
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
 token_and_position_embedding/addAddV2Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_2/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????q
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/softmax/Softmax:softmax:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????l
'transformer_block/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
%transformer_block/dropout/dropout/MulMul?transformer_block/multi_head_attention/attention_output/add:z:00transformer_block/dropout/dropout/Const:output:0*
T0*+
_output_shapes
:??????????
'transformer_block/dropout/dropout/ShapeShape?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
>transformer_block/dropout/dropout/random_uniform/RandomUniformRandomUniform0transformer_block/dropout/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0u
0transformer_block/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
.transformer_block/dropout/dropout/GreaterEqualGreaterEqualGtransformer_block/dropout/dropout/random_uniform/RandomUniform:output:09transformer_block/dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
&transformer_block/dropout/dropout/CastCast2transformer_block/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
'transformer_block/dropout/dropout/Mul_1Mul)transformer_block/dropout/dropout/Mul:z:0*transformer_block/dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0
5transformer_block/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
5transformer_block/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
6transformer_block/sequential_1/dense_2/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
>transformer_block/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot/GatherV2GatherV2?transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_2/Tensordot/free:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
@transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2?transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Itransformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
6transformer_block/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
5transformer_block/sequential_1/dense_2/Tensordot/ProdProdBtransformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0?transformer_block/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
8transformer_block/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_2/Tensordot/Prod_1ProdDtransformer_block/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Atransformer_block/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7transformer_block/sequential_1/dense_2/Tensordot/concatConcatV2>transformer_block/sequential_1/dense_2/Tensordot/free:output:0>transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Etransformer_block/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
6transformer_block/sequential_1/dense_2/Tensordot/stackPack>transformer_block/sequential_1/dense_2/Tensordot/Prod:output:0@transformer_block/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
:transformer_block/sequential_1/dense_2/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0@transformer_block/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
8transformer_block/sequential_1/dense_2/Tensordot/ReshapeReshape>transformer_block/sequential_1/dense_2/Tensordot/transpose:y:0?transformer_block/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
7transformer_block/sequential_1/dense_2/Tensordot/MatMulMatMulAtransformer_block/sequential_1/dense_2/Tensordot/Reshape:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8transformer_block/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
>transformer_block/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot/concat_1ConcatV2Btransformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0Atransformer_block/sequential_1/dense_2/Tensordot/Const_2:output:0Gtransformer_block/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
0transformer_block/sequential_1/dense_2/TensordotReshapeAtransformer_block/sequential_1/dense_2/Tensordot/MatMul:product:0Btransformer_block/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.transformer_block/sequential_1/dense_2/BiasAddBiasAdd9transformer_block/sequential_1/dense_2/Tensordot:output:0Etransformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
+transformer_block/sequential_1/dense_2/ReluRelu7transformer_block/sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0
5transformer_block/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
5transformer_block/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
6transformer_block/sequential_1/dense_3/Tensordot/ShapeShape9transformer_block/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:?
>transformer_block/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot/GatherV2GatherV2?transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_3/Tensordot/free:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
@transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2?transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0>transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Itransformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
6transformer_block/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
5transformer_block/sequential_1/dense_3/Tensordot/ProdProdBtransformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0?transformer_block/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
8transformer_block/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_3/Tensordot/Prod_1ProdDtransformer_block/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Atransformer_block/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7transformer_block/sequential_1/dense_3/Tensordot/concatConcatV2>transformer_block/sequential_1/dense_3/Tensordot/free:output:0>transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Etransformer_block/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
6transformer_block/sequential_1/dense_3/Tensordot/stackPack>transformer_block/sequential_1/dense_3/Tensordot/Prod:output:0@transformer_block/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
:transformer_block/sequential_1/dense_3/Tensordot/transpose	Transpose9transformer_block/sequential_1/dense_2/Relu:activations:0@transformer_block/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
8transformer_block/sequential_1/dense_3/Tensordot/ReshapeReshape>transformer_block/sequential_1/dense_3/Tensordot/transpose:y:0?transformer_block/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
7transformer_block/sequential_1/dense_3/Tensordot/MatMulMatMulAtransformer_block/sequential_1/dense_3/Tensordot/Reshape:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
8transformer_block/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
>transformer_block/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot/concat_1ConcatV2Btransformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0Atransformer_block/sequential_1/dense_3/Tensordot/Const_2:output:0Gtransformer_block/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
0transformer_block/sequential_1/dense_3/TensordotReshapeAtransformer_block/sequential_1/dense_3/Tensordot/MatMul:product:0Btransformer_block/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
.transformer_block/sequential_1/dense_3/BiasAddBiasAdd9transformer_block/sequential_1/dense_3/Tensordot:output:0Etransformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????n
)transformer_block/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
'transformer_block/dropout_1/dropout/MulMul7transformer_block/sequential_1/dense_3/BiasAdd:output:02transformer_block/dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:??????????
)transformer_block/dropout_1/dropout/ShapeShape7transformer_block/sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:?
@transformer_block/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0w
2transformer_block/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
0transformer_block/dropout_1/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_1/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
(transformer_block/dropout_1/dropout/CastCast4transformer_block/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
)transformer_block/dropout_1/dropout/Mul_1Mul+transformer_block/dropout_1/dropout/Mul:z:0,transformer_block/dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
<transformer_block/multi_head_attention/query/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Stransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Atransformer_block/multi_head_attention/query/add_1/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
2transformer_block/multi_head_attention/query/add_1AddV2Etransformer_block/multi_head_attention/query/einsum_1/Einsum:output:0Itransformer_block/multi_head_attention/query/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:transformer_block/multi_head_attention/key/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Qtransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
?transformer_block/multi_head_attention/key/add_1/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0transformer_block/multi_head_attention/key/add_1AddV2Ctransformer_block/multi_head_attention/key/einsum_1/Einsum:output:0Gtransformer_block/multi_head_attention/key/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
<transformer_block/multi_head_attention/value/einsum_1/EinsumEinsum;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Stransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Atransformer_block/multi_head_attention/value/add_1/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
2transformer_block/multi_head_attention/value/add_1AddV2Etransformer_block/multi_head_attention/value/einsum_1/Einsum:output:0Itransformer_block/multi_head_attention/value/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????s
.transformer_block/multi_head_attention/Mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
,transformer_block/multi_head_attention/Mul_1Mul6transformer_block/multi_head_attention/query/add_1:z:07transformer_block/multi_head_attention/Mul_1/y:output:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_2/EinsumEinsum4transformer_block/multi_head_attention/key/add_1:z:00transformer_block/multi_head_attention/Mul_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
8transformer_block/multi_head_attention/softmax/Softmax_1Softmax?transformer_block/multi_head_attention/einsum_2/Einsum:output:0*
T0*/
_output_shapes
:??????????
6transformer_block/multi_head_attention/einsum_3/EinsumEinsumBtransformer_block/multi_head_attention/softmax/Softmax_1:softmax:06transformer_block/multi_head_attention/value/add_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Gtransformer_block/multi_head_attention/attention_output/einsum_1/EinsumEinsum?transformer_block/multi_head_attention/einsum_3/Einsum:output:0^transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
=transformer_block/multi_head_attention/attention_output/add_1AddV2Ptransformer_block/multi_head_attention/attention_output/einsum_1/Einsum:output:0Ttransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????n
)transformer_block/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
'transformer_block/dropout/dropout_1/MulMulAtransformer_block/multi_head_attention/attention_output/add_1:z:02transformer_block/dropout/dropout_1/Const:output:0*
T0*+
_output_shapes
:??????????
)transformer_block/dropout/dropout_1/ShapeShapeAtransformer_block/multi_head_attention/attention_output/add_1:z:0*
T0*
_output_shapes
:?
@transformer_block/dropout/dropout_1/random_uniform/RandomUniformRandomUniform2transformer_block/dropout/dropout_1/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0w
2transformer_block/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
0transformer_block/dropout/dropout_1/GreaterEqualGreaterEqualItransformer_block/dropout/dropout_1/random_uniform/RandomUniform:output:0;transformer_block/dropout/dropout_1/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
(transformer_block/dropout/dropout_1/CastCast4transformer_block/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
)transformer_block/dropout/dropout_1/Mul_1Mul+transformer_block/dropout/dropout_1/Mul:z:0,transformer_block/dropout/dropout_1/Cast:y:0*
T0*+
_output_shapes
:??????????
transformer_block/add_2AddV2;transformer_block/layer_normalization_1/batchnorm/add_1:z:0-transformer_block/dropout/dropout_1/Mul_1:z:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
4transformer_block/layer_normalization/moments_1/meanMeantransformer_block/add_2:z:0Otransformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
<transformer_block/layer_normalization/moments_1/StopGradientStopGradient=transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Atransformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_2:z:0Etransformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Jtransformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8transformer_block/layer_normalization/moments_1/varianceMeanEtransformer_block/layer_normalization/moments_1/SquaredDifference:z:0Stransformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(|
7transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
5transformer_block/layer_normalization/batchnorm_1/addAddV2Atransformer_block/layer_normalization/moments_1/variance:output:0@transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt9transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization/batchnorm_1/mulMul;transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Ltransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/mul_1Multransformer_block/add_2:z:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/mul_2Mul=transformer_block/layer_normalization/moments_1/mean:output:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
5transformer_block/layer_normalization/batchnorm_1/subSubHtransformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0;transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
7transformer_block/layer_normalization/batchnorm_1/add_1AddV2;transformer_block/layer_normalization/batchnorm_1/mul_1:z:09transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:??????????
Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7transformer_block/sequential_1/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block/sequential_1/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
8transformer_block/sequential_1/dense_2/Tensordot_1/ShapeShape;transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:?
@transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2GatherV2Atransformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Btransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1GatherV2Atransformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Ktransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
8transformer_block/sequential_1/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_2/Tensordot_1/ProdProdDtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Atransformer_block/sequential_1/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
:transformer_block/sequential_1/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9transformer_block/sequential_1/dense_2/Tensordot_1/Prod_1ProdFtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1:output:0Ctransformer_block/sequential_1/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
>transformer_block/sequential_1/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_2/Tensordot_1/concatConcatV2@transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0@transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Gtransformer_block/sequential_1/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
8transformer_block/sequential_1/dense_2/Tensordot_1/stackPack@transformer_block/sequential_1/dense_2/Tensordot_1/Prod:output:0Btransformer_block/sequential_1/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
<transformer_block/sequential_1/dense_2/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization/batchnorm_1/add_1:z:0Btransformer_block/sequential_1/dense_2/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:??????????
:transformer_block/sequential_1/dense_2/Tensordot_1/ReshapeReshape@transformer_block/sequential_1/dense_2/Tensordot_1/transpose:y:0Atransformer_block/sequential_1/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
9transformer_block/sequential_1/dense_2/Tensordot_1/MatMulMatMulCtransformer_block/sequential_1/dense_2/Tensordot_1/Reshape:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:transformer_block/sequential_1/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
@transformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_2/Tensordot_1/concat_1ConcatV2Dtransformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Ctransformer_block/sequential_1/dense_2/Tensordot_1/Const_2:output:0Itransformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
2transformer_block/sequential_1/dense_2/Tensordot_1ReshapeCtransformer_block/sequential_1/dense_2/Tensordot_1/MatMul:product:0Dtransformer_block/sequential_1/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:???????????
?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
0transformer_block/sequential_1/dense_2/BiasAdd_1BiasAdd;transformer_block/sequential_1/dense_2/Tensordot_1:output:0Gtransformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-transformer_block/sequential_1/dense_2/Relu_1Relu9transformer_block/sequential_1/dense_2/BiasAdd_1:output:0*
T0*,
_output_shapes
:???????????
Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpReadVariableOpHtransformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7transformer_block/sequential_1/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
7transformer_block/sequential_1/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
8transformer_block/sequential_1/dense_3/Tensordot_1/ShapeShape;transformer_block/sequential_1/dense_2/Relu_1:activations:0*
T0*
_output_shapes
:?
@transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2GatherV2Atransformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Btransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1GatherV2Atransformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Ktransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
8transformer_block/sequential_1/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
7transformer_block/sequential_1/dense_3/Tensordot_1/ProdProdDtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Atransformer_block/sequential_1/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
:transformer_block/sequential_1/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9transformer_block/sequential_1/dense_3/Tensordot_1/Prod_1ProdFtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1:output:0Ctransformer_block/sequential_1/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
>transformer_block/sequential_1/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9transformer_block/sequential_1/dense_3/Tensordot_1/concatConcatV2@transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0@transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Gtransformer_block/sequential_1/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
8transformer_block/sequential_1/dense_3/Tensordot_1/stackPack@transformer_block/sequential_1/dense_3/Tensordot_1/Prod:output:0Btransformer_block/sequential_1/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
<transformer_block/sequential_1/dense_3/Tensordot_1/transpose	Transpose;transformer_block/sequential_1/dense_2/Relu_1:activations:0Btransformer_block/sequential_1/dense_3/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:???????????
:transformer_block/sequential_1/dense_3/Tensordot_1/ReshapeReshape@transformer_block/sequential_1/dense_3/Tensordot_1/transpose:y:0Atransformer_block/sequential_1/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
9transformer_block/sequential_1/dense_3/Tensordot_1/MatMulMatMulCtransformer_block/sequential_1/dense_3/Tensordot_1/Reshape:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
:transformer_block/sequential_1/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
@transformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
;transformer_block/sequential_1/dense_3/Tensordot_1/concat_1ConcatV2Dtransformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Ctransformer_block/sequential_1/dense_3/Tensordot_1/Const_2:output:0Itransformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
2transformer_block/sequential_1/dense_3/Tensordot_1ReshapeCtransformer_block/sequential_1/dense_3/Tensordot_1/MatMul:product:0Dtransformer_block/sequential_1/dense_3/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:??????????
?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
0transformer_block/sequential_1/dense_3/BiasAdd_1BiasAdd;transformer_block/sequential_1/dense_3/Tensordot_1:output:0Gtransformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????p
+transformer_block/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
)transformer_block/dropout_1/dropout_1/MulMul9transformer_block/sequential_1/dense_3/BiasAdd_1:output:04transformer_block/dropout_1/dropout_1/Const:output:0*
T0*+
_output_shapes
:??????????
+transformer_block/dropout_1/dropout_1/ShapeShape9transformer_block/sequential_1/dense_3/BiasAdd_1:output:0*
T0*
_output_shapes
:?
Btransformer_block/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform4transformer_block/dropout_1/dropout_1/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0y
4transformer_block/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
2transformer_block/dropout_1/dropout_1/GreaterEqualGreaterEqualKtransformer_block/dropout_1/dropout_1/random_uniform/RandomUniform:output:0=transformer_block/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
*transformer_block/dropout_1/dropout_1/CastCast6transformer_block/dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
+transformer_block/dropout_1/dropout_1/Mul_1Mul-transformer_block/dropout_1/dropout_1/Mul:z:0.transformer_block/dropout_1/dropout_1/Cast:y:0*
T0*+
_output_shapes
:??????????
transformer_block/add_3AddV2;transformer_block/layer_normalization/batchnorm_1/add_1:z:0/transformer_block/dropout_1/dropout_1/Mul_1:z:0*
T0*+
_output_shapes
:??????????
Htransformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6transformer_block/layer_normalization_1/moments_1/meanMeantransformer_block/add_3:z:0Qtransformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
>transformer_block/layer_normalization_1/moments_1/StopGradientStopGradient?transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Ctransformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_3:z:0Gtransformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Ltransformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:transformer_block/layer_normalization_1/moments_1/varianceMeanGtransformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0Utransformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(~
9transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
7transformer_block/layer_normalization_1/batchnorm_1/addAddV2Ctransformer_block/layer_normalization_1/moments_1/variance:output:0Btransformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrt;transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
7transformer_block/layer_normalization_1/batchnorm_1/mulMul=transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Ntransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/mul_1Multransformer_block/add_3:z:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/mul_2Mul?transformer_block/layer_normalization_1/moments_1/mean:output:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
7transformer_block/layer_normalization_1/batchnorm_1/subSubJtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0=transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
9transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2=transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0;transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:?????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean=transformer_block/layer_normalization_1/batchnorm_1/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
dense_4/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp:^token_and_position_embedding/embedding_1/embedding_lookup:^token_and_position_embedding/embedding_2/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization/batchnorm_1/ReadVariableOpE^transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpG^transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpM^transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpW^transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOp@^transformer_block/multi_head_attention/key/add_1/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpJ^transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpB^transformer_block/multi_head_attention/query/add_1/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpL^transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpB^transformer_block/multi_head_attention/value/add_1/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpL^transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp>^transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp@^transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp@^transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpB^transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp>^transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp@^transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp@^transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpB^transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2v
9token_and_position_embedding/embedding_2/embedding_lookup9token_and_position_embedding/embedding_2/embedding_lookup2?
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2?
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2?
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2?
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpDtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2?
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2?
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpBtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2?
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpFtransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2?
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2?
Ltransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpLtransformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp2?
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Vtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpVtransformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2?
?transformer_block/multi_head_attention/key/add_1/ReadVariableOp?transformer_block/multi_head_attention/key/add_1/ReadVariableOp2?
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Itransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpItransformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp2?
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2?
Atransformer_block/multi_head_attention/query/add_1/ReadVariableOpAtransformer_block/multi_head_attention/query/add_1/ReadVariableOp2?
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Ktransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpKtransformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp2?
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2?
Atransformer_block/multi_head_attention/value/add_1/ReadVariableOpAtransformer_block/multi_head_attention/value/add_1/ReadVariableOp2?
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Ktransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpKtransformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp2~
=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp=transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp2?
?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp?transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp2?
?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp?transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp2?
Atransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpAtransformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp2~
=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp=transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp?transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp2?
?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp?transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp2?
Atransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpAtransformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35475

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
?
%__inference_model_layer_call_fn_34519

inputs
unknown:
	unknown_0:	?
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:

unknown_15:

unknown_16:

unknown_17:P

unknown_18:P

unknown_19:P

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_34128o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
T
8__inference_global_average_pooling1d_layer_call_fn_35464

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
GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33450i
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
?
?
,__inference_sequential_1_layer_call_fn_33339
dense_2_input
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_33328s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namedense_2_input
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :g
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????U
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
@
cond_false_35855
cond_identity_squeeze	
cond_identity	S
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?+
?	
@__inference_model_layer_call_and_return_conditional_losses_33710

inputs4
"token_and_position_embedding_33485:5
"token_and_position_embedding_33487:	?-
transformer_block_33618:)
transformer_block_33620:-
transformer_block_33622:)
transformer_block_33624:-
transformer_block_33626:)
transformer_block_33628:-
transformer_block_33630:%
transformer_block_33632:%
transformer_block_33634:%
transformer_block_33636:*
transformer_block_33638:	?&
transformer_block_33640:	?*
transformer_block_33642:	?%
transformer_block_33644:%
transformer_block_33646:%
transformer_block_33648:
dense_4_33687:P
dense_4_33689:P
dense_5_33704:P
dense_5_33706:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?4token_and_position_embedding/StatefulPartitionedCall?)transformer_block/StatefulPartitionedCall?+transformer_block/StatefulPartitionedCall_1?
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_33485"token_and_position_embedding_33487*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484?
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_33618transformer_block_33620transformer_block_33622transformer_block_33624transformer_block_33626transformer_block_33628transformer_block_33630transformer_block_33632transformer_block_33634transformer_block_33636transformer_block_33638transformer_block_33640transformer_block_33642transformer_block_33644transformer_block_33646transformer_block_33648*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617?
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_33618transformer_block_33620transformer_block_33622transformer_block_33624transformer_block_33626transformer_block_33628transformer_block_33630transformer_block_33632transformer_block_33634transformer_block_33636transformer_block_33638transformer_block_33640transformer_block_33642transformer_block_33644transformer_block_33646transformer_block_33648*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617?
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_33687dense_4_33689*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_33686?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_33704dense_5_33706*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_33703w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Tconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_35908?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_assert_less_equal_all
Y
Uconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	X
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
l
Nconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_assert_less_equal_allO^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1Identity[confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "?
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1]confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :: 

_output_shapes
: :

_output_shapes
:
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_35701

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_4_layer_call_fn_35490

inputs
unknown:P
	unknown_0:P
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_33686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
<
cond_true_35811
cond_argmax_y_pred
cond_identity	`
cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????w
cond/ArgMaxArgMaxcond_argmax_y_predcond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????]
cond/IdentityIdentitycond/ArgMax:output:0*
T0	*#
_output_shapes
:?????????"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
??
?+
__inference__traced_save_36291
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_2_embeddings_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopN
Jsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableop]
Ysavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableop[
Wsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableopJ
Fsavev2_transformer_block_layer_normalization_gamma_read_readvariableopI
Esavev2_transformer_block_layer_normalization_beta_read_readvariableopL
Hsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop3
/savev2_weights_intermediate_read_readvariableop'
#savev2_conf_mtx_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_2_embeddings_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_2_embeddings_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableop
savev2_const

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
: ?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*?&
value?&B?&QB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*?
value?B?QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopNsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopNsavev2_token_and_position_embedding_embedding_2_embeddings_read_readvariableopNsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopLsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopJsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopNsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableopYsavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableopWsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableopFsavev2_transformer_block_layer_normalization_gamma_read_readvariableopEsavev2_transformer_block_layer_normalization_beta_read_readvariableopHsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopGsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop/savev2_weights_intermediate_read_readvariableop#savev2_conf_mtx_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_2_embeddings_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_2_embeddings_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *_
dtypesU
S2Q	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :P:P:P:: : : : : :	?::::::::::	?:?:	?:::::: : : : ::::::P:P:P::	?::::::::::	?:?:	?::::::P:P:P::	?::::::::::	?:?:	?:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:P: 

_output_shapes
::
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
: :%
!

_output_shapes
:	?:$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :  

_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
::$$ 

_output_shapes

::$% 

_output_shapes

:P: &

_output_shapes
:P:$' 

_output_shapes

:P: (

_output_shapes
::%)!

_output_shapes
:	?:$* 

_output_shapes

::(+$
"
_output_shapes
::$, 

_output_shapes

::(-$
"
_output_shapes
::$. 

_output_shapes

::(/$
"
_output_shapes
::$0 

_output_shapes

::(1$
"
_output_shapes
:: 2

_output_shapes
::%3!

_output_shapes
:	?:!4

_output_shapes	
:?:%5!

_output_shapes
:	?: 6

_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
:: :

_output_shapes
::$; 

_output_shapes

:P: <

_output_shapes
:P:$= 

_output_shapes

:P: >

_output_shapes
::%?!

_output_shapes
:	?:$@ 

_output_shapes

::(A$
"
_output_shapes
::$B 

_output_shapes

::(C$
"
_output_shapes
::$D 

_output_shapes

::(E$
"
_output_shapes
::$F 

_output_shapes

::(G$
"
_output_shapes
:: H

_output_shapes
::%I!

_output_shapes
:	?:!J

_output_shapes	
:?:%K!

_output_shapes
:	?: L

_output_shapes
:: M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
:: P

_output_shapes
::Q

_output_shapes
: 
?
?
,__inference_sequential_1_layer_call_fn_35534

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_33328s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_33285

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:I
6sequential_1_dense_2_tensordot_readvariableop_resource:	?C
4sequential_1_dense_2_biasadd_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:
identity??,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_2/BiasAdd/ReadVariableOp?-sequential_1/dense_2/Tensordot/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:?????????r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_2/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_2/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_1/dropout/MulMul%sequential_1/dense_3/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:?????????l
dropout_1/dropout/ShapeShape%sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
9
__inference__cast_ypred_35760

y_pred
identity	F
RankConst*
_output_shapes
: *
dtype0*
value	B :K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B :V
GreaterGreaterRank:output:0Greater/y:output:0*
T0*
_output_shapes
: ?
condStatelessIfGreater:z:0y_pred*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35747*
output_shapes
:*"
then_branchR
cond_true_35746K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?
?
,__inference_sequential_1_layer_call_fn_33412
dense_2_input
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_33388s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namedense_2_input
?>
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_35661

inputs<
)dense_2_tensordot_readvariableop_resource:	?6
'dense_2_biasadd_readvariableop_resource:	?<
)dense_3_tensordot_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp? dense_2/Tensordot/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp? dense_3/Tensordot/ReadVariableOp?
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/transpose	Transposeinputs!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????k
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_transformer_block_layer_call_and_return_conditional_losses_35459

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:I
6sequential_1_dense_2_tensordot_readvariableop_resource:	?C
4sequential_1_dense_2_biasadd_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:
identity??,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_2/BiasAdd/ReadVariableOp?-sequential_1/dense_2/Tensordot/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:?????????r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_2/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_2/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_1/dropout/MulMul%sequential_1/dense_3/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:?????????l
dropout_1/dropout/ShapeShape%sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
@
cond_false_35788
cond_identity_squeeze	
cond_identity	S
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?

?
B__inference_dense_5_layer_call_and_return_conditional_losses_35521

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
??
?
L__inference_transformer_block_layer_call_and_return_conditional_losses_35319

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:I
6sequential_1_dense_2_tensordot_readvariableop_resource:	?C
4sequential_1_dense_2_biasadd_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:
identity??,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_2/BiasAdd/ReadVariableOp?-sequential_1/dense_2/Tensordot/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:?????????e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:?????????|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_2/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_2/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????{
dropout_1/IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:?????????~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_5_layer_call_fn_35510

inputs
unknown:P
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_33703o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
;confusion_matrix_assert_less_Assert_AssertGuard_false_35967[
Wconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_all
^
Zconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_control_dependency	P
Lconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_cast	>
:confusion_matrix_assert_less_assert_assertguard_identity_1
??6confusion_matrix/assert_less/Assert/AssertGuard/Assert?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*&
valueB B`labels` out of bound?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (confusion_matrix/control_dependency:0) = ?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = ?
6confusion_matrix/assert_less/Assert/AssertGuard/AssertAssertWconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_allFconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_0:output:0Fconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_1:output:0Fconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_2:output:0Zconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_control_dependencyFconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_4:output:0Lconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_cast*
T

2		*
_output_shapes
 ?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentityWconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_all7^confusion_matrix/assert_less/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: ?
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1IdentityAconfusion_matrix/assert_less/Assert/AssertGuard/Identity:output:05^confusion_matrix/assert_less/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
4confusion_matrix/assert_less/Assert/AssertGuard/NoOpNoOp7^confusion_matrix/assert_less/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
:confusion_matrix_assert_less_assert_assertguard_identity_1Cconfusion_matrix/assert_less/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: 2p
6confusion_matrix/assert_less/Assert/AssertGuard/Assert6confusion_matrix/assert_less/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
6
__inference__safe_squeeze_35846
y	
identity	8
SqueezeSqueezey*
T0	*
_output_shapes
:?
RankRankSqueeze:output:0*
T0	*
_output_shapes
: C
xConst*
_output_shapes
: *
dtype0*
value	B : j
EqualEqualRank:output:0
x:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( ?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35834*
output_shapes
:*"
then_branchR
cond_true_35833K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:?????????:F B
#
_output_shapes
:?????????

_user_specified_namey
?	
?
:confusion_matrix_assert_less_Assert_AssertGuard_true_35966]
Yconfusion_matrix_assert_less_assert_assertguard_identity_confusion_matrix_assert_less_all
?
;confusion_matrix_assert_less_assert_assertguard_placeholder	A
=confusion_matrix_assert_less_assert_assertguard_placeholder_1	>
:confusion_matrix_assert_less_assert_assertguard_identity_1
R
4confusion_matrix/assert_less/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentityYconfusion_matrix_assert_less_assert_assertguard_identity_confusion_matrix_assert_less_all5^confusion_matrix/assert_less/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1IdentityAconfusion_matrix/assert_less/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "?
:confusion_matrix_assert_less_assert_assertguard_identity_1Cconfusion_matrix/assert_less/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: : 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
?
?confusion_matrix_remove_squeezable_dimensions_cond_1_true_35887R
Nconfusion_matrix_remove_squeezable_dimensions_cond_1_squeeze_partitionedcall_1	A
=confusion_matrix_remove_squeezable_dimensions_cond_1_identity	?
<confusion_matrix/remove_squeezable_dimensions/cond_1/SqueezeSqueezeNconfusion_matrix_remove_squeezable_dimensions_cond_1_squeeze_partitionedcall_1*
T0	*
_output_shapes
:*
squeeze_dims

??????????
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentityEconfusion_matrix/remove_squeezable_dimensions/cond_1/Squeeze:output:0*
T0	*
_output_shapes
:"?
=confusion_matrix_remove_squeezable_dimensions_cond_1_identityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
??
?
L__inference_transformer_block_layer_call_and_return_conditional_losses_33617

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:H
6multi_head_attention_query_add_readvariableop_resource:T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:F
4multi_head_attention_key_add_readvariableop_resource:V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:H
6multi_head_attention_value_add_readvariableop_resource:a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:O
Amulti_head_attention_attention_output_add_readvariableop_resource:G
9layer_normalization_batchnorm_mul_readvariableop_resource:C
5layer_normalization_batchnorm_readvariableop_resource:I
6sequential_1_dense_2_tensordot_readvariableop_resource:	?C
4sequential_1_dense_2_biasadd_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:E
7layer_normalization_1_batchnorm_readvariableop_resource:
identity??,layer_normalization/batchnorm/ReadVariableOp?0layer_normalization/batchnorm/mul/ReadVariableOp?.layer_normalization_1/batchnorm/ReadVariableOp?2layer_normalization_1/batchnorm/mul/ReadVariableOp?8multi_head_attention/attention_output/add/ReadVariableOp?Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp?+multi_head_attention/key/add/ReadVariableOp?5multi_head_attention/key/einsum/Einsum/ReadVariableOp?-multi_head_attention/query/add/ReadVariableOp?7multi_head_attention/query/einsum/Einsum/ReadVariableOp?-multi_head_attention/value/add/ReadVariableOp?7multi_head_attention/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_2/BiasAdd/ReadVariableOp?-sequential_1/dense_2/Tensordot/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:?????????e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:?????????|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_2/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_2/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????{
dropout_1/IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:?????????~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2?
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?	
@__inference_model_layer_call_and_return_conditional_losses_34128

inputs4
"token_and_position_embedding_34061:5
"token_and_position_embedding_34063:	?-
transformer_block_34066:)
transformer_block_34068:-
transformer_block_34070:)
transformer_block_34072:-
transformer_block_34074:)
transformer_block_34076:-
transformer_block_34078:%
transformer_block_34080:%
transformer_block_34082:%
transformer_block_34084:*
transformer_block_34086:	?&
transformer_block_34088:	?*
transformer_block_34090:	?%
transformer_block_34092:%
transformer_block_34094:%
transformer_block_34096:
dense_4_34117:P
dense_4_34119:P
dense_5_34122:P
dense_5_34124:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?4token_and_position_embedding/StatefulPartitionedCall?)transformer_block/StatefulPartitionedCall?+transformer_block/StatefulPartitionedCall_1?
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_34061"token_and_position_embedding_34063*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484?
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_34066transformer_block_34068transformer_block_34070transformer_block_34072transformer_block_34074transformer_block_34076transformer_block_34078transformer_block_34080transformer_block_34082transformer_block_34084transformer_block_34086transformer_block_34088transformer_block_34090transformer_block_34092transformer_block_34094transformer_block_34096*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962?
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_34066transformer_block_34068transformer_block_34070transformer_block_34072transformer_block_34074transformer_block_34076transformer_block_34078transformer_block_34080transformer_block_34082transformer_block_34084transformer_block_34086transformer_block_34088transformer_block_34090transformer_block_34092transformer_block_34094transformer_block_34096*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962?
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_34117dense_4_34119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_33686?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_34122dense_5_34124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_33703w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?<
!__inference__traced_restore_36541
file_prefix1
assignvariableop_dense_4_kernel:P-
assignvariableop_1_dense_4_bias:P3
!assignvariableop_2_dense_5_kernel:P-
assignvariableop_3_dense_5_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: Y
Fassignvariableop_9_token_and_position_embedding_embedding_1_embeddings:	?Y
Gassignvariableop_10_token_and_position_embedding_embedding_2_embeddings:]
Gassignvariableop_11_transformer_block_multi_head_attention_query_kernel:W
Eassignvariableop_12_transformer_block_multi_head_attention_query_bias:[
Eassignvariableop_13_transformer_block_multi_head_attention_key_kernel:U
Cassignvariableop_14_transformer_block_multi_head_attention_key_bias:]
Gassignvariableop_15_transformer_block_multi_head_attention_value_kernel:W
Eassignvariableop_16_transformer_block_multi_head_attention_value_bias:h
Rassignvariableop_17_transformer_block_multi_head_attention_attention_output_kernel:^
Passignvariableop_18_transformer_block_multi_head_attention_attention_output_bias:5
"assignvariableop_19_dense_2_kernel:	?/
 assignvariableop_20_dense_2_bias:	?5
"assignvariableop_21_dense_3_kernel:	?.
 assignvariableop_22_dense_3_bias:M
?assignvariableop_23_transformer_block_layer_normalization_gamma:L
>assignvariableop_24_transformer_block_layer_normalization_beta:O
Aassignvariableop_25_transformer_block_layer_normalization_1_gamma:N
@assignvariableop_26_transformer_block_layer_normalization_1_beta:#
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: 0
"assignvariableop_31_true_positives:1
#assignvariableop_32_false_positives:1
#assignvariableop_33_false_negatives:6
(assignvariableop_34_weights_intermediate:.
assignvariableop_35_conf_mtx:;
)assignvariableop_36_adam_dense_4_kernel_m:P5
'assignvariableop_37_adam_dense_4_bias_m:P;
)assignvariableop_38_adam_dense_5_kernel_m:P5
'assignvariableop_39_adam_dense_5_bias_m:a
Nassignvariableop_40_adam_token_and_position_embedding_embedding_1_embeddings_m:	?`
Nassignvariableop_41_adam_token_and_position_embedding_embedding_2_embeddings_m:d
Nassignvariableop_42_adam_transformer_block_multi_head_attention_query_kernel_m:^
Lassignvariableop_43_adam_transformer_block_multi_head_attention_query_bias_m:b
Lassignvariableop_44_adam_transformer_block_multi_head_attention_key_kernel_m:\
Jassignvariableop_45_adam_transformer_block_multi_head_attention_key_bias_m:d
Nassignvariableop_46_adam_transformer_block_multi_head_attention_value_kernel_m:^
Lassignvariableop_47_adam_transformer_block_multi_head_attention_value_bias_m:o
Yassignvariableop_48_adam_transformer_block_multi_head_attention_attention_output_kernel_m:e
Wassignvariableop_49_adam_transformer_block_multi_head_attention_attention_output_bias_m:<
)assignvariableop_50_adam_dense_2_kernel_m:	?6
'assignvariableop_51_adam_dense_2_bias_m:	?<
)assignvariableop_52_adam_dense_3_kernel_m:	?5
'assignvariableop_53_adam_dense_3_bias_m:T
Fassignvariableop_54_adam_transformer_block_layer_normalization_gamma_m:S
Eassignvariableop_55_adam_transformer_block_layer_normalization_beta_m:V
Hassignvariableop_56_adam_transformer_block_layer_normalization_1_gamma_m:U
Gassignvariableop_57_adam_transformer_block_layer_normalization_1_beta_m:;
)assignvariableop_58_adam_dense_4_kernel_v:P5
'assignvariableop_59_adam_dense_4_bias_v:P;
)assignvariableop_60_adam_dense_5_kernel_v:P5
'assignvariableop_61_adam_dense_5_bias_v:a
Nassignvariableop_62_adam_token_and_position_embedding_embedding_1_embeddings_v:	?`
Nassignvariableop_63_adam_token_and_position_embedding_embedding_2_embeddings_v:d
Nassignvariableop_64_adam_transformer_block_multi_head_attention_query_kernel_v:^
Lassignvariableop_65_adam_transformer_block_multi_head_attention_query_bias_v:b
Lassignvariableop_66_adam_transformer_block_multi_head_attention_key_kernel_v:\
Jassignvariableop_67_adam_transformer_block_multi_head_attention_key_bias_v:d
Nassignvariableop_68_adam_transformer_block_multi_head_attention_value_kernel_v:^
Lassignvariableop_69_adam_transformer_block_multi_head_attention_value_bias_v:o
Yassignvariableop_70_adam_transformer_block_multi_head_attention_attention_output_kernel_v:e
Wassignvariableop_71_adam_transformer_block_multi_head_attention_attention_output_bias_v:<
)assignvariableop_72_adam_dense_2_kernel_v:	?6
'assignvariableop_73_adam_dense_2_bias_v:	?<
)assignvariableop_74_adam_dense_3_kernel_v:	?5
'assignvariableop_75_adam_dense_3_bias_v:T
Fassignvariableop_76_adam_transformer_block_layer_normalization_gamma_v:S
Eassignvariableop_77_adam_transformer_block_layer_normalization_beta_v:V
Hassignvariableop_78_adam_transformer_block_layer_normalization_1_gamma_v:U
Gassignvariableop_79_adam_transformer_block_layer_normalization_1_beta_v:
identity_81??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*?&
value?&B?&QB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*?
value?B?QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*_
dtypesU
S2Q	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpFassignvariableop_9_token_and_position_embedding_embedding_1_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpGassignvariableop_10_token_and_position_embedding_embedding_2_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpGassignvariableop_11_transformer_block_multi_head_attention_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpEassignvariableop_12_transformer_block_multi_head_attention_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpEassignvariableop_13_transformer_block_multi_head_attention_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpCassignvariableop_14_transformer_block_multi_head_attention_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpGassignvariableop_15_transformer_block_multi_head_attention_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpEassignvariableop_16_transformer_block_multi_head_attention_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpRassignvariableop_17_transformer_block_multi_head_attention_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpPassignvariableop_18_transformer_block_multi_head_attention_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_2_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_2_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_3_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_3_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp?assignvariableop_23_transformer_block_layer_normalization_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp>assignvariableop_24_transformer_block_layer_normalization_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpAassignvariableop_25_transformer_block_layer_normalization_1_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_transformer_block_layer_normalization_1_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_true_positivesIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp#assignvariableop_32_false_positivesIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp#assignvariableop_33_false_negativesIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_weights_intermediateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpassignvariableop_35_conf_mtxIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_4_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_4_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_5_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_5_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_token_and_position_embedding_embedding_1_embeddings_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpNassignvariableop_41_adam_token_and_position_embedding_embedding_2_embeddings_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpNassignvariableop_42_adam_transformer_block_multi_head_attention_query_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpLassignvariableop_43_adam_transformer_block_multi_head_attention_query_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpLassignvariableop_44_adam_transformer_block_multi_head_attention_key_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpJassignvariableop_45_adam_transformer_block_multi_head_attention_key_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpNassignvariableop_46_adam_transformer_block_multi_head_attention_value_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpLassignvariableop_47_adam_transformer_block_multi_head_attention_value_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpYassignvariableop_48_adam_transformer_block_multi_head_attention_attention_output_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpWassignvariableop_49_adam_transformer_block_multi_head_attention_attention_output_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_2_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_2_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_dense_3_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_dense_3_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOpFassignvariableop_54_adam_transformer_block_layer_normalization_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpEassignvariableop_55_adam_transformer_block_layer_normalization_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpHassignvariableop_56_adam_transformer_block_layer_normalization_1_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpGassignvariableop_57_adam_transformer_block_layer_normalization_1_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_4_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_4_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_5_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_dense_5_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_token_and_position_embedding_embedding_1_embeddings_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpNassignvariableop_63_adam_token_and_position_embedding_embedding_2_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpNassignvariableop_64_adam_transformer_block_multi_head_attention_query_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpLassignvariableop_65_adam_transformer_block_multi_head_attention_query_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpLassignvariableop_66_adam_transformer_block_multi_head_attention_key_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOpJassignvariableop_67_adam_transformer_block_multi_head_attention_key_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpNassignvariableop_68_adam_transformer_block_multi_head_attention_value_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpLassignvariableop_69_adam_transformer_block_multi_head_attention_value_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpYassignvariableop_70_adam_transformer_block_multi_head_attention_attention_output_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpWassignvariableop_71_adam_transformer_block_multi_head_attention_attention_output_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_2_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_dense_2_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_3_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp'assignvariableop_75_adam_dense_3_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOpFassignvariableop_76_adam_transformer_block_layer_normalization_gamma_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOpEassignvariableop_77_adam_transformer_block_layer_normalization_beta_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpHassignvariableop_78_adam_transformer_block_layer_normalization_1_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOpGassignvariableop_79_adam_transformer_block_layer_normalization_1_beta_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_80Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_81IdentityIdentity_80:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_81Identity_81:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?+
?	
@__inference_model_layer_call_and_return_conditional_losses_34364
input_14
"token_and_position_embedding_34297:5
"token_and_position_embedding_34299:	?-
transformer_block_34302:)
transformer_block_34304:-
transformer_block_34306:)
transformer_block_34308:-
transformer_block_34310:)
transformer_block_34312:-
transformer_block_34314:%
transformer_block_34316:%
transformer_block_34318:%
transformer_block_34320:*
transformer_block_34322:	?&
transformer_block_34324:	?*
transformer_block_34326:	?%
transformer_block_34328:%
transformer_block_34330:%
transformer_block_34332:
dense_4_34353:P
dense_4_34355:P
dense_5_34358:P
dense_5_34360:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?4token_and_position_embedding/StatefulPartitionedCall?)transformer_block/StatefulPartitionedCall?+transformer_block/StatefulPartitionedCall_1?
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_34297"token_and_position_embedding_34299*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_33484?
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_34302transformer_block_34304transformer_block_34306transformer_block_34308transformer_block_34310transformer_block_34312transformer_block_34314transformer_block_34316transformer_block_34318transformer_block_34320transformer_block_34322transformer_block_34324transformer_block_34326transformer_block_34328transformer_block_34330transformer_block_34332*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962?
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_34302transformer_block_34304transformer_block_34306transformer_block_34308transformer_block_34310transformer_block_34312transformer_block_34314transformer_block_34316transformer_block_34318transformer_block_34320transformer_block_34322transformer_block_34324transformer_block_34326transformer_block_34328transformer_block_34330transformer_block_34332*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_33962?
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_33673?
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_34353dense_4_34355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_33686?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_34358dense_5_34360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_33703w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
%__inference_model_layer_call_fn_34470

inputs
unknown:
	unknown_0:	?
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:

unknown_15:

unknown_16:

unknown_17:P

unknown_18:P

unknown_19:P

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_33710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_33757
input_1
unknown:
	unknown_0:	?
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:

unknown_15:

unknown_16:

unknown_17:P

unknown_18:P

unknown_19:P

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_33710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
6
__inference__safe_squeeze_35780
y	
identity	8
SqueezeSqueezey*
T0	*
_output_shapes
:?
RankRankSqueeze:output:0*
T0	*
_output_shapes
: C
xConst*
_output_shapes
: *
dtype0*
value	B : j
EqualEqualRank:output:0
x:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( ?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_35768*
output_shapes
:*"
then_branchR
cond_true_35767K
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:O
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:?????????:F B
#
_output_shapes
:?????????

_user_specified_namey
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_33328

inputs 
dense_2_33286:	?
dense_2_33288:	? 
dense_3_33322:	?
dense_3_33324:
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_33286dense_2_33288*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_33285?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_33322dense_3_33324*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_33321{
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?%
 __inference__wrapped_model_33247
input_1W
Emodel_token_and_position_embedding_embedding_2_embedding_lookup_32988:X
Emodel_token_and_position_embedding_embedding_1_embedding_lookup_32994:	?n
Xmodel_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:`
Nmodel_transformer_block_multi_head_attention_query_add_readvariableop_resource:l
Vmodel_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:^
Lmodel_transformer_block_multi_head_attention_key_add_readvariableop_resource:n
Xmodel_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:`
Nmodel_transformer_block_multi_head_attention_value_add_readvariableop_resource:y
cmodel_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:g
Ymodel_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource:_
Qmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:[
Mmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource:a
Nmodel_transformer_block_sequential_1_dense_2_tensordot_readvariableop_resource:	?[
Lmodel_transformer_block_sequential_1_dense_2_biasadd_readvariableop_resource:	?a
Nmodel_transformer_block_sequential_1_dense_3_tensordot_readvariableop_resource:	?Z
Lmodel_transformer_block_sequential_1_dense_3_biasadd_readvariableop_resource:a
Smodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:]
Omodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource:>
,model_dense_4_matmul_readvariableop_resource:P;
-model_dense_4_biasadd_readvariableop_resource:P>
,model_dense_5_matmul_readvariableop_resource:P;
-model_dense_5_biasadd_readvariableop_resource:
identity??$model/dense_4/BiasAdd/ReadVariableOp?#model/dense_4/MatMul/ReadVariableOp?$model/dense_5/BiasAdd/ReadVariableOp?#model/dense_5/MatMul/ReadVariableOp??model/token_and_position_embedding/embedding_1/embedding_lookup??model/token_and_position_embedding/embedding_2/embedding_lookup?Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp?Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp?Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp?Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp?Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp?Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp?Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp?Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp?Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp?Rmodel/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp?Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp?\model/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp?Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp?Emodel/transformer_block/multi_head_attention/key/add_1/ReadVariableOp?Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp?Omodel/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp?Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOp?Gmodel/transformer_block/multi_head_attention/query/add_1/ReadVariableOp?Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp?Qmodel/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp?Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOp?Gmodel/transformer_block/multi_head_attention/value/add_1/ReadVariableOp?Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp?Qmodel/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp?Cmodel/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp?Emodel/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp?Emodel/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp?Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp?Cmodel/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp?Emodel/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp?Emodel/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp?Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp_
(model/token_and_position_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:?
6model/token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
??????????
8model/token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
8model/token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0model/token_and_position_embedding/strided_sliceStridedSlice1model/token_and_position_embedding/Shape:output:0?model/token_and_position_embedding/strided_slice/stack:output:0Amodel/token_and_position_embedding/strided_slice/stack_1:output:0Amodel/token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.model/token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.model/token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
(model/token_and_position_embedding/rangeRange7model/token_and_position_embedding/range/start:output:09model/token_and_position_embedding/strided_slice:output:07model/token_and_position_embedding/range/delta:output:0*
_output_shapes
:?
?model/token_and_position_embedding/embedding_2/embedding_lookupResourceGatherEmodel_token_and_position_embedding_embedding_2_embedding_lookup_329881model/token_and_position_embedding/range:output:0*
Tindices0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_2/embedding_lookup/32988*
_output_shapes

:*
dtype0?
Hmodel/token_and_position_embedding/embedding_2/embedding_lookup/IdentityIdentityHmodel/token_and_position_embedding/embedding_2/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_2/embedding_lookup/32988*
_output_shapes

:?
Jmodel/token_and_position_embedding/embedding_2/embedding_lookup/Identity_1IdentityQmodel/token_and_position_embedding/embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:?
3model/token_and_position_embedding/embedding_1/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:??????????
?model/token_and_position_embedding/embedding_1/embedding_lookupResourceGatherEmodel_token_and_position_embedding_embedding_1_embedding_lookup_329947model/token_and_position_embedding/embedding_1/Cast:y:0*
Tindices0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/32994*+
_output_shapes
:?????????*
dtype0?
Hmodel/token_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityHmodel/token_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/32994*+
_output_shapes
:??????????
Jmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityQmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
&model/token_and_position_embedding/addAddV2Smodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0Smodel/token_and_position_embedding/embedding_2/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
@model/transformer_block/multi_head_attention/query/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Wmodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
6model/transformer_block/multi_head_attention/query/addAddV2Imodel/transformer_block/multi_head_attention/query/einsum/Einsum:output:0Mmodel/transformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
>model/transformer_block/multi_head_attention/key/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Umodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpLmodel_transformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
4model/transformer_block/multi_head_attention/key/addAddV2Gmodel/transformer_block/multi_head_attention/key/einsum/Einsum:output:0Kmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
@model/transformer_block/multi_head_attention/value/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Wmodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
6model/transformer_block/multi_head_attention/value/addAddV2Imodel/transformer_block/multi_head_attention/value/einsum/Einsum:output:0Mmodel/transformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????w
2model/transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
0model/transformer_block/multi_head_attention/MulMul:model/transformer_block/multi_head_attention/query/add:z:0;model/transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:??????????
:model/transformer_block/multi_head_attention/einsum/EinsumEinsum8model/transformer_block/multi_head_attention/key/add:z:04model/transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
<model/transformer_block/multi_head_attention/softmax/SoftmaxSoftmaxCmodel/transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:??????????
=model/transformer_block/multi_head_attention/dropout/IdentityIdentityFmodel/transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
<model/transformer_block/multi_head_attention/einsum_1/EinsumEinsumFmodel/transformer_block/multi_head_attention/dropout/Identity:output:0:model/transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpcmodel_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Kmodel/transformer_block/multi_head_attention/attention_output/einsum/EinsumEinsumEmodel/transformer_block/multi_head_attention/einsum_1/Einsum:output:0bmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
Amodel/transformer_block/multi_head_attention/attention_output/addAddV2Tmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Xmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
(model/transformer_block/dropout/IdentityIdentityEmodel/transformer_block/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:??????????
model/transformer_block/addAddV2*model/token_and_position_embedding/add:z:01model/transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:??????????
Jmodel/transformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
8model/transformer_block/layer_normalization/moments/meanMeanmodel/transformer_block/add:z:0Smodel/transformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
@model/transformer_block/layer_normalization/moments/StopGradientStopGradientAmodel/transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:??????????
Emodel/transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/transformer_block/add:z:0Imodel/transformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Nmodel/transformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
<model/transformer_block/layer_normalization/moments/varianceMeanImodel/transformer_block/layer_normalization/moments/SquaredDifference:z:0Wmodel/transformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
;model/transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
9model/transformer_block/layer_normalization/batchnorm/addAddV2Emodel/transformer_block/layer_normalization/moments/variance:output:0Dmodel/transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
;model/transformer_block/layer_normalization/batchnorm/RsqrtRsqrt=model/transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
9model/transformer_block/layer_normalization/batchnorm/mulMul?model/transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Pmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
;model/transformer_block/layer_normalization/batchnorm/mul_1Mulmodel/transformer_block/add:z:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
;model/transformer_block/layer_normalization/batchnorm/mul_2MulAmodel/transformer_block/layer_normalization/moments/mean:output:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
9model/transformer_block/layer_normalization/batchnorm/subSubLmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp:value:0?model/transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
;model/transformer_block/layer_normalization/batchnorm/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/mul_1:z:0=model/transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
Emodel/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpNmodel_transformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
;model/transformer_block/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
;model/transformer_block/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
<model/transformer_block/sequential_1/dense_2/Tensordot/ShapeShape?model/transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
Dmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_2/Tensordot/GatherV2GatherV2Emodel/transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0Dmodel/transformer_block/sequential_1/dense_2/Tensordot/free:output:0Mmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Fmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2Emodel/transformer_block/sequential_1/dense_2/Tensordot/Shape:output:0Dmodel/transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Omodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
<model/transformer_block/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
;model/transformer_block/sequential_1/dense_2/Tensordot/ProdProdHmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
>model/transformer_block/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
=model/transformer_block/sequential_1/dense_2/Tensordot/Prod_1ProdJmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Gmodel/transformer_block/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Bmodel/transformer_block/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=model/transformer_block/sequential_1/dense_2/Tensordot/concatConcatV2Dmodel/transformer_block/sequential_1/dense_2/Tensordot/free:output:0Dmodel/transformer_block/sequential_1/dense_2/Tensordot/axes:output:0Kmodel/transformer_block/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
<model/transformer_block/sequential_1/dense_2/Tensordot/stackPackDmodel/transformer_block/sequential_1/dense_2/Tensordot/Prod:output:0Fmodel/transformer_block/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
@model/transformer_block/sequential_1/dense_2/Tensordot/transpose	Transpose?model/transformer_block/layer_normalization/batchnorm/add_1:z:0Fmodel/transformer_block/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
>model/transformer_block/sequential_1/dense_2/Tensordot/ReshapeReshapeDmodel/transformer_block/sequential_1/dense_2/Tensordot/transpose:y:0Emodel/transformer_block/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
=model/transformer_block/sequential_1/dense_2/Tensordot/MatMulMatMulGmodel/transformer_block/sequential_1/dense_2/Tensordot/Reshape:output:0Mmodel/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>model/transformer_block/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Dmodel/transformer_block/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_2/Tensordot/concat_1ConcatV2Hmodel/transformer_block/sequential_1/dense_2/Tensordot/GatherV2:output:0Gmodel/transformer_block/sequential_1/dense_2/Tensordot/Const_2:output:0Mmodel/transformer_block/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
6model/transformer_block/sequential_1/dense_2/TensordotReshapeGmodel/transformer_block/sequential_1/dense_2/Tensordot/MatMul:product:0Hmodel/transformer_block/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Cmodel/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4model/transformer_block/sequential_1/dense_2/BiasAddBiasAdd?model/transformer_block/sequential_1/dense_2/Tensordot:output:0Kmodel/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1model/transformer_block/sequential_1/dense_2/ReluRelu=model/transformer_block/sequential_1/dense_2/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
Emodel/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpNmodel_transformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
;model/transformer_block/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
;model/transformer_block/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
<model/transformer_block/sequential_1/dense_3/Tensordot/ShapeShape?model/transformer_block/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:?
Dmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_3/Tensordot/GatherV2GatherV2Emodel/transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0Dmodel/transformer_block/sequential_1/dense_3/Tensordot/free:output:0Mmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Fmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2Emodel/transformer_block/sequential_1/dense_3/Tensordot/Shape:output:0Dmodel/transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Omodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
<model/transformer_block/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
;model/transformer_block/sequential_1/dense_3/Tensordot/ProdProdHmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
>model/transformer_block/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
=model/transformer_block/sequential_1/dense_3/Tensordot/Prod_1ProdJmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Gmodel/transformer_block/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Bmodel/transformer_block/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=model/transformer_block/sequential_1/dense_3/Tensordot/concatConcatV2Dmodel/transformer_block/sequential_1/dense_3/Tensordot/free:output:0Dmodel/transformer_block/sequential_1/dense_3/Tensordot/axes:output:0Kmodel/transformer_block/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
<model/transformer_block/sequential_1/dense_3/Tensordot/stackPackDmodel/transformer_block/sequential_1/dense_3/Tensordot/Prod:output:0Fmodel/transformer_block/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
@model/transformer_block/sequential_1/dense_3/Tensordot/transpose	Transpose?model/transformer_block/sequential_1/dense_2/Relu:activations:0Fmodel/transformer_block/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
>model/transformer_block/sequential_1/dense_3/Tensordot/ReshapeReshapeDmodel/transformer_block/sequential_1/dense_3/Tensordot/transpose:y:0Emodel/transformer_block/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
=model/transformer_block/sequential_1/dense_3/Tensordot/MatMulMatMulGmodel/transformer_block/sequential_1/dense_3/Tensordot/Reshape:output:0Mmodel/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
>model/transformer_block/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
Dmodel/transformer_block/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_3/Tensordot/concat_1ConcatV2Hmodel/transformer_block/sequential_1/dense_3/Tensordot/GatherV2:output:0Gmodel/transformer_block/sequential_1/dense_3/Tensordot/Const_2:output:0Mmodel/transformer_block/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
6model/transformer_block/sequential_1/dense_3/TensordotReshapeGmodel/transformer_block/sequential_1/dense_3/Tensordot/MatMul:product:0Hmodel/transformer_block/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
Cmodel/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
4model/transformer_block/sequential_1/dense_3/BiasAddBiasAdd?model/transformer_block/sequential_1/dense_3/Tensordot:output:0Kmodel/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
*model/transformer_block/dropout_1/IdentityIdentity=model/transformer_block/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
model/transformer_block/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/add_1:z:03model/transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:??????????
Lmodel/transformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model/transformer_block/layer_normalization_1/moments/meanMean!model/transformer_block/add_1:z:0Umodel/transformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
Bmodel/transformer_block/layer_normalization_1/moments/StopGradientStopGradientCmodel/transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:??????????
Gmodel/transformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifference!model/transformer_block/add_1:z:0Kmodel/transformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Pmodel/transformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model/transformer_block/layer_normalization_1/moments/varianceMeanKmodel/transformer_block/layer_normalization_1/moments/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
=model/transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
;model/transformer_block/layer_normalization_1/batchnorm/addAddV2Gmodel/transformer_block/layer_normalization_1/moments/variance:output:0Fmodel/transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt?model/transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:??????????
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
;model/transformer_block/layer_normalization_1/batchnorm/mulMulAmodel/transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Rmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization_1/batchnorm/mul_1Mul!model/transformer_block/add_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization_1/batchnorm/mul_2MulCmodel/transformer_block/layer_normalization_1/moments/mean:output:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:??????????
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
;model/transformer_block/layer_normalization_1/batchnorm/subSubNmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization_1/batchnorm/add_1AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/mul_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:??????????
Qmodel/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Bmodel/transformer_block/multi_head_attention/query/einsum_1/EinsumEinsumAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Ymodel/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Gmodel/transformer_block/multi_head_attention/query/add_1/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
8model/transformer_block/multi_head_attention/query/add_1AddV2Kmodel/transformer_block/multi_head_attention/query/einsum_1/Einsum:output:0Omodel/transformer_block/multi_head_attention/query/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Omodel/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpReadVariableOpVmodel_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
@model/transformer_block/multi_head_attention/key/einsum_1/EinsumEinsumAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Wmodel/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Emodel/transformer_block/multi_head_attention/key/add_1/ReadVariableOpReadVariableOpLmodel_transformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
6model/transformer_block/multi_head_attention/key/add_1AddV2Imodel/transformer_block/multi_head_attention/key/einsum_1/Einsum:output:0Mmodel/transformer_block/multi_head_attention/key/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
Qmodel/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Bmodel/transformer_block/multi_head_attention/value/einsum_1/EinsumEinsumAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Ymodel/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????*
equationabc,cde->abde?
Gmodel/transformer_block/multi_head_attention/value/add_1/ReadVariableOpReadVariableOpNmodel_transformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
8model/transformer_block/multi_head_attention/value/add_1AddV2Kmodel/transformer_block/multi_head_attention/value/einsum_1/Einsum:output:0Omodel/transformer_block/multi_head_attention/value/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y
4model/transformer_block/multi_head_attention/Mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
2model/transformer_block/multi_head_attention/Mul_1Mul<model/transformer_block/multi_head_attention/query/add_1:z:0=model/transformer_block/multi_head_attention/Mul_1/y:output:0*
T0*/
_output_shapes
:??????????
<model/transformer_block/multi_head_attention/einsum_2/EinsumEinsum:model/transformer_block/multi_head_attention/key/add_1:z:06model/transformer_block/multi_head_attention/Mul_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
>model/transformer_block/multi_head_attention/softmax/Softmax_1SoftmaxEmodel/transformer_block/multi_head_attention/einsum_2/Einsum:output:0*
T0*/
_output_shapes
:??????????
?model/transformer_block/multi_head_attention/dropout/Identity_1IdentityHmodel/transformer_block/multi_head_attention/softmax/Softmax_1:softmax:0*
T0*/
_output_shapes
:??????????
<model/transformer_block/multi_head_attention/einsum_3/EinsumEinsumHmodel/transformer_block/multi_head_attention/dropout/Identity_1:output:0<model/transformer_block/multi_head_attention/value/add_1:z:0*
N*
T0*/
_output_shapes
:?????????*
equationacbe,aecd->abcd?
\model/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpReadVariableOpcmodel_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Mmodel/transformer_block/multi_head_attention/attention_output/einsum_1/EinsumEinsumEmodel/transformer_block/multi_head_attention/einsum_3/Einsum:output:0dmodel/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????*
equationabcd,cde->abe?
Rmodel/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
Cmodel/transformer_block/multi_head_attention/attention_output/add_1AddV2Vmodel/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum:output:0Zmodel/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
*model/transformer_block/dropout/Identity_1IdentityGmodel/transformer_block/multi_head_attention/attention_output/add_1:z:0*
T0*+
_output_shapes
:??????????
model/transformer_block/add_2AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:03model/transformer_block/dropout/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Lmodel/transformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model/transformer_block/layer_normalization/moments_1/meanMean!model/transformer_block/add_2:z:0Umodel/transformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
Bmodel/transformer_block/layer_normalization/moments_1/StopGradientStopGradientCmodel/transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Gmodel/transformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifference!model/transformer_block/add_2:z:0Kmodel/transformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Pmodel/transformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model/transformer_block/layer_normalization/moments_1/varianceMeanKmodel/transformer_block/layer_normalization/moments_1/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
=model/transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
;model/transformer_block/layer_normalization/batchnorm_1/addAddV2Gmodel/transformer_block/layer_normalization/moments_1/variance:output:0Fmodel/transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt?model/transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
;model/transformer_block/layer_normalization/batchnorm_1/mulMulAmodel/transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Rmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization/batchnorm_1/mul_1Mul!model/transformer_block/add_2:z:0?model/transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization/batchnorm_1/mul_2MulCmodel/transformer_block/layer_normalization/moments_1/mean:output:0?model/transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
;model/transformer_block/layer_normalization/batchnorm_1/subSubNmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
=model/transformer_block/layer_normalization/batchnorm_1/add_1AddV2Amodel/transformer_block/layer_normalization/batchnorm_1/mul_1:z:0?model/transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:??????????
Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpReadVariableOpNmodel_transformer_block_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
=model/transformer_block/sequential_1/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
=model/transformer_block/sequential_1/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
>model/transformer_block/sequential_1/dense_2/Tensordot_1/ShapeShapeAmodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:?
Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2GatherV2Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0Omodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Hmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1GatherV2Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/Shape:output:0Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Qmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>model/transformer_block/sequential_1/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
=model/transformer_block/sequential_1/dense_2/Tensordot_1/ProdProdJmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
@model/transformer_block/sequential_1/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
?model/transformer_block/sequential_1/dense_2/Tensordot_1/Prod_1ProdLmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2_1:output:0Imodel/transformer_block/sequential_1/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
Dmodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_2/Tensordot_1/concatConcatV2Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/free:output:0Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/axes:output:0Mmodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
>model/transformer_block/sequential_1/dense_2/Tensordot_1/stackPackFmodel/transformer_block/sequential_1/dense_2/Tensordot_1/Prod:output:0Hmodel/transformer_block/sequential_1/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Bmodel/transformer_block/sequential_1/dense_2/Tensordot_1/transpose	TransposeAmodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:0Hmodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:??????????
@model/transformer_block/sequential_1/dense_2/Tensordot_1/ReshapeReshapeFmodel/transformer_block/sequential_1/dense_2/Tensordot_1/transpose:y:0Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
?model/transformer_block/sequential_1/dense_2/Tensordot_1/MatMulMatMulImodel/transformer_block/sequential_1/dense_2/Tensordot_1/Reshape:output:0Omodel/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@model/transformer_block/sequential_1/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Fmodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat_1ConcatV2Jmodel/transformer_block/sequential_1/dense_2/Tensordot_1/GatherV2:output:0Imodel/transformer_block/sequential_1/dense_2/Tensordot_1/Const_2:output:0Omodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
8model/transformer_block/sequential_1/dense_2/Tensordot_1ReshapeImodel/transformer_block/sequential_1/dense_2/Tensordot_1/MatMul:product:0Jmodel/transformer_block/sequential_1/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:???????????
Emodel/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
6model/transformer_block/sequential_1/dense_2/BiasAdd_1BiasAddAmodel/transformer_block/sequential_1/dense_2/Tensordot_1:output:0Mmodel/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
3model/transformer_block/sequential_1/dense_2/Relu_1Relu?model/transformer_block/sequential_1/dense_2/BiasAdd_1:output:0*
T0*,
_output_shapes
:???????????
Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpReadVariableOpNmodel_transformer_block_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
=model/transformer_block/sequential_1/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:?
=model/transformer_block/sequential_1/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
>model/transformer_block/sequential_1/dense_3/Tensordot_1/ShapeShapeAmodel/transformer_block/sequential_1/dense_2/Relu_1:activations:0*
T0*
_output_shapes
:?
Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2GatherV2Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0Omodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Hmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Cmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1GatherV2Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/Shape:output:0Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Qmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>model/transformer_block/sequential_1/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
=model/transformer_block/sequential_1/dense_3/Tensordot_1/ProdProdJmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: ?
@model/transformer_block/sequential_1/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
?model/transformer_block/sequential_1/dense_3/Tensordot_1/Prod_1ProdLmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2_1:output:0Imodel/transformer_block/sequential_1/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ?
Dmodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model/transformer_block/sequential_1/dense_3/Tensordot_1/concatConcatV2Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/free:output:0Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/axes:output:0Mmodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:?
>model/transformer_block/sequential_1/dense_3/Tensordot_1/stackPackFmodel/transformer_block/sequential_1/dense_3/Tensordot_1/Prod:output:0Hmodel/transformer_block/sequential_1/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Bmodel/transformer_block/sequential_1/dense_3/Tensordot_1/transpose	TransposeAmodel/transformer_block/sequential_1/dense_2/Relu_1:activations:0Hmodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:???????????
@model/transformer_block/sequential_1/dense_3/Tensordot_1/ReshapeReshapeFmodel/transformer_block/sequential_1/dense_3/Tensordot_1/transpose:y:0Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:???????????????????
?model/transformer_block/sequential_1/dense_3/Tensordot_1/MatMulMatMulImodel/transformer_block/sequential_1/dense_3/Tensordot_1/Reshape:output:0Omodel/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
@model/transformer_block/sequential_1/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fmodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat_1ConcatV2Jmodel/transformer_block/sequential_1/dense_3/Tensordot_1/GatherV2:output:0Imodel/transformer_block/sequential_1/dense_3/Tensordot_1/Const_2:output:0Omodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
8model/transformer_block/sequential_1/dense_3/Tensordot_1ReshapeImodel/transformer_block/sequential_1/dense_3/Tensordot_1/MatMul:product:0Jmodel/transformer_block/sequential_1/dense_3/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:??????????
Emodel/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
6model/transformer_block/sequential_1/dense_3/BiasAdd_1BiasAddAmodel/transformer_block/sequential_1/dense_3/Tensordot_1:output:0Mmodel/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
,model/transformer_block/dropout_1/Identity_1Identity?model/transformer_block/sequential_1/dense_3/BiasAdd_1:output:0*
T0*+
_output_shapes
:??????????
model/transformer_block/add_3AddV2Amodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:05model/transformer_block/dropout_1/Identity_1:output:0*
T0*+
_output_shapes
:??????????
Nmodel/transformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
<model/transformer_block/layer_normalization_1/moments_1/meanMean!model/transformer_block/add_3:z:0Wmodel/transformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
Dmodel/transformer_block/layer_normalization_1/moments_1/StopGradientStopGradientEmodel/transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:??????????
Imodel/transformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifference!model/transformer_block/add_3:z:0Mmodel/transformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*+
_output_shapes
:??????????
Rmodel/transformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
@model/transformer_block/layer_normalization_1/moments_1/varianceMeanMmodel/transformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0[model/transformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(?
?model/transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
=model/transformer_block/layer_normalization_1/batchnorm_1/addAddV2Imodel/transformer_block/layer_normalization_1/moments_1/variance:output:0Hmodel/transformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:??????????
?model/transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrtAmodel/transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:??????????
Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
=model/transformer_block/layer_normalization_1/batchnorm_1/mulMulCmodel/transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Tmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:??????????
?model/transformer_block/layer_normalization_1/batchnorm_1/mul_1Mul!model/transformer_block/add_3:z:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
?model/transformer_block/layer_normalization_1/batchnorm_1/mul_2MulEmodel/transformer_block/layer_normalization_1/moments_1/mean:output:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*+
_output_shapes
:??????????
Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
=model/transformer_block/layer_normalization_1/batchnorm_1/subSubPmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0Cmodel/transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*+
_output_shapes
:??????????
?model/transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2Cmodel/transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*+
_output_shapes
:?????????w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
#model/global_average_pooling1d/MeanMeanCmodel/transformer_block/layer_normalization_1/batchnorm_1/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
model/dense_4/MatMulMatMul,model/global_average_pooling1d/Mean:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P?
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0?
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Pl
model/dense_4/ReluRelumodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P?
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0?
model/dense_5/MatMulMatMul model/dense_4/Relu:activations:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
model/dense_5/SoftmaxSoftmaxmodel/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentitymodel/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp@^model/token_and_position_embedding/embedding_1/embedding_lookup@^model/token_and_position_embedding/embedding_2/embedding_lookupE^model/transformer_block/layer_normalization/batchnorm/ReadVariableOpI^model/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpG^model/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpK^model/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpG^model/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpK^model/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpI^model/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpM^model/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpQ^model/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpS^model/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp[^model/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp]^model/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOpD^model/transformer_block/multi_head_attention/key/add/ReadVariableOpF^model/transformer_block/multi_head_attention/key/add_1/ReadVariableOpN^model/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpP^model/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpF^model/transformer_block/multi_head_attention/query/add/ReadVariableOpH^model/transformer_block/multi_head_attention/query/add_1/ReadVariableOpP^model/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpR^model/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpF^model/transformer_block/multi_head_attention/value/add/ReadVariableOpH^model/transformer_block/multi_head_attention/value/add_1/ReadVariableOpP^model/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpR^model/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpD^model/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOpF^model/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOpF^model/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpH^model/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpD^model/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOpF^model/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOpF^model/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpH^model/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp2?
?model/token_and_position_embedding/embedding_1/embedding_lookup?model/token_and_position_embedding/embedding_1/embedding_lookup2?
?model/token_and_position_embedding/embedding_2/embedding_lookup?model/token_and_position_embedding/embedding_2/embedding_lookup2?
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpDmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp2?
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpHmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2?
Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpFmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2?
Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpJmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2?
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpFmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2?
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpJmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2?
Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpHmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2?
Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpLmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2?
Pmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpPmodel/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp2?
Rmodel/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOpRmodel/transformer_block/multi_head_attention/attention_output/add_1/ReadVariableOp2?
Zmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpZmodel/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2?
\model/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp\model/transformer_block/multi_head_attention/attention_output/einsum_1/Einsum/ReadVariableOp2?
Cmodel/transformer_block/multi_head_attention/key/add/ReadVariableOpCmodel/transformer_block/multi_head_attention/key/add/ReadVariableOp2?
Emodel/transformer_block/multi_head_attention/key/add_1/ReadVariableOpEmodel/transformer_block/multi_head_attention/key/add_1/ReadVariableOp2?
Mmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpMmodel/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2?
Omodel/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOpOmodel/transformer_block/multi_head_attention/key/einsum_1/Einsum/ReadVariableOp2?
Emodel/transformer_block/multi_head_attention/query/add/ReadVariableOpEmodel/transformer_block/multi_head_attention/query/add/ReadVariableOp2?
Gmodel/transformer_block/multi_head_attention/query/add_1/ReadVariableOpGmodel/transformer_block/multi_head_attention/query/add_1/ReadVariableOp2?
Omodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpOmodel/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2?
Qmodel/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOpQmodel/transformer_block/multi_head_attention/query/einsum_1/Einsum/ReadVariableOp2?
Emodel/transformer_block/multi_head_attention/value/add/ReadVariableOpEmodel/transformer_block/multi_head_attention/value/add/ReadVariableOp2?
Gmodel/transformer_block/multi_head_attention/value/add_1/ReadVariableOpGmodel/transformer_block/multi_head_attention/value/add_1/ReadVariableOp2?
Omodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpOmodel/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2?
Qmodel/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOpQmodel/transformer_block/multi_head_attention/value/einsum_1/Einsum/ReadVariableOp2?
Cmodel/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOpCmodel/transformer_block/sequential_1/dense_2/BiasAdd/ReadVariableOp2?
Emodel/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOpEmodel/transformer_block/sequential_1/dense_2/BiasAdd_1/ReadVariableOp2?
Emodel/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOpEmodel/transformer_block/sequential_1/dense_2/Tensordot/ReadVariableOp2?
Gmodel/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOpGmodel/transformer_block/sequential_1/dense_2/Tensordot_1/ReadVariableOp2?
Cmodel/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOpCmodel/transformer_block/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
Emodel/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOpEmodel/transformer_block/sequential_1/dense_3/BiasAdd_1/ReadVariableOp2?
Emodel/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOpEmodel/transformer_block/sequential_1/dense_3/Tensordot/ReadVariableOp2?
Gmodel/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOpGmodel/transformer_block/sequential_1/dense_3/Tensordot_1/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_false_35937?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_all
?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_identity	Z
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1
??Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*:
value1B/ B)`predictions` contains negative values.  ?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (confusion_matrix/remove_squeezable_dimensions/cond/Identity:0) = ?
Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssert?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_allbconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0bconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0bconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_identity*
T
2	*
_output_shapes
 ?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_allS^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: ?
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1Identity]confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity:output:0Q^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
Pconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpS^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 "?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1_confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :2?
Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertRconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
:
?
?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_true_35936?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_1_assert_less_equal_all
[
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_placeholder	Z
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1
n
Pconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 ?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_1_assert_less_equal_allQ^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: ?
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1Identity]confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1_confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :: 

_output_shapes
: :

_output_shapes
:
?
@
cond_false_35768
cond_identity_squeeze	
cond_identity	S
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
A
cond_true_35787
cond_expanddims_squeeze	
cond_identity	U
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : w
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:V
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:
?
A
cond_true_35833
cond_expanddims_squeeze	
cond_identity	U
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : w
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:V
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:: 

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????;
dense_50
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-iter

.beta_1

/beta_2
	0decay
1learning_rate!m?"m?'m?(m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?!v?"v?'v?(v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?"
	optimizer
?
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
!18
"19
'20
(21"
trackable_list_wrapper
?
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
!18
"19
'20
(21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
2
embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3
embeddings
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
V_query_dense
W
_key_dense
X_value_dense
Y_softmax
Z_dropout_layer
[_output_dense
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`layer_with_weights-0
`layer-0
alayer_with_weights-1
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
faxis
	@gamma
Abeta
g	variables
htrainable_variables
iregularization_losses
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
kaxis
	Bgamma
Cbeta
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15"
trackable_list_wrapper
?
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :P2dense_4/kernel
:P2dense_4/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :P2dense_5/kernel
:2dense_5/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
F:D	?23token_and_position_embedding/embedding_1/embeddings
E:C23token_and_position_embedding/embedding_2/embeddings
I:G23transformer_block/multi_head_attention/query/kernel
C:A21transformer_block/multi_head_attention/query/bias
G:E21transformer_block/multi_head_attention/key/kernel
A:?2/transformer_block/multi_head_attention/key/bias
I:G23transformer_block/multi_head_attention/value/kernel
C:A21transformer_block/multi_head_attention/value/bias
T:R2>transformer_block/multi_head_attention/attention_output/kernel
J:H2<transformer_block/multi_head_attention/attention_output/bias
!:	?2dense_2/kernel
:?2dense_2/bias
!:	?2dense_3/kernel
:2dense_3/bias
9:72+transformer_block/layer_normalization/gamma
8:62*transformer_block/layer_normalization/beta
;:92-transformer_block/layer_normalization_1/gamma
::82,transformer_block/layer_normalization_1/beta
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
20"
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
30"
trackable_list_wrapper
'
30"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
?partial_output_shape
?full_output_shape

4kernel
5bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

6kernel
7bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

8kernel
9bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

:kernel
;bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
X
40
51
62
73
84
95
:6
;7"
trackable_list_wrapper
X
40
51
62
73
84
95
:6
;7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
<
<0
=1
>2
?3"
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
p	variables
qtrainable_variables
rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
t	variables
utrainable_variables
vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
?
?
init_shape
?true_positives
?false_positives
?false_negatives
?weights_intermediate
?	variables
?	keras_api"
_tf_keras_metric
?
?conf_mtx
?	variables
?	keras_api
?_cast_ypred
?_safe_squeeze
?_update
?_update_multi_class_model"
_tf_keras_metric
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
V0
W1
X2
Y3
Z4
[5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
`0
a1"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
: (2false_negatives
$:" (2weights_intermediate
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
: (2conf_mtx
(
?0"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
%:#P2Adam/dense_4/kernel/m
:P2Adam/dense_4/bias/m
%:#P2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
K:I	?2:Adam/token_and_position_embedding/embedding_1/embeddings/m
J:H2:Adam/token_and_position_embedding/embedding_2/embeddings/m
N:L2:Adam/transformer_block/multi_head_attention/query/kernel/m
H:F28Adam/transformer_block/multi_head_attention/query/bias/m
L:J28Adam/transformer_block/multi_head_attention/key/kernel/m
F:D26Adam/transformer_block/multi_head_attention/key/bias/m
N:L2:Adam/transformer_block/multi_head_attention/value/kernel/m
H:F28Adam/transformer_block/multi_head_attention/value/bias/m
Y:W2EAdam/transformer_block/multi_head_attention/attention_output/kernel/m
O:M2CAdam/transformer_block/multi_head_attention/attention_output/bias/m
&:$	?2Adam/dense_2/kernel/m
 :?2Adam/dense_2/bias/m
&:$	?2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
>:<22Adam/transformer_block/layer_normalization/gamma/m
=:;21Adam/transformer_block/layer_normalization/beta/m
@:>24Adam/transformer_block/layer_normalization_1/gamma/m
?:=23Adam/transformer_block/layer_normalization_1/beta/m
%:#P2Adam/dense_4/kernel/v
:P2Adam/dense_4/bias/v
%:#P2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
K:I	?2:Adam/token_and_position_embedding/embedding_1/embeddings/v
J:H2:Adam/token_and_position_embedding/embedding_2/embeddings/v
N:L2:Adam/transformer_block/multi_head_attention/query/kernel/v
H:F28Adam/transformer_block/multi_head_attention/query/bias/v
L:J28Adam/transformer_block/multi_head_attention/key/kernel/v
F:D26Adam/transformer_block/multi_head_attention/key/bias/v
N:L2:Adam/transformer_block/multi_head_attention/value/kernel/v
H:F28Adam/transformer_block/multi_head_attention/value/bias/v
Y:W2EAdam/transformer_block/multi_head_attention/attention_output/kernel/v
O:M2CAdam/transformer_block/multi_head_attention/attention_output/bias/v
&:$	?2Adam/dense_2/kernel/v
 :?2Adam/dense_2/bias/v
&:$	?2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
>:<22Adam/transformer_block/layer_normalization/gamma/v
=:;21Adam/transformer_block/layer_normalization/beta/v
@:>24Adam/transformer_block/layer_normalization_1/gamma/v
?:=23Adam/transformer_block/layer_normalization_1/beta/v
?2?
%__inference_model_layer_call_fn_33757
%__inference_model_layer_call_fn_34470
%__inference_model_layer_call_fn_34519
%__inference_model_layer_call_fn_34224?
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
@__inference_model_layer_call_and_return_conditional_losses_34789
@__inference_model_layer_call_and_return_conditional_losses_35085
@__inference_model_layer_call_and_return_conditional_losses_34294
@__inference_model_layer_call_and_return_conditional_losses_34364?
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
?B?
 __inference__wrapped_model_33247input_1"?
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
?2?
<__inference_token_and_position_embedding_layer_call_fn_35094?
???
FullArgSpec
args?
jself
jx
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
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_35118?
???
FullArgSpec
args?
jself
jx
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
?2?
1__inference_transformer_block_layer_call_fn_35155
1__inference_transformer_block_layer_call_fn_35192?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_transformer_block_layer_call_and_return_conditional_losses_35319
L__inference_transformer_block_layer_call_and_return_conditional_losses_35459?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_global_average_pooling1d_layer_call_fn_35464
8__inference_global_average_pooling1d_layer_call_fn_35469?
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
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35475
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35481?
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
?2?
'__inference_dense_4_layer_call_fn_35490?
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
B__inference_dense_4_layer_call_and_return_conditional_losses_35501?
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
'__inference_dense_5_layer_call_fn_35510?
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
B__inference_dense_5_layer_call_and_return_conditional_losses_35521?
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
?B?
#__inference_signature_wrapper_34421input_1"?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_1_layer_call_fn_33339
,__inference_sequential_1_layer_call_fn_35534
,__inference_sequential_1_layer_call_fn_35547
,__inference_sequential_1_layer_call_fn_33412?
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
G__inference_sequential_1_layer_call_and_return_conditional_losses_35604
G__inference_sequential_1_layer_call_and_return_conditional_losses_35661
G__inference_sequential_1_layer_call_and_return_conditional_losses_33426
G__inference_sequential_1_layer_call_and_return_conditional_losses_33440?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
'__inference_dense_2_layer_call_fn_35670?
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
B__inference_dense_2_layer_call_and_return_conditional_losses_35701?
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
'__inference_dense_3_layer_call_fn_35710?
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
B__inference_dense_3_layer_call_and_return_conditional_losses_35740?
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
__inference__cast_ypred_35760?
???
FullArgSpec
args?
jself
jy_pred
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
__inference__safe_squeeze_35780
__inference__safe_squeeze_35800?
???
FullArgSpec
args?
jself
jy
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
+__inference__update_multi_class_model_36028?
???
FullArgSpec8
args0?-
jself
jy_true
jy_pred
jsample_weight
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
 ]
__inference__cast_ypred_35760</?,
%?"
 ?
y_pred?????????
? "	?	V
__inference__safe_squeeze_357803&?#
?
?
y?????????	
? "	?	K
__inference__safe_squeeze_35800(?
?
?	
y	
? "	?	?
+__inference__update_multi_class_model_36028l?U?R
K?H
 ?
y_true?????????
 ?
y_pred?????????

 
? "??
 __inference__wrapped_model_33247}32456789:;@A<=>?BC!"'(0?-
&?#
!?
input_1?????????
? "1?.
,
dense_5!?
dense_5??????????
B__inference_dense_2_layer_call_and_return_conditional_losses_35701e<=3?0
)?&
$?!
inputs?????????
? "*?'
 ?
0??????????
? ?
'__inference_dense_2_layer_call_fn_35670X<=3?0
)?&
$?!
inputs?????????
? "????????????
B__inference_dense_3_layer_call_and_return_conditional_losses_35740e>?4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????
? ?
'__inference_dense_3_layer_call_fn_35710X>?4?1
*?'
%?"
inputs??????????
? "???????????
B__inference_dense_4_layer_call_and_return_conditional_losses_35501\!"/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????P
? z
'__inference_dense_4_layer_call_fn_35490O!"/?,
%?"
 ?
inputs?????????
? "??????????P?
B__inference_dense_5_layer_call_and_return_conditional_losses_35521\'(/?,
%?"
 ?
inputs?????????P
? "%?"
?
0?????????
? z
'__inference_dense_5_layer_call_fn_35510O'(/?,
%?"
 ?
inputs?????????P
? "???????????
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35475{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_35481`7?4
-?*
$?!
inputs?????????

 
? "%?"
?
0?????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_35464nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
8__inference_global_average_pooling1d_layer_call_fn_35469S7?4
-?*
$?!
inputs?????????

 
? "???????????
@__inference_model_layer_call_and_return_conditional_losses_34294y32456789:;@A<=>?BC!"'(8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_34364y32456789:;@A<=>?BC!"'(8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_34789x32456789:;@A<=>?BC!"'(7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_35085x32456789:;@A<=>?BC!"'(7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
%__inference_model_layer_call_fn_33757l32456789:;@A<=>?BC!"'(8?5
.?+
!?
input_1?????????
p 

 
? "???????????
%__inference_model_layer_call_fn_34224l32456789:;@A<=>?BC!"'(8?5
.?+
!?
input_1?????????
p

 
? "???????????
%__inference_model_layer_call_fn_34470k32456789:;@A<=>?BC!"'(7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
%__inference_model_layer_call_fn_34519k32456789:;@A<=>?BC!"'(7?4
-?*
 ?
inputs?????????
p

 
? "???????????
G__inference_sequential_1_layer_call_and_return_conditional_losses_33426u<=>?B??
8?5
+?(
dense_2_input?????????
p 

 
? ")?&
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_33440u<=>?B??
8?5
+?(
dense_2_input?????????
p

 
? ")?&
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_35604n<=>?;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_35661n<=>?;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
,__inference_sequential_1_layer_call_fn_33339h<=>?B??
8?5
+?(
dense_2_input?????????
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_33412h<=>?B??
8?5
+?(
dense_2_input?????????
p

 
? "???????????
,__inference_sequential_1_layer_call_fn_35534a<=>?;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_35547a<=>?;?8
1?.
$?!
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_34421?32456789:;@A<=>?BC!"'(;?8
? 
1?.
,
input_1!?
input_1?????????"1?.
,
dense_5!?
dense_5??????????
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_35118[32*?'
 ?
?
x?????????
? ")?&
?
0?????????
? ?
<__inference_token_and_position_embedding_layer_call_fn_35094N32*?'
 ?
?
x?????????
? "???????????
L__inference_transformer_block_layer_call_and_return_conditional_losses_35319v456789:;@A<=>?BC7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
L__inference_transformer_block_layer_call_and_return_conditional_losses_35459v456789:;@A<=>?BC7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
1__inference_transformer_block_layer_call_fn_35155i456789:;@A<=>?BC7?4
-?*
$?!
inputs?????????
p 
? "???????????
1__inference_transformer_block_layer_call_fn_35192i456789:;@A<=>?BC7?4
-?*
$?!
inputs?????????
p
? "??????????