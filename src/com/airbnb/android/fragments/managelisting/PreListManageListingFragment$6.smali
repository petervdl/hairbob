.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;
.super Ljava/lang/Object;
.source "PreListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 153
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 158
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->shouldShowActivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 159
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v4

    const-string/jumbo v2, "activate_listing"

    aput-object v2, v1, v5

    const-string/jumbo v2, "click_finish"

    aput-object v2, v1, v6

    const-string/jumbo v2, ""

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPropertyType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    sget-object v2, Lcom/airbnb/android/enums/CompleteProfileType;->MANAGE_LISTING:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForType(Landroid/content/Context;Lcom/airbnb/android/enums/CompleteProfileType;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x974d

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    :goto_90
    return-void

    .line 164
    :cond_91
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "post_list"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneWithPreList()V

    goto :goto_90
.end method
