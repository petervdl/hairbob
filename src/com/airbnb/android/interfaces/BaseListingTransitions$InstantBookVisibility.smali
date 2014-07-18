.class public final enum Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
.super Ljava/lang/Enum;
.source "BaseListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/BaseListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstantBookVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field public static final enum Everyone:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field public static final enum Experienced:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field public static final enum Friends:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field public static final enum Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

.field public static sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;


# instance fields
.field public mIsDeprecated:Z

.field public mIsUserFacing:Z

.field public mServerDescKey:Ljava/lang/String;

.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    const-string/jumbo v1, "Off"

    const v3, 0x7f0e0562

    const-string/jumbo v6, "off"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 138
    new-instance v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    const-string/jumbo v4, "Everyone"

    const v6, 0x7f0e04ea

    const-string/jumbo v9, "everyone"

    move v5, v10

    move v7, v10

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Everyone:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 139
    new-instance v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    const-string/jumbo v4, "Experienced"

    const v6, 0x7f0e04eb

    const-string/jumbo v9, "experienced"

    move v5, v11

    move v7, v10

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Experienced:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 140
    new-instance v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    const-string/jumbo v4, "Friends"

    const v6, 0x7f0e04ec

    const-string/jumbo v9, "friends"

    move v5, v12

    move v7, v10

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;-><init>(Ljava/lang/String;IIZZLjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Friends:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Everyone:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    aput-object v1, v0, v10

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Experienced:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    aput-object v1, v0, v11

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Friends:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    aput-object v1, v0, v12

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 146
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Everyone:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZLjava/lang/String;)V
    .registers 7
    .param p3, "titleId"    # I
    .param p4, "isUserFacing"    # Z
    .param p5, "isDeprecated"    # Z
    .param p6, "serverDescKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mTitleId:I

    .line 150
    iput-boolean p4, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mIsUserFacing:Z

    .line 151
    iput-boolean p5, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mIsDeprecated:Z

    .line 152
    iput-object p6, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    .line 175
    .local v0, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 176
    :cond_9
    const/4 v1, 0x0

    .line 178
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 7
    .param p0, "roomTypeKey"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v4

    .line 184
    .local v4, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    move-object v0, v4

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 185
    .local v3, "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    iget-object v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 189
    .end local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :goto_13
    return-object v3

    .line 184
    .restart local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 189
    .end local v3    # "space":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :cond_17
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static userFacingValues(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)Ljava/util/List;
    .registers 8
    .param p0, "currentVisibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;>;"
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_27

    aget-object v3, v0, v1

    .line 163
    .local v3, "value":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    iget-boolean v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mIsUserFacing:Z

    if-eqz v5, :cond_24

    .line 165
    iget-boolean v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mIsDeprecated:Z

    if-eqz v5, :cond_21

    iget-object v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 166
    :cond_21
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    .end local v3    # "value":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :cond_27
    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    return-object v0
.end method
