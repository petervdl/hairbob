.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field static final FULL_3:[C

.field static final FULL_TRIPLETS_B:[B

.field static final LEAD_3:[C

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static TEN_BILLION_L:J

.field private static THOUSAND_L:J

.field static final sSmallIntStrs:[Ljava/lang/String;

.field static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    .line 7
    const v10, 0xf4240

    sput v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 8
    const v10, 0x3b9aca00

    sput v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 9
    const-wide v10, 0x2540be400L

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 10
    const-wide/16 v10, 0x3e8

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    .line 12
    const-wide/32 v10, -0x80000000

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 13
    const-wide/32 v10, 0x7fffffff

    sput-wide v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 15
    const-wide/high16 v10, -0x8000000000000000L

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 17
    const/16 v10, 0xfa0

    new-array v10, v10, [C

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    .line 18
    const/16 v10, 0xfa0

    new-array v10, v10, [C

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    .line 23
    const/4 v7, 0x0

    .line 24
    .local v7, "ix":I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_35
    const/16 v10, 0xa

    if-ge v4, v10, :cond_83

    .line 25
    add-int/lit8 v10, v4, 0x30

    int-to-char v0, v10

    .line 26
    .local v0, "f1":C
    if-nez v4, :cond_79

    const/4 v8, 0x0

    .line 27
    .local v8, "l1":C
    :goto_3f
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_40
    const/16 v10, 0xa

    if-ge v5, v10, :cond_80

    .line 28
    add-int/lit8 v10, v5, 0x30

    int-to-char v1, v10

    .line 29
    .local v1, "f2":C
    if-nez v4, :cond_7b

    if-nez v5, :cond_7b

    const/4 v9, 0x0

    .line 30
    .local v9, "l2":C
    :goto_4c
    const/4 v6, 0x0

    .local v6, "i3":I
    :goto_4d
    const/16 v10, 0xa

    if-ge v6, v10, :cond_7d

    .line 32
    add-int/lit8 v10, v6, 0x30

    int-to-char v2, v10

    .line 33
    .local v2, "f3":C
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aput-char v8, v10, v7

    .line 34
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v9, v10, v11

    .line 35
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v7, 0x2

    aput-char v2, v10, v11

    .line 36
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aput-char v0, v10, v7

    .line 37
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v1, v10, v11

    .line 38
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v7, 0x2

    aput-char v2, v10, v11

    .line 39
    add-int/lit8 v7, v7, 0x4

    .line 30
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .end local v1    # "f2":C
    .end local v2    # "f3":C
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "l1":C
    .end local v9    # "l2":C
    :cond_79
    move v8, v0

    .line 26
    goto :goto_3f

    .restart local v1    # "f2":C
    .restart local v5    # "i2":I
    .restart local v8    # "l1":C
    :cond_7b
    move v9, v1

    .line 29
    goto :goto_4c

    .line 27
    .restart local v6    # "i3":I
    .restart local v9    # "l2":C
    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 24
    .end local v1    # "f2":C
    .end local v6    # "i3":I
    .end local v9    # "l2":C
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 45
    .end local v0    # "f1":C
    .end local v5    # "i2":I
    .end local v8    # "l1":C
    :cond_83
    const/16 v10, 0xfa0

    new-array v10, v10, [B

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    .line 47
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8a
    const/16 v10, 0xfa0

    if-ge v3, v10, :cond_9a

    .line 48
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    sget-object v11, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v10, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 52
    :cond_9a
    const/16 v10, 0xb

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "6"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "7"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "8"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "9"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "10"

    aput-object v12, v10, v11

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 55
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "-1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "-2"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "-3"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "-4"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "-5"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "-6"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "-7"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "-8"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "-9"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "-10"

    aput-object v12, v10, v11

    sput-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # D

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # I

    .prologue
    .line 296
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_19

    .line 297
    if-ltz p0, :cond_c

    .line 298
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 305
    :goto_b
    return-object v1

    .line 300
    :cond_c
    neg-int v1, p0

    add-int/lit8 v0, v1, -0x1

    .line 301
    .local v0, "v2":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 302
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_b

    .line 305
    .end local v0    # "v2":I
    :cond_19
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 309
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_14

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    .line 310
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
