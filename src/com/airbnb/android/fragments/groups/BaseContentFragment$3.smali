.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 308
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V
    invoke-static {v3, v6}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Z)V

    .line 309
    const-string/jumbo v3, "comment_submit"

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 310
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 311
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 312
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 313
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 315
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 316
    .local v0, "author":Lcom/airbnb/android/models/User;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/models/groups/Comment;->forCreation(Ljava/lang/String;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    .line 318
    .local v1, "newComment":Lcom/airbnb/android/models/groups/Comment;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/airbnb/android/models/groups/BaseContent;->addComment(Lcom/airbnb/android/models/groups/Comment;)V

    .line 319
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$500(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$500(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/adapters/groups/CommentAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->notifyDataSetChanged()V

    .line 322
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;

    invoke-direct {v4, p0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3$1;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;Lcom/airbnb/android/models/groups/Comment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 329
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEventForComment()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 330
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v4, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v4, v5}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 332
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getCreateCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$900(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->getCreateCommentRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/CreateCommentRequest;

    move-result-object v2

    .line 333
    .local v2, "request":Lcom/airbnb/android/requests/groups/CreateCommentRequest;
    invoke-virtual {v2}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->execute()V

    .line 334
    return-void
.end method
