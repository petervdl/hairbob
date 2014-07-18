.class abstract Lcom/airbnb/android/models/localcompanion/_CompanionPost;
.super Ljava/lang/Object;
.source "_CompanionPost.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCompanionThreadId:J

.field protected mCreatedAt:Ljava/util/Date;

.field protected mFullName:Ljava/lang/String;

.field protected mId:J

.field protected mMessage:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserId:J

.field protected mVotes:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .registers 13
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "fullName"    # Ljava/lang/String;
    .param p6, "votes"    # I
    .param p7, "id"    # J
    .param p9, "companionThreadId"    # J
    .param p11, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJ)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "places":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPlace;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    .line 28
    iput-object p2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mPlaces:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mMessage:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mName:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mFullName:Ljava/lang/String;

    .line 32
    iput p6, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mVotes:I

    .line 33
    iput-wide p7, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mId:J

    .line 34
    iput-wide p9, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCompanionThreadId:J

    .line 35
    iput-wide p11, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mUserId:J

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanionThreadId()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCompanionThreadId:J

    return-wide v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mPlaces:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mUserId:J

    return-wide v0
.end method

.method public getVotes()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mVotes:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 153
    .local v0, "date0":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 154
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    .line 156
    :cond_12
    sget-object v2, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mPlaces:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mMessage:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mFullName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mVotes:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mId:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCompanionThreadId:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mUserId:J

    .line 164
    return-void
.end method

.method public setCompanionThreadId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "companion_thread_id"
    .end annotation

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCompanionThreadId:J

    .line 121
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_name"
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mFullName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mId:J

    .line 110
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mMessage:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mUserId:J

    .line 132
    return-void
.end method

.method public setVotes(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "votes"
    .end annotation

    .prologue
    .line 98
    iput p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mVotes:I

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_33

    const-wide/32 v0, -0x80000000

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mPlaces:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mFullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mVotes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCompanionThreadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    return-void

    .line 140
    :cond_33
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_7
.end method
