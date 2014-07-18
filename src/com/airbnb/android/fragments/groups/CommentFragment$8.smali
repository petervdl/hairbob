.class Lcom/airbnb/android/fragments/groups/CommentFragment$8;
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
    .line 432
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 435
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 436
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 437
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_6e

    .line 438
    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 439
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/airbnb/android/models/groups/Comment;->isLikedBy(Lcom/airbnb/android/models/User;)Z

    move-result v2

    .line 441
    .local v2, "isLiked":Z
    if-eqz v2, :cond_6f

    .line 442
    const-string/jumbo v4, "tap_unlike"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v6}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 443
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getLikeCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->destroyRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    move-result-object v3

    .line 444
    .local v3, "request":Lcom/airbnb/android/requests/groups/LikeCommentRequest;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1100(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Comment;->getLikesCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 445
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 452
    :goto_66
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1200(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 453
    invoke-virtual {v3}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->execute()V

    .line 455
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v2    # "isLiked":Z
    .end local v3    # "request":Lcom/airbnb/android/requests/groups/LikeCommentRequest;
    :cond_6e
    return-void

    .line 447
    .restart local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .restart local v2    # "isLiked":Z
    :cond_6f
    const-string/jumbo v4, "tap_like"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v6}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 448
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getLikeCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->createRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    move-result-object v3

    .line 449
    .restart local v3    # "request":Lcom/airbnb/android/requests/groups/LikeCommentRequest;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1100(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Comment;->getLikesCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 450
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    goto :goto_66
.end method
