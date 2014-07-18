.class public Lcom/airbnb/android/models/Referree;
.super Lcom/airbnb/android/models/_Referree;
.source "Referree.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/Referree$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Referree$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Referree;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_Referree;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReferrerCreditEarnedDisplayAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getReferrerCreditEarnedDisplayAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReferrerCreditPendingDisplayAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getReferrerCreditPendingDisplayAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_Referree;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProfilePic()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/airbnb/android/models/Referree;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 30
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/airbnb/android/models/Referree;->mPhotoUrl:Ljava/lang/String;

    const-string/jumbo v2, "defaults/user_pic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setFullName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Referree;->setId(J)V

    return-void
.end method

.method public bridge synthetic setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPhotoUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setPhotoUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setReferrerCreditEarnedDisplayAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setReferrerCreditEarnedDisplayAmount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setReferrerCreditPendingDisplayAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setReferrerCreditPendingDisplayAmount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Referree;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Referree;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
