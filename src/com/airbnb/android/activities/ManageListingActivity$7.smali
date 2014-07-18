.class Lcom/airbnb/android/activities/ManageListingActivity$7;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->deleteListingPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ManageListingActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 2

    .prologue
    .line 861
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 888
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "ml_post_list"

    :goto_1a
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "delete_space_confirmation"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "cancel"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 890
    return-void

    .line 888
    :cond_2c
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_1a
.end method

.method public onDelete()V
    .registers 5

    .prologue
    .line 865
    new-instance v0, Lcom/airbnb/android/requests/ListingDeleteRequest;

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/activities/ManageListingActivity$7$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/ManageListingActivity$7$1;-><init>(Lcom/airbnb/android/activities/ManageListingActivity$7;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/ListingDeleteRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    .line 881
    .local v0, "deleteRequest":Lcom/airbnb/android/requests/ListingDeleteRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingDeleteRequest;->execute()V

    .line 882
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity$7;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "ml_post_list"

    :goto_31
    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string/jumbo v3, "delete_space_confirmation"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "delete"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 884
    return-void

    .line 882
    :cond_43
    const-string/jumbo v1, "ml_pre_list"

    goto :goto_31
.end method
