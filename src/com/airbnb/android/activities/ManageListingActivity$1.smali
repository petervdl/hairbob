.class Lcom/airbnb/android/activities/ManageListingActivity$1;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->loadFragment()V
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
        "Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ManageListingActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->showProgressSpinner(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$200(Lcom/airbnb/android/activities/ManageListingActivity;Z)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    .prologue
    .line 237
    iget-object v0, p1, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;->listing:Lcom/airbnb/android/models/Listing;

    if-nez v0, :cond_b

    .line 244
    :goto_4
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->showProgressSpinner(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$200(Lcom/airbnb/android/activities/ManageListingActivity;Z)V

    .line 245
    return-void

    .line 240
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v1, p1, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;->listing:Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$002(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 241
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$1;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->showHomeFragment()V
    invoke-static {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$100(Lcom/airbnb/android/activities/ManageListingActivity;)V

    goto :goto_4
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$1;->onResponse(Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;)V

    return-void
.end method
