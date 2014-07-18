.class public Lcom/airbnb/android/events/ListingModifiedEvent$CompleteProfileCompletedEvent;
.super Lcom/airbnb/android/events/ListingModifiedEvent;
.source "ListingModifiedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/events/ListingModifiedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteProfileCompletedEvent"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/events/ListingModifiedEvent;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/airbnb/android/events/ListingModifiedEvent$CompleteProfileCompletedEvent;->listing:Lcom/airbnb/android/models/Listing;

    .line 45
    return-void
.end method
