.class Landroid/support/v8/renderscript/ElementThunker;
.super Landroid/support/v8/renderscript/Element;
.source "ElementThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ElementThunker$1;
    }
.end annotation


# instance fields
.field mN:Landroid/renderscript/Element;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 173
    iput-object p2, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    .line 174
    return-void
.end method

.method static convertKind(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;
    .registers 3
    .param p0, "cdk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 47
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 61
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 49
    :pswitch_d
    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 51
    :pswitch_10
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 53
    :pswitch_13
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 55
    :pswitch_16
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 57
    :pswitch_19
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 59
    :pswitch_1c
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    goto :goto_c

    .line 47
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method static convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;
    .registers 3
    .param p0, "cdt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 65
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 111
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 67
    :pswitch_d
    sget-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 70
    :pswitch_10
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 72
    :pswitch_13
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 74
    :pswitch_16
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 76
    :pswitch_19
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 78
    :pswitch_1c
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 80
    :pswitch_1f
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 82
    :pswitch_22
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 84
    :pswitch_25
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 86
    :pswitch_28
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 88
    :pswitch_2b
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 91
    :pswitch_2e
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 94
    :pswitch_31
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 96
    :pswitch_34
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 98
    :pswitch_37
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 101
    :pswitch_3a
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 103
    :pswitch_3d
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 105
    :pswitch_40
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 107
    :pswitch_43
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 109
    :pswitch_46
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    goto :goto_c

    .line 65
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method

.method static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .registers 7
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 178
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 180
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    const/4 v0, 0x0

    .line 181
    .local v0, "e":Landroid/renderscript/Element;
    :try_start_4
    sget-object v3, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    .line 244
    :goto_f
    new-instance v3, Landroid/support/v8/renderscript/ElementThunker;

    invoke-direct {v3, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v3

    .line 183
    :pswitch_15
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 184
    goto :goto_f

    .line 186
    :pswitch_1c
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 187
    goto :goto_f

    .line 189
    :pswitch_23
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 190
    goto :goto_f

    .line 192
    :pswitch_2a
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 193
    goto :goto_f

    .line 195
    :pswitch_31
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 196
    goto :goto_f

    .line 198
    :pswitch_38
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 199
    goto :goto_f

    .line 201
    :pswitch_3f
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 202
    goto :goto_f

    .line 204
    :pswitch_46
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 205
    goto :goto_f

    .line 207
    :pswitch_4d
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 208
    goto :goto_f

    .line 210
    :pswitch_54
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 211
    goto :goto_f

    .line 214
    :pswitch_5b
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 215
    goto :goto_f

    .line 218
    :pswitch_62
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 219
    goto :goto_f

    .line 221
    :pswitch_69
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 222
    goto :goto_f

    .line 224
    :pswitch_70
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 225
    goto :goto_f

    .line 228
    :pswitch_77
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 229
    goto :goto_f

    .line 231
    :pswitch_7e
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 232
    goto :goto_f

    .line 234
    :pswitch_85
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 235
    goto :goto_f

    .line 237
    :pswitch_8c
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 238
    goto/16 :goto_f

    .line 240
    :pswitch_94
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    :try_end_99
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_4 .. :try_end_99} :catch_9c

    move-result-object v0

    goto/16 :goto_f

    .line 245
    :catch_9c
    move-exception v3

    move-object v1, v0

    .end local v0    # "e":Landroid/renderscript/Element;
    .local v1, "e":Landroid/renderscript/Element;
    move-object v0, v3

    .line 246
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    .end local v1    # "e":Landroid/renderscript/Element;
    move-result-object v3

    throw v3

    .line 181
    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_15
        :pswitch_1c
        :pswitch_23
        :pswitch_2a
        :pswitch_31
        :pswitch_38
        :pswitch_3f
        :pswitch_46
        :pswitch_4d
        :pswitch_54
        :pswitch_5b
        :pswitch_62
        :pswitch_69
        :pswitch_70
        :pswitch_77
        :pswitch_7e
        :pswitch_85
        :pswitch_8c
        :pswitch_94
    .end packed-switch
.end method

.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .registers 9
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 262
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 265
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_3
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/support/v8/renderscript/ElementThunker;->convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p2}, Landroid/support/v8/renderscript/ElementThunker;->convertKind(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    .line 266
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v3, Landroid/support/v8/renderscript/ElementThunker;

    invoke-direct {v3, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_16
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_16} :catch_17

    return-object v3

    .line 267
    .end local v0    # "e":Landroid/renderscript/Element;
    :catch_17
    move-exception v1

    .line 268
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .registers 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 251
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 254
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_3
    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/support/v8/renderscript/ElementThunker;->convertType(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    .line 255
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v3, Landroid/support/v8/renderscript/ElementThunker;

    invoke-direct {v3, p0, v0}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_12
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_12} :catch_13

    return-object v3

    .line 256
    .end local v0    # "e":Landroid/renderscript/Element;
    :catch_13
    move-exception v1

    .line 257
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public getBytesSize()I
    .registers 3

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 33
    :catch_7
    move-exception v0

    .line 34
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Element;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    return-object v0
.end method

.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
    .registers 6
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 273
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .line 275
    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    :try_start_3
    iget-object v2, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z
    :try_end_a
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 276
    :catch_c
    move-exception v1

    .line 277
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
