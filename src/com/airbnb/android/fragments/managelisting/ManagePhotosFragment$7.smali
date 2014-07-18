.class Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;
.super Ljava/lang/Object;
.source "ManagePhotosFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lcom/airbnb/android/requests/ListingUpdateObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V
    .registers 2

    .prologue
    .line 470
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Z)V

    .line 485
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 486
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 488
    :cond_17
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Z)V

    .line 475
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    iget-object v0, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->listing:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$002(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 477
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    .line 478
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    .line 479
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 470
    check-cast p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;->onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V

    return-void
.end method
