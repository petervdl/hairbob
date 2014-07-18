.class public Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;
.super Ljava/lang/Object;
.source "EnableLastMinuteBookingsFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# instance fields
.field private mEligibleListingsNotLastMinuteBookable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/User;Ljava/util/List;)V
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/User;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "eligibleListingsNotLastMinuteBookable":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->mUser:Lcom/airbnb/android/models/User;

    .line 15
    iput-object p2, p0, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->mEligibleListingsNotLastMinuteBookable:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public getEligibleListingsNotLastMinuteBookable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->mEligibleListingsNotLastMinuteBookable:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ENABLE_LMB:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method
