.class Lcom/airbnb/android/fragments/ListingDetailsFragment$1;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/airbnb/android/requests/ListingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x1

    .line 208
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_53

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingFromIntent:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 211
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e03df

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 213
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # setter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mIsUnlisted:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$502(Lcom/airbnb/android/fragments/ListingDetailsFragment;Z)Z

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingFromIntent:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$002(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateWithListing()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 223
    :goto_43
    return-void

    .line 218
    :cond_44
    invoke-static {}, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;->newInstance()Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_43

    .line 221
    :cond_53
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_43
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingRequest;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/ListingRequest;->listing:Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$002(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateWithListing()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->showRecommendedListingsIfNeeded()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 204
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Lcom/airbnb/android/requests/ListingRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;->onResponse(Lcom/airbnb/android/requests/ListingRequest;)V

    return-void
.end method
