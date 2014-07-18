.class Lcom/airbnb/android/fragments/groups/CommentFragment$5;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Landroid/view/MenuItem;)V
    .registers 3

    .prologue
    .line 314
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    const-string/jumbo v1, "tap_flag"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 319
    new-instance v0, Lcom/airbnb/android/requests/groups/FlagCommentRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getFlagCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/FlagCommentRequest;-><init>(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)V

    .line 320
    .local v0, "request":Lcom/airbnb/android/requests/groups/FlagCommentRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FlagCommentRequest;->execute()V

    .line 321
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 322
    return-void
.end method
