.class public Lcom/airbnb/android/utils/ParcelStrap;
.super Ljava/lang/Object;
.source "ParcelStrap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/utils/ParcelStrap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrap:Lcom/airbnb/android/utils/Strap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/airbnb/android/utils/ParcelStrap$1;

    invoke-direct {v0}, Lcom/airbnb/android/utils/ParcelStrap$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/ParcelStrap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    .line 18
    return-void
.end method

.method public static make()Lcom/airbnb/android/utils/ParcelStrap;
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/airbnb/android/utils/ParcelStrap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/ParcelStrap;-><init>()V

    return-object v0
.end method

.method public static make(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/ParcelStrap;
    .registers 2
    .param p0, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 25
    invoke-static {}, Lcom/airbnb/android/utils/ParcelStrap;->make()Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v0

    .line 26
    .local v0, "parcelStrap":Lcom/airbnb/android/utils/ParcelStrap;
    iput-object p0, v0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    .line 27
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public internal()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/ParcelStrap;
    .registers 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/Strap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v2, p0, Lcom/airbnb/android/utils/ParcelStrap;->mStrap:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/Strap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    .local v1, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_13

    .line 51
    .end local v1    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_32
    return-void
.end method
