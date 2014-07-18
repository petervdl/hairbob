.class public final enum Lcom/airbnb/android/models/SearchInfo$SortType;
.super Ljava/lang/Enum;
.source "SearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/SearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/SearchInfo$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum HostResponseTime:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Newest:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Outstanding:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Points:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Price:Lcom/airbnb/android/models/SearchInfo$SortType;

.field public static final enum Rank:Lcom/airbnb/android/models/SearchInfo$SortType;


# instance fields
.field public key:I

.field public trackingString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 105
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Points"

    const-string/jumbo v2, "points"

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Points:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 106
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Distance"

    const-string/jumbo v2, "distance"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 107
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Rank"

    const-string/jumbo v2, "rank"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Rank:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 108
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Newest"

    const/4 v2, 0x7

    const-string/jumbo v3, "newest"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Newest:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 109
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "HostResponseTime"

    const/4 v2, 0x4

    const/16 v3, 0xa

    const-string/jumbo v4, "host_response_time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->HostResponseTime:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 110
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Outstanding"

    const/4 v2, 0x5

    const/16 v3, 0xb

    const-string/jumbo v4, "outstanding"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Outstanding:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 111
    new-instance v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    const-string/jumbo v1, "Price"

    const/16 v2, 0xc

    const-string/jumbo v3, "price"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/airbnb/android/models/SearchInfo$SortType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Price:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/airbnb/android/models/SearchInfo$SortType;

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Points:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Rank:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Newest:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SortType;->HostResponseTime:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SortType;->Outstanding:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Price:Lcom/airbnb/android/models/SearchInfo$SortType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->$VALUES:[Lcom/airbnb/android/models/SearchInfo$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "key"    # I
    .param p4, "trackingString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/airbnb/android/models/SearchInfo$SortType;->key:I

    .line 118
    iput-object p4, p0, Lcom/airbnb/android/models/SearchInfo$SortType;->trackingString:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static find(I)Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 6
    .param p0, "key"    # I

    .prologue
    .line 122
    invoke-static {}, Lcom/airbnb/android/models/SearchInfo$SortType;->values()[Lcom/airbnb/android/models/SearchInfo$SortType;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/models/SearchInfo$SortType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 123
    .local v3, "type":Lcom/airbnb/android/models/SearchInfo$SortType;
    iget v4, v3, Lcom/airbnb/android/models/SearchInfo$SortType;->key:I

    if-ne v4, p0, :cond_f

    .line 127
    .end local v3    # "type":Lcom/airbnb/android/models/SearchInfo$SortType;
    :goto_e
    return-object v3

    .line 122
    .restart local v3    # "type":Lcom/airbnb/android/models/SearchInfo$SortType;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    .end local v3    # "type":Lcom/airbnb/android/models/SearchInfo$SortType;
    :cond_12
    const/4 v3, 0x0

    goto :goto_e
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SearchInfo$SortType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->$VALUES:[Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/SearchInfo$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/SearchInfo$SortType;

    return-object v0
.end method
