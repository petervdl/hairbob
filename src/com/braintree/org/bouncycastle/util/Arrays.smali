.class public final Lcom/braintree/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public static areEqual([B[B)Z
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v1

    .line 82
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v1, v2

    .line 84
    goto :goto_4

    .line 87
    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 89
    goto :goto_4

    .line 92
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v3, p0

    if-eq v0, v3, :cond_4

    .line 94
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 96
    goto :goto_4

    .line 92
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static hashCode([B)I
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 202
    if-nez p0, :cond_4

    .line 204
    const/4 v0, 0x0

    .line 216
    :cond_3
    return v0

    .line 207
    :cond_4
    array-length v1, p0

    .line 208
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 210
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 212
    mul-int/lit16 v0, v0, 0x101

    .line 213
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7
.end method
