.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Type$Builder;,
        Landroid/support/v8/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 192
    return-void
.end method


# virtual methods
.method calcElementCount()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 153
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 154
    .local v2, "hasLod":Z
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 155
    .local v3, "x":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    .line 156
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v5

    .line 157
    .local v5, "z":I
    const/4 v1, 0x1

    .line 158
    .local v1, "faces":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 159
    const/4 v1, 0x6

    .line 161
    :cond_19
    if-nez v3, :cond_1c

    .line 162
    const/4 v3, 0x1

    .line 164
    :cond_1c
    if-nez v4, :cond_1f

    .line 165
    const/4 v4, 0x1

    .line 167
    :cond_1f
    if-nez v5, :cond_22

    .line 168
    const/4 v5, 0x1

    .line 171
    :cond_22
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 173
    .local v0, "count":I
    :goto_27
    if-eqz v2, :cond_41

    if-gt v3, v7, :cond_2f

    if-gt v4, v7, :cond_2f

    if-le v5, v7, :cond_41

    .line 174
    :cond_2f
    if-le v3, v7, :cond_33

    .line 175
    shr-int/lit8 v3, v3, 0x1

    .line 177
    :cond_33
    if-le v4, v7, :cond_37

    .line 178
    shr-int/lit8 v4, v4, 0x1

    .line 180
    :cond_37
    if-le v5, v7, :cond_3b

    .line 181
    shr-int/lit8 v5, v5, 0x1

    .line 184
    :cond_3b
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_27

    .line 186
    :cond_41
    iput v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    .line 187
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getZ()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
