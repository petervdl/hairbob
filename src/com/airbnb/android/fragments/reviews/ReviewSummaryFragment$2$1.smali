.class Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;
.super Ljava/lang/Object;
.source "ReviewSummaryFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/SubmitReviewRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 219
    :cond_20
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SubmitReviewRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/SubmitReviewRequest;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/SubmitReviewRequest;->review:Lcom/airbnb/android/models/Review;

    # setter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$002(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/models/Review;

    .line 191
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/events/ReviewUpdatedEvent;

    iget-object v4, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v4, v4, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v4}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/android/events/ReviewUpdatedEvent;-><init>(Lcom/airbnb/android/models/Review;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 192
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/events/AlertsChangedEvent;

    invoke-direct {v3}, Lcom/airbnb/android/events/AlertsChangedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 194
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewRole()Lcom/airbnb/android/models/ReviewRole;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/models/ReviewRole;->Host:Lcom/airbnb/android/models/ReviewRole;

    if-ne v2, v3, :cond_ad

    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    .line 195
    .local v1, "badgeType":Lcom/airbnb/android/models/BadgeCount$BadgeType;
    :goto_37
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 196
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/airbnb/android/AirbnbApi;->decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V

    .line 198
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 199
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mDoubleBlindExperiment:Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$200(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 200
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v3, v3, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    const v4, 0x7f0e065d

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_80
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v3, v3, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/airbnb/android/fragments/NPSFragment;

    iget-object v5, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v5, v5, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v5}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/fragments/NPSFragment;->bundleWithListings(Lcom/airbnb/android/models/Review;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->startActivity(Landroid/content/Intent;)V

    .line 203
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 211
    :cond_ac
    :goto_ac
    return-void

    .line 194
    .end local v1    # "badgeType":Lcom/airbnb/android/models/BadgeCount$BadgeType;
    :cond_ad
    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->TravelInbox:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    goto :goto_37

    .line 206
    .restart local v1    # "badgeType":Lcom/airbnb/android/models/BadgeCount$BadgeType;
    :cond_b0
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 207
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    if-eqz v0, :cond_ac

    .line 208
    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V

    goto :goto_ac
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lcom/airbnb/android/requests/SubmitReviewRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;->onResponse(Lcom/airbnb/android/requests/SubmitReviewRequest;)V

    return-void
.end method
