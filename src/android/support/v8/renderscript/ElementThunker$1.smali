.class synthetic Landroid/support/v8/renderscript/ElementThunker$1;
.super Ljava/lang/Object;
.source "ElementThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ElementThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

.field static final synthetic $SwitchMap$android$support$v8$renderscript$Element$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Landroid/support/v8/renderscript/Element$DataType;->values()[Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    :try_start_9
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_180

    :goto_14
    :try_start_14
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_17d

    :goto_1f
    :try_start_1f
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_17a

    :goto_2a
    :try_start_2a
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_177

    :goto_35
    :try_start_35
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_174

    :goto_40
    :try_start_40
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_171

    :goto_4b
    :try_start_4b
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_16e

    :goto_56
    :try_start_56
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_16b

    :goto_62
    :try_start_62
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_168

    :goto_6e
    :try_start_6e
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_165

    :goto_7a
    :try_start_7a
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_162

    :goto_86
    :try_start_86
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_15f

    :goto_92
    :try_start_92
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_15c

    :goto_9e
    :try_start_9e
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_159

    :goto_aa
    :try_start_aa
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_156

    :goto_b6
    :try_start_b6
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_153

    :goto_c2
    :try_start_c2
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_150

    :goto_ce
    :try_start_ce
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_14e

    :goto_da
    :try_start_da
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_14c

    :goto_e6
    :try_start_e6
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_14a

    .line 47
    :goto_f2
    invoke-static {}, Landroid/support/v8/renderscript/Element$DataKind;->values()[Landroid/support/v8/renderscript/Element$DataKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    :try_start_fb
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_106} :catch_148

    :goto_106
    :try_start_106
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_111} :catch_146

    :goto_111
    :try_start_111
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11c} :catch_144

    :goto_11c
    :try_start_11c
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_127} :catch_142

    :goto_127
    :try_start_127
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_132} :catch_140

    :goto_132
    :try_start_132
    sget-object v0, Landroid/support/v8/renderscript/ElementThunker$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13d} :catch_13e

    :goto_13d
    return-void

    :catch_13e
    move-exception v0

    goto :goto_13d

    :catch_140
    move-exception v0

    goto :goto_132

    :catch_142
    move-exception v0

    goto :goto_127

    :catch_144
    move-exception v0

    goto :goto_11c

    :catch_146
    move-exception v0

    goto :goto_111

    :catch_148
    move-exception v0

    goto :goto_106

    .line 65
    :catch_14a
    move-exception v0

    goto :goto_f2

    :catch_14c
    move-exception v0

    goto :goto_e6

    :catch_14e
    move-exception v0

    goto :goto_da

    :catch_150
    move-exception v0

    goto/16 :goto_ce

    :catch_153
    move-exception v0

    goto/16 :goto_c2

    :catch_156
    move-exception v0

    goto/16 :goto_b6

    :catch_159
    move-exception v0

    goto/16 :goto_aa

    :catch_15c
    move-exception v0

    goto/16 :goto_9e

    :catch_15f
    move-exception v0

    goto/16 :goto_92

    :catch_162
    move-exception v0

    goto/16 :goto_86

    :catch_165
    move-exception v0

    goto/16 :goto_7a

    :catch_168
    move-exception v0

    goto/16 :goto_6e

    :catch_16b
    move-exception v0

    goto/16 :goto_62

    :catch_16e
    move-exception v0

    goto/16 :goto_56

    :catch_171
    move-exception v0

    goto/16 :goto_4b

    :catch_174
    move-exception v0

    goto/16 :goto_40

    :catch_177
    move-exception v0

    goto/16 :goto_35

    :catch_17a
    move-exception v0

    goto/16 :goto_2a

    :catch_17d
    move-exception v0

    goto/16 :goto_1f

    :catch_180
    move-exception v0

    goto/16 :goto_14
.end method
