.class public final enum Lcom/airbnb/android/requests/PopularRequest$ItemType;
.super Ljava/lang/Enum;
.source "PopularRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/PopularRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/requests/PopularRequest$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field public static final enum Collection:Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field public static final enum Listing:Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field public static final enum Locations:Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field public static final enum Video:Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field public static final enum WebLink:Lcom/airbnb/android/requests/PopularRequest$ItemType;

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/PopularRequest$ItemType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    const-string/jumbo v1, "Listing"

    const-string/jumbo v2, "popular_1up_listings"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/requests/PopularRequest$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Listing:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .line 26
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    const-string/jumbo v1, "Collection"

    const-string/jumbo v2, "popular_1up_wishlists"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/requests/PopularRequest$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Collection:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .line 27
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    const-string/jumbo v1, "Locations"

    const-string/jumbo v2, "popular_1up_locations"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/requests/PopularRequest$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Locations:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .line 28
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "popular_1up_video"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/requests/PopularRequest$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Video:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .line 29
    new-instance v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    const-string/jumbo v1, "WebLink"

    const-string/jumbo v2, "popular_1up_web_link"

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/requests/PopularRequest$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->WebLink:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/android/requests/PopularRequest$ItemType;

    sget-object v1, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Listing:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Collection:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Locations:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Video:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/requests/PopularRequest$ItemType;->WebLink:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->$VALUES:[Lcom/airbnb/android/requests/PopularRequest$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->key:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/airbnb/android/requests/PopularRequest$ItemType;->initializeMapIfNeeded()V

    .line 36
    invoke-static {p3, p0}, Lcom/airbnb/android/requests/PopularRequest$ItemType;->addKey(Ljava/lang/String;Lcom/airbnb/android/requests/PopularRequest$ItemType;)V

    .line 37
    return-void
.end method

.method private static addKey(Ljava/lang/String;Lcom/airbnb/android/requests/PopularRequest$ItemType;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/airbnb/android/requests/PopularRequest$ItemType;

    .prologue
    .line 42
    sget-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static findType(Ljava/lang/String;)Lcom/airbnb/android/requests/PopularRequest$ItemType;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    return-object v0
.end method

.method private static initializeMapIfNeeded()V
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->mMap:Ljava/util/HashMap;

    .line 49
    :cond_b
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/requests/PopularRequest$ItemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/requests/PopularRequest$ItemType;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/airbnb/android/requests/PopularRequest$ItemType;->$VALUES:[Lcom/airbnb/android/requests/PopularRequest$ItemType;

    invoke-virtual {v0}, [Lcom/airbnb/android/requests/PopularRequest$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/requests/PopularRequest$ItemType;

    return-object v0
.end method
