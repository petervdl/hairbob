.class Lcom/airbnb/android/activities/ManageListingActivity$8;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->doneWithPreList()V
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

.field final synthetic val$f:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 913
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->val$f:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 10
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 917
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->val$f:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 918
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseError(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "errorString":Ljava/lang/String;
    const-string/jumbo v1, "security_check_required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 920
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v3

    const-string/jumbo v2, "activate_listing"

    aput-object v2, v1, v5

    const-string/jumbo v2, "listing_activated"

    aput-object v2, v1, v6

    const-string/jumbo v2, "security_check"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    sget-object v3, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Listing:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->intentForVerificationType(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x7a5

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/ManageListingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 923
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_id"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPrelistPresent(Lcom/airbnb/android/utils/Strap;)V

    .line 929
    :goto_62
    return-void

    .line 925
    :cond_63
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v3

    const-string/jumbo v2, "activate_listing"

    aput-object v2, v1, v5

    const-string/jumbo v2, "listing_activated"

    aput-object v2, v1, v6

    const-string/jumbo v2, "fail"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v2, 0x7f0e03dd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_62
.end method

.method public onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .prologue
    const/4 v3, 0x0

    .line 933
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "activate_listing"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "listing_activated"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "success"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    iget-object v0, p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->listing:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    # setter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$002(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 935
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->val$f:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v2, 0x7f0e04f0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f020129

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity$8;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ManageListingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 938
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 913
    check-cast p1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$8;->onResponse(Lcom/airbnb/android/requests/ListingUpdateObjectRequest;)V

    return-void
.end method
