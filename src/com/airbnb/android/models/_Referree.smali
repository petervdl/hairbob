.class abstract Lcom/airbnb/android/models/_Referree;
.super Ljava/lang/Object;
.source "_Referree.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mEmail:Ljava/lang/String;

.field protected mFullName:Ljava/lang/String;

.field protected mId:J

.field protected mPhoneNumber:Ljava/lang/String;

.field protected mPhotoUrl:Ljava/lang/String;

.field protected mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

.field protected mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

.field protected mStatus:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "photoUrl"    # Ljava/lang/String;
    .param p6, "referrerCreditEarnedDisplayAmount"    # Ljava/lang/String;
    .param p7, "referrerCreditPendingDisplayAmount"    # Ljava/lang/String;
    .param p8, "id"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/models/_Referree;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mFullName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/airbnb/android/models/_Referree;->mEmail:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/airbnb/android/models/_Referree;->mPhoneNumber:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/airbnb/android/models/_Referree;->mStatus:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/airbnb/android/models/_Referree;->mPhotoUrl:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

    .line 31
    iput-wide p8, p0, Lcom/airbnb/android/models/_Referree;->mId:J

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/airbnb/android/models/_Referree;->mId:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerCreditEarnedDisplayAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerCreditPendingDisplayAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mFullName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mEmail:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhoneNumber:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mStatus:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhotoUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_Referree;->mId:J

    .line 150
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mEmail:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_name"
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mFullName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/airbnb/android/models/_Referree;->mId:J

    .line 123
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone_number"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mPhoneNumber:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_url"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mPhotoUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setReferrerCreditEarnedDisplayAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer_credit_earned_display_amount"
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setReferrerCreditPendingDisplayAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer_credit_pending_display_amount"
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/_Referree;->mStatus:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mFullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditEarnedDisplayAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/models/_Referree;->mReferrerCreditPendingDisplayAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-wide v0, p0, Lcom/airbnb/android/models/_Referree;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
