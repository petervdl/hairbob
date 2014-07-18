.class Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$11;

.field final synthetic val$newReply:Lcom/airbnb/android/models/groups/Reply;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment$11;Lcom/airbnb/android/models/groups/Reply;)V
    .registers 3

    .prologue
    .line 524
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$11;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;->val$newReply:Lcom/airbnb/android/models/groups/Reply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$11;

    iget-object v0, v0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$11;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;->val$newReply:Lcom/airbnb/android/models/groups/Reply;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 528
    return-void
.end method
