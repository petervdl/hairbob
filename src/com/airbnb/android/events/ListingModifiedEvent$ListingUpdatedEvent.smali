.class public Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
.super Lcom/airbnb/android/events/ListingModifiedEvent;
.source "ListingModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/ListingModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingUpdatedEvent"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/events/ListingModifiedEvent;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    .line 37
    return-void
.end method