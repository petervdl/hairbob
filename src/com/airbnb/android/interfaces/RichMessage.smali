.class public interface abstract Lcom/airbnb/android/interfaces/RichMessage;
.super Ljava/lang/Object;
.source "RichMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/interfaces/RichMessage$SentStatus;,
        Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    }
.end annotation


# virtual methods
.method public abstract getAuthor()Lcom/airbnb/android/models/User;
.end method

.method public abstract getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;
.end method

.method public abstract getSentDate()Ljava/util/Date;
.end method

.method public abstract getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
.end method

.method public abstract setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V
.end method
