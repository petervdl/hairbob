.class Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Lcom/airbnb/android/requests/groups/FlagReplyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment$2;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/FlagReplyRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/FlagReplyRequest;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 232
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4f

    .line 233
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Reply;->markAsFlagged()V

    .line 234
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->val$reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/groups/Comment;->updateReply(Lcom/airbnb/android/models/groups/Reply;)Z

    .line 235
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/groups/BaseContent;->updateComment(Lcom/airbnb/android/models/groups/Comment;)Z

    .line 236
    const v2, 0x7f0e0224

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "successToast":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 238
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->this$1:Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/CommentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 240
    .end local v1    # "successToast":Ljava/lang/String;
    :cond_4f
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Lcom/airbnb/android/requests/groups/FlagReplyRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$2$1;->onResponse(Lcom/airbnb/android/requests/groups/FlagReplyRequest;)V

    return-void
.end method
