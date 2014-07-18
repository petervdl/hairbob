.class Lcom/airbnb/android/fragments/groups/CommentFragment$1;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

.field final synthetic val$reply:Lcom/airbnb/android/models/groups/Reply;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Reply;)V
    .registers 3

    .prologue
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 209
    const-string/jumbo v0, "tap_delete"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldownReplyAction(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Reply;)V

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$1;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->deleteReply(Lcom/airbnb/android/models/groups/Reply;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$100(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Reply;)V

    .line 211
    return-void
.end method
