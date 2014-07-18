.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$5;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "ml_post_list"

    aput-object v1, v0, v3

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    const-string/jumbo v1, "summary_click"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 220
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, "impressions"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ml_post_list"

    aput-object v1, v0, v4

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    .line 222
    return-void
.end method
