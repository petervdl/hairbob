.class Lcom/airbnb/android/activities/ManageListingActivity$7$1;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity$7;->onDelete()V
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
.field final synthetic this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity$7;)V
    .registers 2

    .prologue
    .line 865
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    iget-object v0, v0, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v1, 0x7f0e03da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 870
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingDeleteRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingDeleteRequest;

    .prologue
    .line 874
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    iget-object v1, v1, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v2, 0x7f0e03d9

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 875
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    iget-object v1, v1, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 876
    .local v0, "user":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v1

    if-lez v1, :cond_48

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/User;->setTotalListingsCount(I)V

    .line 877
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    iget-object v3, v3, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 878
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->this$1:Lcom/airbnb/android/activities/ManageListingActivity$7;

    iget-object v1, v1, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/ManageListingActivity;->finish()V

    .line 879
    return-void

    .line 876
    :cond_48
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 865
    check-cast p1, Lcom/airbnb/android/requests/ListingDeleteRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$7$1;->onResponse(Lcom/airbnb/android/requests/ListingDeleteRequest;)V

    return-void
.end method
