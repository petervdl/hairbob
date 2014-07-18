.class Lcom/airbnb/android/fragments/groups/CommentFragment$9;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->scrollToNotificationPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;I)V
    .registers 3

    .prologue
    .line 467
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$9;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$9;->val$position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 471
    return-void
.end method
