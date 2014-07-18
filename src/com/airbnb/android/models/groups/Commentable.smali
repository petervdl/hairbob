.class public interface abstract Lcom/airbnb/android/models/groups/Commentable;
.super Ljava/lang/Object;
.source "Commentable.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/Authorable;


# virtual methods
.method public abstract getParticipants()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/airbnb/android/models/User;",
            ">;"
        }
    .end annotation
.end method
