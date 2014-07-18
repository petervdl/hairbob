.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getCreateCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/CreateCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 700
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Z)V

    .line 723
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 724
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/CreateCommentRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/CreateCommentRequest;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$002(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 706
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 709
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 711
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Z)V

    .line 714
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoaded()V

    .line 715
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 716
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v1, v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 700
    check-cast p1, Lcom/airbnb/android/requests/groups/CreateCommentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;->onResponse(Lcom/airbnb/android/requests/groups/CreateCommentRequest;)V

    return-void
.end method
