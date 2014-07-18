.class public Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;
.super Lcom/airbnb/android/events/WishListModifiedEvent;
.source "WishListModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/WishListModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WishListDeletedEvent"
.end annotation


# instance fields
.field public wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Collection;)V
    .registers 2
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/events/WishListModifiedEvent;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;->wishList:Lcom/airbnb/android/models/Collection;

    .line 13
    return-void
.end method
