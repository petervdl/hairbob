.class public Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;
.super Lcom/airbnb/android/events/ListingModifiedEvent;
.source "ListingModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/ListingModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingDeletedEvent"
.end annotation


# instance fields
.field public listingId:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .param p1, "listingId"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/events/ListingModifiedEvent;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;->listingId:J

    .line 13
    return-void
.end method
