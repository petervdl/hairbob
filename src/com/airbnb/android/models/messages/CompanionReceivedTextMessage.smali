.class public Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;
.super Lcom/airbnb/android/models/messages/RichTextMessage;
.source "CompanionReceivedTextMessage.java"


# instance fields
.field private mAboutMe:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # J
    .param p3, "type"    # Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "author"    # Lcom/airbnb/android/models/User;
    .param p6, "sentDate"    # Ljava/util/Date;
    .param p7, "aboutMe"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/android/models/messages/RichTextMessage;-><init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;)V

    .line 13
    iput-object p7, p0, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;->mAboutMe:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAboutMe()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;->mAboutMe:Ljava/lang/String;

    return-object v0
.end method
