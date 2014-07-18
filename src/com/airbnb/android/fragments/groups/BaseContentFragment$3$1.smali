.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;

.field final synthetic val$newComment:Lcom/airbnb/android/models/groups/Comment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;Lcom/airbnb/android/models/groups/Comment;)V
    .registers 3

    .prologue
    .line 322
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;->this$1:Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;->val$newComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;->this$1:Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;

    iget-object v0, v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;->this$1:Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/adapters/groups/CommentAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;->val$newComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 326
    return-void
.end method
