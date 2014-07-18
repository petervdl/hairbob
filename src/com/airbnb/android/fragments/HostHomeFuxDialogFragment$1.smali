.class Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;
.super Ljava/lang/Object;
.source "HostHomeFuxDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->access$000(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->access$000(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 108
    invoke-static {v1}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackHostInboxMoved(Z)V

    .line 112
    :goto_15
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    # setter for: Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->mPressedOK:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->access$102(Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;Z)Z

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->dismiss()V

    .line 114
    return-void

    .line 110
    :cond_20
    invoke-static {}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackViewWelcomeToHostHome()V

    goto :goto_15
.end method
