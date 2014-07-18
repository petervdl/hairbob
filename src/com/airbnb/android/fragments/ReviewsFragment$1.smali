.class Lcom/airbnb/android/fragments/ReviewsFragment$1;
.super Lcom/airbnb/android/requests/AirRequestFactory;
.source "ReviewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ReviewsFragment;->setUserReviewAdapter(Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirRequestFactory",
        "<",
        "Lcom/airbnb/android/requests/ReviewsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

.field final synthetic val$mode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReviewsFragment;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$1;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ReviewsFragment$1;->val$mode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-direct {p0}, Lcom/airbnb/android/requests/AirRequestFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/android/requests/RequestListener;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/ReviewsFragment$1;->getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReviewsRequest;
    .registers 10
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReviewsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReviewsRequest;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "callback":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReviewsRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReviewsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$1;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    # getter for: Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$000(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment$1;->val$mode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    const/16 v5, 0xa

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/ReviewsRequest;-><init>(JLcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;IILcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method
