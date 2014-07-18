.class Lcom/airbnb/android/fragments/groups/CommentFragment$13;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->getCreateReplyRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/CreateReplyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1400(Lcom/airbnb/android/fragments/groups/CommentFragment;Z)V

    .line 584
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 585
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/CreateReplyRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/CreateReplyRequest;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->getComment()Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$202(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;

    .line 566
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$302(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 567
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$002(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    .line 570
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1400(Lcom/airbnb/android/fragments/groups/CommentFragment;Z)V

    .line 575
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoaded()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 576
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 578
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 560
    check-cast p1, Lcom/airbnb/android/requests/groups/CreateReplyRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$13;->onResponse(Lcom/airbnb/android/requests/groups/CreateReplyRequest;)V

    return-void
.end method
