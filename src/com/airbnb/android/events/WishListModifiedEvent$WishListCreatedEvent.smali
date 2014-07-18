.class public Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;
.super Lcom/airbnb/android/events/WishListModifiedEvent;
.source "WishListModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/WishListModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WishListCreatedEvent"
.end annotation


# instance fields
.field public wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Collection;)V
    .registers 2
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/events/WishListModifiedEvent;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;->wishList:Lcom/airbnb/android/models/Collection;

    .line 21
    return-void
.end method
