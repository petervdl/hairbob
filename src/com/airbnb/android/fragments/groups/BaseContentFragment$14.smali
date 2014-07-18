.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateContentFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 635
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 639
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_40

    .line 640
    const-string/jumbo v1, "tap_comment_button"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 641
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 642
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 643
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 644
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 651
    :cond_40
    :goto_40
    return-void

    .line 646
    :cond_41
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 647
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 648
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_40
.end method
