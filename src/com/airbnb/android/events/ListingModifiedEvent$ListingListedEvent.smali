.class public Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;
.super Lcom/airbnb/android/events/ListingModifiedEvent;
.source "ListingModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/ListingModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingListedEvent"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/events/ListingModifiedEvent;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;->listing:Lcom/airbnb/android/models/Listing;

    .line 21
    return-void
.end method
