.class Lcom/airbnb/android/fragments/groups/CommentFragment$7;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    const-string/jumbo v1, "tap_reply_button"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 417
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 418
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_42

    .line 419
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 420
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 421
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 422
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 429
    :cond_42
    :goto_42
    return-void

    .line 424
    :cond_43
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 425
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 426
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_42
.end method
