.class abstract Lcom/airbnb/android/models/_PayoutInfo;
.super Ljava/lang/Object;
.source "_PayoutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCurrency:Ljava/lang/String;

.field protected mDescription:Ljava/lang/String;

.field protected mDescriptionShort:Ljava/lang/String;

.field protected mIsDefault:Z

.field protected mPayoutId:J

.field protected mStatus:Ljava/lang/String;

.field protected mStatusCode:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mTypeString:Ljava/lang/String;

.field protected mUserId:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 13
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "statusCode"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "typeString"    # Ljava/lang/String;
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "descriptionShort"    # Ljava/lang/String;
    .param p8, "isDefault"    # Z
    .param p9, "payoutId"    # J
    .param p11, "userId"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/models/_PayoutInfo;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatus:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatusCode:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/airbnb/android/models/_PayoutInfo;->mType:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/airbnb/android/models/_PayoutInfo;->mTypeString:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/airbnb/android/models/_PayoutInfo;->mCurrency:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescription:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescriptionShort:Ljava/lang/String;

    .line 33
    iput-boolean p8, p0, Lcom/airbnb/android/models/_PayoutInfo;->mIsDefault:Z

    .line 34
    iput-wide p9, p0, Lcom/airbnb/android/models/_PayoutInfo;->mPayoutId:J

    .line 35
    iput-wide p11, p0, Lcom/airbnb/android/models/_PayoutInfo;->mUserId:J

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescriptionShort:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoutId()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mPayoutId:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mUserId:J

    return-wide v0
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mIsDefault:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatus:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatusCode:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mType:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mTypeString:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mCurrency:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescription:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescriptionShort:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 178
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mIsDefault:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mPayoutId:J

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mUserId:J

    .line 181
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mCurrency:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_description"
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescription:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDescriptionShort(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mini_description"
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescriptionShort:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setIsDefault(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_default"
    .end annotation

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mIsDefault:Z

    .line 127
    return-void
.end method

.method public setPayoutId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mPayoutId:J

    .line 138
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatus:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status_code"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatusCode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "info_type"
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTypeString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "info_type_string"
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mTypeString:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/airbnb/android/models/_PayoutInfo;->mUserId:J

    .line 149
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mStatusCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mDescriptionShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_PayoutInfo;->mIsDefault:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 165
    iget-wide v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mPayoutId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Lcom/airbnb/android/models/_PayoutInfo;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    return-void
.end method
