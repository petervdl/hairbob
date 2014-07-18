.class Lcom/airbnb/android/activities/ManageListingActivity$9;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->listOrUnlist(Z)V
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
    .line 954
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 968
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .prologue
    const/4 v3, 0x0

    .line 958
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v0, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->listing:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    # setter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$002(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 959
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 960
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/AlertsChangedEvent;

    invoke-direct {v1}, Lcom/airbnb/android/events/AlertsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 961
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # invokes: Lcom/airbnb/android/activities/ManageListingActivity;->updateFragment()V
    invoke-static {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$400(Lcom/airbnb/android/activities/ManageListingActivity;)V

    .line 962
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$9;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v1, 0x7f0e03dc

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 963
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 954
    check-cast p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$9;->onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V

    return-void
.end method
