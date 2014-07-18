.class abstract Lcom/airbnb/android/models/localcompanion/_CompanionThread;
.super Ljava/lang/Object;
.source "_CompanionThread.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAgentBio:Ljava/lang/String;

.field protected mAgentId:J

.field protected mAgentName:Ljava/lang/String;

.field protected mAgentProfilePictureUrl:Ljava/lang/String;

.field protected mAgentRealName:Ljava/lang/String;

.field protected mConfirmationCode:Ljava/lang/String;

.field protected mId:J

.field protected mIsClosed:Z

.field protected mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPost;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreview:Ljava/lang/String;

.field protected mReservationId:J

.field protected mShortPreview:Ljava/lang/String;

.field protected mUserFullName:Ljava/lang/String;

.field protected mUserId:J

.field protected mUserName:Ljava/lang/String;

.field protected mUserProfilePictureUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V
    .registers 23
    .param p2, "confirmationCode"    # Ljava/lang/String;
    .param p3, "preview"    # Ljava/lang/String;
    .param p4, "shortPreview"    # Ljava/lang/String;
    .param p5, "userName"    # Ljava/lang/String;
    .param p6, "userFullName"    # Ljava/lang/String;
    .param p7, "userProfilePictureUrl"    # Ljava/lang/String;
    .param p8, "agentRealName"    # Ljava/lang/String;
    .param p9, "agentName"    # Ljava/lang/String;
    .param p10, "agentProfilePictureUrl"    # Ljava/lang/String;
    .param p11, "agentBio"    # Ljava/lang/String;
    .param p12, "isClosed"    # Z
    .param p13, "id"    # J
    .param p15, "reservationId"    # J
    .param p17, "userId"    # J
    .param p19, "agentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPost;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJJJ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPost;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPosts:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mConfirmationCode:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPreview:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mShortPreview:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserName:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserFullName:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserProfilePictureUrl:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentRealName:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentName:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentProfilePictureUrl:Ljava/lang/String;

    .line 43
    iput-object p11, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentBio:Ljava/lang/String;

    .line 44
    iput-boolean p12, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mIsClosed:Z

    .line 45
    iput-wide p13, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mId:J

    .line 46
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mReservationId:J

    .line 47
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserId:J

    .line 48
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentId:J

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getAgentBio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentBio:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentId()J
    .registers 3

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentId:J

    return-wide v0
.end method

.method public getAgentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentProfilePictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentProfilePictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentRealName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mConfirmationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mId:J

    return-wide v0
.end method

.method public getPosts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationId()J
    .registers 3

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mReservationId:J

    return-wide v0
.end method

.method public getShortPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mShortPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfilePictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserProfilePictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mIsClosed:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 249
    sget-object v1, Lcom/airbnb/android/models/localcompanion/CompanionPost;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPosts:Ljava/util/List;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mConfirmationCode:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPreview:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mShortPreview:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserName:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserFullName:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserProfilePictureUrl:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentRealName:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentName:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentProfilePictureUrl:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentBio:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 261
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mIsClosed:Z

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mId:J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mReservationId:J

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserId:J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentId:J

    .line 266
    return-void
.end method

.method public setAgentBio(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "agent_bio"
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentBio:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setAgentId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "agent_id"
    .end annotation

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentId:J

    .line 222
    return-void
.end method

.method public setAgentName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "agent_name"
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setAgentProfilePictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "agent_profile_picture_url"
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentProfilePictureUrl:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setAgentRealName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "agent_real_name"
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentRealName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "confirmation_code"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mConfirmationCode:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mId:J

    .line 189
    return-void
.end method

.method public setIsClosed(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_closed"
    .end annotation

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mIsClosed:Z

    .line 178
    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPreview:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setReservationId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation_id"
    .end annotation

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mReservationId:J

    .line 200
    return-void
.end method

.method public setShortPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "short_preview"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mShortPreview:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUserFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_full_name"
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserFullName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserId:J

    .line 211
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_name"
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserProfilePictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_profile_picture_url"
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserProfilePictureUrl:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPosts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mPreview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mShortPreview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserFullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserProfilePictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentRealName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentProfilePictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentBio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mIsClosed:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 242
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mReservationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->mAgentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    return-void
.end method
