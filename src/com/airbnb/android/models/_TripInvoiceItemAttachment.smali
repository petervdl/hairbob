.class abstract Lcom/airbnb/android/models/_TripInvoiceItemAttachment;
.super Ljava/lang/Object;
.source "_TripInvoiceItemAttachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAttachmentType:Ljava/lang/String;

.field protected mAuthor:Lcom/airbnb/android/models/User;

.field protected mContent:Ljava/lang/String;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mId:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;J)V
    .registers 7
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "attachmentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "author"    # Lcom/airbnb/android/models/User;
    .param p5, "id"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAttachmentType:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mContent:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAuthor:Lcom/airbnb/android/models/User;

    .line 26
    iput-wide p5, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mId:J

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAttachmentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAuthor:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mId:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 102
    .local v0, "date0":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 103
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    .line 105
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAttachmentType:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mContent:Ljava/lang/String;

    .line 107
    const-class v2, Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/User;

    iput-object v2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAuthor:Lcom/airbnb/android/models/User;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mId:J

    .line 109
    return-void
.end method

.method public setAttachmentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "attachment_type"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAttachmentType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setAuthor(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "author"
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAuthor:Lcom/airbnb/android/models/User;

    .line 74
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mContent:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    .line 41
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mId:J

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_20

    const-wide/32 v0, -0x80000000

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAttachmentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mAuthor:Lcom/airbnb/android/models/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    return-void

    .line 93
    :cond_20
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_7
.end method
