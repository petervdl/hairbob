.class Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;
.super Ljava/lang/Object;
.source "InstantBookEnabledFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 106
    invoke-static {}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookVisibilityFocus()V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getWhoCanBookInstantly()Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v2

    const/16 v3, 0x797

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;I)Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    :cond_2d
    return-void
.end method
