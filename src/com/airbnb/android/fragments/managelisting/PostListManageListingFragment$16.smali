.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->deleteListing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ListingDeleteRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

.field final synthetic val$listingId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;J)V
    .registers 4

    .prologue
    .line 507
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iput-wide p2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->val$listingId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e03da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingDeleteRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingDeleteRequest;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e03d9

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 512
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 513
    .local v0, "user":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v1

    if-lez v1, :cond_46

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_25
    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/User;->setTotalListingsCount(I)V

    .line 514
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;

    iget-wide v3, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->val$listingId:J

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 515
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 516
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 518
    :cond_45
    return-void

    .line 513
    :cond_46
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 507
    check-cast p1, Lcom/airbnb/android/requests/ListingDeleteRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;->onResponse(Lcom/airbnb/android/requests/ListingDeleteRequest;)V

    return-void
.end method
