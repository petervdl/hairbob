.class Lcom/airbnb/android/fragments/groups/CommentFragment$4;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 301
    const-string/jumbo v0, "tap_delete"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 302
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->deleteComment()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 303
    return-void
.end method