.class public Lcom/airbnb/android/models/SearchGeography;
.super Lcom/airbnb/android/models/_SearchGeography;
.source "SearchGeography.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SearchGeography;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/airbnb/android/models/SearchGeography$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SearchGeography$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SearchGeography;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/_SearchGeography;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_SearchGeography;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_SearchGeography;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLat()D
    .registers 3

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_SearchGeography;->getLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLng()D
    .registers 3

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_SearchGeography;->getLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPrecision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_SearchGeography;->getPrecision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPreciseLocation()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchGeography;->getPrecision()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "precision":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 32
    :cond_b
    :goto_b
    return v1

    :cond_c
    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "street"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "building"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_30
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SearchGeography;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SearchGeography;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SearchGeography;->setLat(D)V

    return-void
.end method

.method public bridge synthetic setLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SearchGeography;->setLng(D)V

    return-void
.end method

.method public bridge synthetic setPrecision(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SearchGeography;->setPrecision(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SearchGeography;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
