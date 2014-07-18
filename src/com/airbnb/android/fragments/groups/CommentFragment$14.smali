.class Lcom/airbnb/android/fragments/groups/CommentFragment$14;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->getLikeCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 590
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 607
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/LikeCommentRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 595
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->updateComment(Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$202(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;

    .line 596
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->updateComment(Lcom/airbnb/android/models/groups/Comment;)Z

    .line 597
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1100(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Comment;->getLikesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 598
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1200(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 600
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 590
    check-cast p1, Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$14;->onResponse(Lcom/airbnb/android/requests/groups/LikeCommentRequest;)V

    return-void
.end method
