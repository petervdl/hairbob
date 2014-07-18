.class public final enum Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
.super Ljava/lang/Enum;
.source "BaseListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/BaseListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstantBookAdvanceNotice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field public static final enum One:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field public static final enum SameDay:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field public static final enum Seven:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field public static final enum Three:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

.field public static sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;


# instance fields
.field public mServerDescKey:I

.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    const-string/jumbo v1, "SameDay"

    const v2, 0x7f0e04e9

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->SameDay:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 195
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    const-string/jumbo v1, "One"

    const v2, 0x7f0e04e6

    const/16 v3, 0x18

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->One:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 196
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    const-string/jumbo v1, "Three"

    const v2, 0x7f0e04e7

    const/16 v3, 0x48

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->Three:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 197
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    const-string/jumbo v1, "Seven"

    const v2, 0x7f0e04e8

    const/16 v3, 0xa8

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->Seven:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->SameDay:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->One:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->Three:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->Seven:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    aput-object v1, v0, v7

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 201
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->One:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "titleId"    # I
    .param p4, "serverDescKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput p3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mTitleId:I

    .line 205
    iput p4, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    .line 206
    return-void
.end method

.method public static getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v0

    .line 210
    .local v0, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 211
    :cond_9
    const/4 v1, 0x0

    .line 213
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 8
    .param p0, "advanceNoticeKey"    # I

    .prologue
    .line 217
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v5

    .line 222
    .local v5, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    sget-object v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    iget v6, v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    if-ge p0, v6, :cond_f

    .line 223
    sget-object v4, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->SameDay:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 224
    .local v4, "sameDayNotice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    iput p0, v4, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    .line 233
    .end local v4    # "sameDayNotice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    :goto_e
    return-object v4

    .line 228
    :cond_f
    move-object v1, v5

    .local v1, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1f

    aget-object v0, v1, v2

    .line 229
    .local v0, "advanceNotice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    iget v6, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    if-ne v6, p0, :cond_1c

    move-object v4, v0

    .line 230
    goto :goto_e

    .line 228
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 233
    .end local v0    # "advanceNotice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    :cond_1f
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    return-object v0
.end method
