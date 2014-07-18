.class Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;
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
    .line 117
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 122
    invoke-static {}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookAdvanceNoticeFocus()V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v1

    const/16 v2, 0x798

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;I)Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    :cond_23
    return-void
.end method
