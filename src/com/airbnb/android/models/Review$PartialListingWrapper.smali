.class Lcom/airbnb/android/models/Review$PartialListingWrapper;
.super Ljava/lang/Object;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialListingWrapper"
.end annotation


# instance fields
.field private listingWrapper:Lcom/airbnb/android/models/PartialListing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/models/Review$PartialListingWrapper;)Lcom/airbnb/android/models/PartialListing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/models/Review$PartialListingWrapper;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/airbnb/android/models/Review$PartialListingWrapper;->listingWrapper:Lcom/airbnb/android/models/PartialListing;

    return-object v0
.end method
