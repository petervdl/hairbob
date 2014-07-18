.class public Lcom/airbnb/android/models/messages/RichTextMessage;
.super Ljava/lang/Object;
.source "RichTextMessage.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessage;


# instance fields
.field private mAuthor:Lcom/airbnb/android/models/User;

.field private mContent:Ljava/lang/String;

.field private mId:J

.field private mSentDate:Ljava/util/Date;

.field private mSentStatus:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

.field private mType:Lcom/airbnb/android/interfaces/RichMessage$MessageType;


# direct methods
.method public constructor <init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "type"    # Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "author"    # Lcom/airbnb/android/models/User;
    .param p6, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 18
    sget-object v7, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/models/messages/RichTextMessage;-><init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V

    .line 19
    return-void
.end method

.method public constructor <init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
    .registers 8
    .param p1, "id"    # J
    .param p3, "type"    # Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "author"    # Lcom/airbnb/android/models/User;
    .param p6, "sentDate"    # Ljava/util/Date;
    .param p7, "status"    # Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mId:J

    .line 23
    iput-object p3, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mType:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 24
    iput-object p4, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mContent:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mAuthor:Lcom/airbnb/android/models/User;

    .line 26
    iput-object p6, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mSentDate:Ljava/util/Date;

    .line 27
    iput-object p7, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mSentStatus:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p0, p1, :cond_5

    .line 65
    :cond_4
    :goto_4
    return v1

    .line 62
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/airbnb/android/models/messages/RichTextMessage;

    .line 64
    .local v0, "that":Lcom/airbnb/android/models/messages/RichTextMessage;
    iget-wide v3, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/messages/RichTextMessage;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mAuthor:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mType:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mSentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mSentStatus:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mId:J

    iget-wide v2, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
    .registers 2
    .param p1, "sentStatus"    # Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/models/messages/RichTextMessage;->mSentStatus:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 57
    return-void
.end method
