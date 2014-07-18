.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;
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
    .line 109
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->val$listing:Lcom/airbnb/android/models/Listing;

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

    .line 113
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    sget-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v0, v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string/jumbo v0, "ml_pre_list"

    aput-object v0, v1, v4

    const-string/jumbo v0, "general_nav"

    aput-object v0, v1, v5

    const-string/jumbo v0, "write_title_click"

    aput-object v0, v1, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string/jumbo v0, "not_done"

    :goto_49
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 115
    new-array v0, v7, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "impressions"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ml_pre_list"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Title:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$2;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    .line 117
    return-void

    .line 113
    :cond_7c
    const-string/jumbo v0, "done"

    goto :goto_49
.end method
