.class public Lcom/airbnb/android/models/messages/CompanionMapMessage;
.super Ljava/lang/Object;
.source "CompanionMapMessage.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessage;


# instance fields
.field private mAgentBio:Ljava/lang/String;

.field private mAuthor:Lcom/airbnb/android/models/User;

.field private mCompanionPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageText:Ljava/lang/String;

.field private mSentDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/models/User;Ljava/util/Date;Ljava/lang/String;)V
    .registers 6
    .param p1, "messageText"    # Ljava/lang/String;
    .param p3, "author"    # Lcom/airbnb/android/models/User;
    .param p4, "sentDate"    # Ljava/util/Date;
    .param p5, "agentBio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;",
            "Lcom/airbnb/android/models/User;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "places":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPlace;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mMessageText:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mCompanionPlaces:Ljava/util/List;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mAuthor:Lcom/airbnb/android/models/User;

    .line 23
    iput-object p4, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mSentDate:Ljava/util/Date;

    .line 24
    iput-object p5, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mAgentBio:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAgentBio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mAgentBio:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mAuthor:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getCompanionPlaces()Ljava/util/List;
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
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mCompanionPlaces:Ljava/util/List;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_MAP:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionMapMessage;->mSentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    return-object v0
.end method

.method public setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
    .registers 2
    .param p1, "sentStatus"    # Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .prologue
    .line 51
    return-void
.end method
