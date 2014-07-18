.class public interface abstract Lcom/airbnb/android/interfaces/TravelInboxItem;
.super Ljava/lang/Object;
.source "TravelInboxItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
    }
.end annotation


# virtual methods
.method public abstract getTravelInboxImageUrl()Ljava/lang/String;
.end method

.method public abstract getTravelInboxStatusStringId()I
.end method

.method public abstract getTravelInboxStatusTextColor()I
.end method

.method public abstract getTravelInboxSubtitle()Ljava/lang/String;
.end method

.method public abstract getTravelInboxTime()Ljava/util/Date;
.end method

.method public abstract getTravelInboxTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
.end method

.method public abstract getUser()Lcom/airbnb/android/models/User;
.end method

.method public abstract isTravelInboxUnread()Z
.end method
