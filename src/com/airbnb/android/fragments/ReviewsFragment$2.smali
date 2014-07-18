.class Lcom/airbnb/android/fragments/ReviewsFragment$2;
.super Ljava/lang/Object;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;


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
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener",
        "<",
        "Lcom/airbnb/android/requests/ReviewsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReviewsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    # getter for: Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$100(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReviewsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ReviewsRequest;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    # getter for: Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$100(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    # getter for: Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$200(Lcom/airbnb/android/fragments/ReviewsFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$2;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    iget v1, p1, Lcom/airbnb/android/requests/ReviewsRequest;->reviews_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/airbnb/android/fragments/ReviewsFragment;->inputReviewCount(Ljava/lang/Integer;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$300(Lcom/airbnb/android/fragments/ReviewsFragment;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 128
    :cond_1e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Lcom/airbnb/android/requests/ReviewsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ReviewsFragment$2;->onResponse(Lcom/airbnb/android/requests/ReviewsRequest;)V

    return-void
.end method
