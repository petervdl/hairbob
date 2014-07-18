.class public Lcom/airbnb/android/models/ProfilePhoneNumber;
.super Lcom/airbnb/android/models/_ProfilePhoneNumber;
.source "ProfilePhoneNumber.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/ProfilePhoneNumber$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/ProfilePhoneNumber$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/ProfilePhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p0, p1, :cond_5

    .line 45
    :cond_4
    :goto_4
    return v1

    .line 35
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 36
    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 39
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/airbnb/android/models/ProfilePhoneNumber;

    .line 42
    .local v0, "other":Lcom/airbnb/android/models/ProfilePhoneNumber;
    iget-wide v3, p0, Lcom/airbnb/android/models/ProfilePhoneNumber;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/ProfilePhoneNumber;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 43
    goto :goto_4
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->getNumberFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 24
    const/16 v0, 0x1f

    .line 25
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 26
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/ProfilePhoneNumber;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/ProfilePhoneNumber;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 27
    return v1
.end method

.method public bridge synthetic isVerified()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->isVerified()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->setId(J)V

    return-void
.end method

.method public bridge synthetic setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNumberFormatted(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->setNumberFormatted(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setVerified(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->setVerified(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_ProfilePhoneNumber;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
