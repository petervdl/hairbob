.class abstract Lcom/airbnb/android/models/_SocialConnection;
.super Ljava/lang/Object;
.source "_SocialConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCaption:Ljava/lang/String;

.field protected mConnectionType:I

.field protected mLinkingObjectId:J

.field protected mLinkingUser:Lcom/airbnb/android/models/User;

.field protected mOfflineLinkingName:Ljava/lang/String;

.field protected mPicUrlLarge:Ljava/lang/String;

.field protected mPicUrlSmall:Ljava/lang/String;

.field protected mPopulated:Z

.field protected mTargetUserId:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;ZIJJ)V
    .registers 12
    .param p1, "offlineLinkingName"    # Ljava/lang/String;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "picUrlLarge"    # Ljava/lang/String;
    .param p4, "picUrlSmall"    # Ljava/lang/String;
    .param p5, "linkingUser"    # Lcom/airbnb/android/models/User;
    .param p6, "populated"    # Z
    .param p7, "connectionType"    # I
    .param p8, "targetUserId"    # J
    .param p10, "linkingObjectId"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/models/_SocialConnection;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mOfflineLinkingName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/airbnb/android/models/_SocialConnection;->mCaption:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlLarge:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlSmall:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    .line 30
    iput-boolean p6, p0, Lcom/airbnb/android/models/_SocialConnection;->mPopulated:Z

    .line 31
    iput p7, p0, Lcom/airbnb/android/models/_SocialConnection;->mConnectionType:I

    .line 32
    iput-wide p8, p0, Lcom/airbnb/android/models/_SocialConnection;->mTargetUserId:J

    .line 33
    iput-wide p10, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingObjectId:J

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mConnectionType:I

    return v0
.end method

.method public getLinkingObjectId()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingObjectId:J

    return-wide v0
.end method

.method public getLinkingUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getOfflineLinkingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mOfflineLinkingName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrlLarge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrlSmall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mTargetUserId:J

    return-wide v0
.end method

.method public isPopulated()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mPopulated:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mOfflineLinkingName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mCaption:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlLarge:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlSmall:Ljava/lang/String;

    .line 142
    const-class v1, Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    iput-object v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 144
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mPopulated:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mConnectionType:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mTargetUserId:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingObjectId:J

    .line 148
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "caption"
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mCaption:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setConnectionType(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "connection_type"
    .end annotation

    .prologue
    .line 95
    iput p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mConnectionType:I

    .line 96
    return-void
.end method

.method public setLinkingObjectId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "linking_object_id"
    .end annotation

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingObjectId:J

    .line 118
    return-void
.end method

.method public setOfflineLinkingName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "offline_linking_name"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mOfflineLinkingName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPopulated(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "populated"
    .end annotation

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mPopulated:Z

    .line 85
    return-void
.end method

.method public setTargetUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "target_user_id"
    .end annotation

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/airbnb/android/models/_SocialConnection;->mTargetUserId:J

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mOfflineLinkingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mPicUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_SocialConnection;->mPopulated:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 132
    iget v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-wide v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mTargetUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/airbnb/android/models/_SocialConnection;->mLinkingObjectId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    return-void
.end method
