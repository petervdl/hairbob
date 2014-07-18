.class Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;
.super Ljava/lang/Object;
.source "OptionalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 164
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 168
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "ml_post_list"

    :goto_16
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "optional_details"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "delete_space_click"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->deleteListingPrompt()V

    .line 171
    return-void

    .line 168
    :cond_2f
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_16
.end method
