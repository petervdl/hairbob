.class public Lcom/airbnb/android/models/messages/RichStatusMessage;
.super Ljava/lang/Object;
.source "RichStatusMessage.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/messages/RichStatusMessage$Type;
    }
.end annotation


# instance fields
.field private mStatusText:Ljava/lang/String;

.field private mType:Lcom/airbnb/android/models/messages/RichStatusMessage$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/models/messages/RichStatusMessage$Type;)V
    .registers 3
    .param p1, "statusText"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/messages/RichStatusMessage;->mStatusText:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/messages/RichStatusMessage;->mType:Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    .line 21
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->STATUS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    return-object v0
.end method

.method public getStatusMessageType()Lcom/airbnb/android/models/messages/RichStatusMessage$Type;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichStatusMessage;->mType:Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/models/messages/RichStatusMessage;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
    .registers 2
    .param p1, "sentStatus"    # Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .prologue
    .line 53
    return-void
.end method
