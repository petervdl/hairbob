.class Lcom/airbnb/android/activities/ManageListingActivity$4;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V
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
.field final synthetic this$0:Lcom/airbnb/android/activities/ManageListingActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 2

    .prologue
    .line 708
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 724
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->updateFragment()V
    invoke-static {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$400(Lcom/airbnb/android/activities/ManageListingActivity;)V

    .line 726
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v1, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->errorMessages:Ljava/util/List;

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->checkForHostingErrors(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$300(Lcom/airbnb/android/activities/ManageListingActivity;Ljava/util/List;)V

    .line 714
    iget-object v0, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->listing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 715
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v0, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->listing:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$002(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 716
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$4;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->updateFragment()V
    invoke-static {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$400(Lcom/airbnb/android/activities/ManageListingActivity;)V

    .line 719
    :cond_32
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 708
    check-cast p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$4;->onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V

    return-void
.end method
