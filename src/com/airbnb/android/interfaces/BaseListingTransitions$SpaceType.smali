.class public final enum Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
.super Ljava/lang/Enum;
.source "BaseListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/BaseListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

.field public static final enum EntireHome:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

.field public static final enum PrivateRoom:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

.field public static final enum SharedSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;


# instance fields
.field public mDescId:I

.field public mIconId:I

.field public mPromptId:I

.field public mServerDescKey:Ljava/lang/String;

.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    const-string/jumbo v1, "EntireHome"

    const v3, 0x7f020135

    const v4, 0x7f0e01ab

    const v5, 0x7f0e040d

    const v6, 0x7f0e045b

    const-string/jumbo v7, "entire_home"

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->EntireHome:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 14
    new-instance v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    const-string/jumbo v4, "PrivateRoom"

    const v6, 0x7f02015d

    const v7, 0x7f0e05d9

    const v8, 0x7f0e0445

    const v9, 0x7f0e045c

    const-string/jumbo v10, "private_room"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->PrivateRoom:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 16
    new-instance v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    const-string/jumbo v4, "SharedSpace"

    const v6, 0x7f020167

    const v7, 0x7f0e0702

    const v8, 0x7f0e048b

    const v9, 0x7f0e045d

    const-string/jumbo v10, "shared_room"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->SharedSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->EntireHome:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->PrivateRoom:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->SharedSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .registers 8
    .param p3, "iconId"    # I
    .param p4, "titleId"    # I
    .param p5, "descId"    # I
    .param p6, "promptId"    # I
    .param p7, "serverDescKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mIconId:I

    .line 28
    iput p4, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    .line 29
    iput p5, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mDescId:I

    .line 30
    iput p6, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mPromptId:I

    .line 31
    iput-object p7, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v0

    .line 36
    .local v0, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 37
    :cond_9
    const/4 v1, 0x0

    .line 39
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 7
    .param p0, "roomTypeKey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v4

    .line 45
    .local v4, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    move-object v0, v4

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 46
    .local v3, "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    iget-object v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 50
    .end local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    :goto_13
    return-object v3

    .line 45
    .restart local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 50
    .end local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    :cond_17
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    return-object v0
.end method
