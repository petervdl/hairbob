.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 204
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "impressions"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Title:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    .line 210
    return-void
.end method
