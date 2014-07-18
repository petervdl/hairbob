.class Lcom/airbnb/android/fragments/groups/CommentFragment$11;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 504
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 508
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V
    invoke-static {v3, v6}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1400(Lcom/airbnb/android/fragments/groups/CommentFragment;Z)V

    .line 509
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 510
    const-string/jumbo v3, "reply_submit"

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 511
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 512
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 515
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 516
    .local v0, "author":Lcom/airbnb/android/models/User;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/models/groups/Reply;->forCreation(Ljava/lang/String;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Reply;

    move-result-object v1

    .line 517
    .local v1, "newReply":Lcom/airbnb/android/models/groups/Reply;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/airbnb/android/models/groups/Comment;->addReply(Lcom/airbnb/android/models/groups/Reply;)V

    .line 518
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/groups/BaseContent;->updateComment(Lcom/airbnb/android/models/groups/Comment;)Z

    .line 519
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1500(Lcom/airbnb/android/fragments/groups/CommentFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 520
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1500(Lcom/airbnb/android/fragments/groups/CommentFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1100(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1500(Lcom/airbnb/android/fragments/groups/CommentFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumReplies(I)V

    .line 522
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1200(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 523
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->notifyDataSetChanged()V

    .line 524
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;

    invoke-direct {v4, p0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment$11$1;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment$11;Lcom/airbnb/android/models/groups/Reply;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 530
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 531
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v4, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 534
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getCreateReplyRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1600(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->getCreateReplyRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/models/groups/Reply;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/CreateReplyRequest;

    move-result-object v2

    .line 535
    .local v2, "request":Lcom/airbnb/android/requests/groups/CreateReplyRequest;
    invoke-virtual {v2}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->execute()V

    .line 536
    return-void
.end method
