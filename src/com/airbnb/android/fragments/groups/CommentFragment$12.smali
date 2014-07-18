.class Lcom/airbnb/android/fragments/groups/CommentFragment$12;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->setupReplyForm()V
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
    .line 538
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 555
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 547
    const-string/jumbo v0, "reply_start_typing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 549
    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1400(Lcom/airbnb/android/fragments/groups/CommentFragment;Z)V

    .line 542
    return-void
.end method
