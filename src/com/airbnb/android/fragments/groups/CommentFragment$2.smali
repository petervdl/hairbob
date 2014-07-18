.class Lcom/airbnb/android/fragments/groups/CommentFragment$2;
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

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$reply:Lcom/airbnb/android/models/groups/Reply;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Landroid/view/MenuItem;Lcom/airbnb/android/models/groups/Reply;)V
    .registers 4

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$item:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    const-string/jumbo v1, "tap_flag"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldownReplyAction(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Reply;)V

    .line 227
    new-instance v0, Lcom/airbnb/android/requests/groups/FlagReplyRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    new-instance v2, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment$2;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/FlagReplyRequest;-><init>(Lcom/airbnb/android/models/groups/Reply;Lcom/airbnb/android/requests/RequestListener;)V

    .line 248
    .local v0, "request":Lcom/airbnb/android/requests/groups/FlagReplyRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FlagReplyRequest;->execute()V

    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 250
    return-void
.end method
