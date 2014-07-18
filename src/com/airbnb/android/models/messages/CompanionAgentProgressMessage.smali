.class public Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;
.super Ljava/lang/Object;
.source "CompanionAgentProgressMessage.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessage;


# instance fields
.field private mAboutMe:Ljava/lang/String;

.field private mAgent:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/User;Ljava/lang/String;)V
    .registers 3
    .param p1, "agent"    # Lcom/airbnb/android/models/User;
    .param p2, "aboutMe"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->mAgent:Lcom/airbnb/android/models/User;

    .line 15
    iput-object p2, p0, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->mAboutMe:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getAboutMe()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->mAboutMe:Ljava/lang/String;

    return-object v0
.end method

.method public getAgent()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->mAgent:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_AGENT_PROGRESS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
    .registers 2
    .param p1, "sentStatus"    # Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .prologue
    .line 44
    return-void
.end method
