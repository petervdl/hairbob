.class Lcom/airbnb/android/fragments/ReviewsFragment$3;
.super Lcom/airbnb/android/requests/AirRequestFactory;
.source "ReviewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ReviewsFragment;->setListingReviewAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirRequestFactory",
        "<",
        "Lcom/airbnb/android/requests/ListingReviewsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReviewsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$3;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-direct {p0}, Lcom/airbnb/android/requests/AirRequestFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/android/requests/RequestListener;

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/ReviewsFragment$3;->getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ListingReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ListingReviewsRequest;
    .registers 9
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingReviewsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ListingReviewsRequest;"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "callback":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingReviewsRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ListingReviewsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$3;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    # getter for: Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$400(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    const/16 v4, 0xa

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/ListingReviewsRequest;-><init>(JIILcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method
