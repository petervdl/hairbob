.class public final enum Lcom/airbnb/android/models/ReviewRole;
.super Ljava/lang/Enum;
.source "ReviewRole.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/ReviewRole;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/ReviewRole;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ReviewRole;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Guest:Lcom/airbnb/android/models/ReviewRole;

.field public static final enum Host:Lcom/airbnb/android/models/ReviewRole;

.field public static final enum Unknown:Lcom/airbnb/android/models/ReviewRole;

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/ReviewRole;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRole:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11
    new-instance v4, Lcom/airbnb/android/models/ReviewRole;

    const-string/jumbo v5, "Host"

    const-string/jumbo v6, "host"

    invoke-direct {v4, v5, v7, v6}, Lcom/airbnb/android/models/ReviewRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->Host:Lcom/airbnb/android/models/ReviewRole;

    .line 12
    new-instance v4, Lcom/airbnb/android/models/ReviewRole;

    const-string/jumbo v5, "Guest"

    const-string/jumbo v6, "guest"

    invoke-direct {v4, v5, v8, v6}, Lcom/airbnb/android/models/ReviewRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->Guest:Lcom/airbnb/android/models/ReviewRole;

    .line 13
    new-instance v4, Lcom/airbnb/android/models/ReviewRole;

    const-string/jumbo v5, "Unknown"

    const-string/jumbo v6, ""

    invoke-direct {v4, v5, v9, v6}, Lcom/airbnb/android/models/ReviewRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->Unknown:Lcom/airbnb/android/models/ReviewRole;

    .line 9
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/airbnb/android/models/ReviewRole;

    sget-object v5, Lcom/airbnb/android/models/ReviewRole;->Host:Lcom/airbnb/android/models/ReviewRole;

    aput-object v5, v4, v7

    sget-object v5, Lcom/airbnb/android/models/ReviewRole;->Guest:Lcom/airbnb/android/models/ReviewRole;

    aput-object v5, v4, v8

    sget-object v5, Lcom/airbnb/android/models/ReviewRole;->Unknown:Lcom/airbnb/android/models/ReviewRole;

    aput-object v5, v4, v9

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->$VALUES:[Lcom/airbnb/android/models/ReviewRole;

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-static {}, Lcom/airbnb/android/models/ReviewRole;->values()[Lcom/airbnb/android/models/ReviewRole;

    move-result-object v5

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->mMap:Ljava/util/HashMap;

    .line 25
    invoke-static {}, Lcom/airbnb/android/models/ReviewRole;->values()[Lcom/airbnb/android/models/ReviewRole;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/models/ReviewRole;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4d
    if-ge v1, v2, :cond_5d

    aget-object v3, v0, v1

    .line 26
    .local v3, "role":Lcom/airbnb/android/models/ReviewRole;
    sget-object v4, Lcom/airbnb/android/models/ReviewRole;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/airbnb/android/models/ReviewRole;->getRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 56
    .end local v3    # "role":Lcom/airbnb/android/models/ReviewRole;
    :cond_5d
    new-instance v4, Lcom/airbnb/android/models/ReviewRole$1;

    invoke-direct {v4}, Lcom/airbnb/android/models/ReviewRole$1;-><init>()V

    sput-object v4, Lcom/airbnb/android/models/ReviewRole;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/airbnb/android/models/ReviewRole;->mRole:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static findRole(Ljava/lang/String;)Lcom/airbnb/android/models/ReviewRole;
    .registers 4
    .param p0, "roleString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "role":Lcom/airbnb/android/models/ReviewRole;
    if-eqz p0, :cond_13

    .line 34
    sget-object v1, Lcom/airbnb/android/models/ReviewRole;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "role":Lcom/airbnb/android/models/ReviewRole;
    check-cast v0, Lcom/airbnb/android/models/ReviewRole;

    .line 35
    .restart local v0    # "role":Lcom/airbnb/android/models/ReviewRole;
    if-eqz v0, :cond_13

    move-object v1, v0

    .line 39
    :goto_12
    return-object v1

    :cond_13
    sget-object v1, Lcom/airbnb/android/models/ReviewRole;->Unknown:Lcom/airbnb/android/models/ReviewRole;

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/ReviewRole;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/airbnb/android/models/ReviewRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/ReviewRole;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/ReviewRole;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/airbnb/android/models/ReviewRole;->$VALUES:[Lcom/airbnb/android/models/ReviewRole;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/ReviewRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/ReviewRole;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getRole()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/ReviewRole;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/models/ReviewRole;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
