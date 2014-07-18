.class Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;
.super Ljava/lang/Object;
.source "LocationSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "ml_post_list"

    :goto_1a
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "location"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "address_edit_click"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->EditAddress:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    .line 88
    :goto_40
    return-void

    .line 82
    :cond_41
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_1a

    .line 86
    :cond_45
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_40
.end method
