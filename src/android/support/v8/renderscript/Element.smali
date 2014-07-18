.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Element$1;,
        Landroid/support/v8/renderscript/Element$DataKind;,
        Landroid/support/v8/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mKind:Landroid/support/v8/renderscript/Element$DataKind;

.field mNormalized:Z

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Element$DataType;

.field mVectorSize:I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 747
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p4, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;
    .param p5, "norm"    # Z
    .param p6, "size"    # I

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 728
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_27

    .line 731
    const/4 v0, 0x3

    if-ne p6, v0, :cond_21

    .line 732
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 739
    :goto_18
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 740
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 741
    iput-boolean p5, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z

    .line 742
    iput p6, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 743
    return-void

    .line 734
    :cond_21
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_18

    .line 737
    :cond_27
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_18
.end method

.method public static A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 438
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    .line 440
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 466
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    .line 468
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 473
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    .line 475
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_e

    .line 445
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    .line 447
    :cond_e
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_c

    .line 325
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    .line 327
    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_d

    .line 536
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    .line 538
    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .registers 11
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 830
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 831
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 832
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 880
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 835
    :cond_c
    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_31

    .line 842
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Unsupported DataKind"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_31
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_4e

    .line 849
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Unsupported DataType"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_4e
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5f

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5f

    .line 852
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_5f
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_70

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_70

    .line 855
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_70
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_81

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_81

    .line 858
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_81
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_92

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_92

    .line 862
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_92
    const/4 v6, 0x1

    .line 866
    .local v6, "size":I
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_b8

    .line 878
    :goto_9e
    const/4 v5, 0x1

    .line 879
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, p2, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 880
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto/16 :goto_b

    .line 868
    .end local v1    # "id":I
    .end local v5    # "norm":Z
    :pswitch_b1
    const/4 v6, 0x2

    .line 869
    goto :goto_9e

    .line 871
    :pswitch_b3
    const/4 v6, 0x3

    .line 872
    goto :goto_9e

    .line 874
    :pswitch_b5
    const/4 v6, 0x4

    goto :goto_9e

    .line 866
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b3
        :pswitch_b5
    .end packed-switch
.end method

.method static createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .registers 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 758
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 759
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 760
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1}, Landroid/support/v8/renderscript/ElementThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 766
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 762
    :cond_c
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 763
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 764
    .local v5, "norm":Z
    const/4 v6, 0x1

    .line 765
    .local v6, "vecSize":I
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 766
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_b
.end method

.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .registers 11
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 783
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_c

    move-object v7, p0

    .line 784
    check-cast v7, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 785
    .local v7, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v7, p1, p2}, Landroid/support/v8/renderscript/ElementThunker;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 807
    .end local v7    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_b
    return-object v0

    .line 787
    :cond_c
    const/4 v0, 0x2

    if-lt p2, v0, :cond_12

    const/4 v0, 0x4

    if-le p2, v0, :cond_1b

    .line 788
    :cond_12
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Vector size out of range 2-4."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_1b
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_44

    .line 811
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :pswitch_2f
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 805
    .local v4, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 806
    .local v5, "norm":Z
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, p2}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 807
    .local v1, "id":I
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_b

    .line 791
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public getBytesSize()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    return v0
.end method

.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
    .registers 5
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 904
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method
