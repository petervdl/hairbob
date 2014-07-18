.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$7;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 174
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

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "optional_details"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->OptionalDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    .line 176
    return-void
.end method
