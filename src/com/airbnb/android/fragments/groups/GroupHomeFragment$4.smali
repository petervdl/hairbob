.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    const v1, 0x7f0e0249

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 415
    const-string/jumbo v0, "tap_join"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 416
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isNeedsDisclaimer()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 417
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showLegalDisclaimerDialog()V

    .line 421
    :goto_33
    return-void

    .line 419
    :cond_34
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->joinGroup()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    goto :goto_33
.end method
