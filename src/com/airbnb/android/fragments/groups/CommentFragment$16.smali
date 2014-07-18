.class Lcom/airbnb/android/fragments/groups/CommentFragment$16;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->fetchData()V
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
        "Lcom/airbnb/android/requests/groups/GetCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 659
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 672
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 673
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 674
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 676
    :cond_b
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoadFailed()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$2000(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 677
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/GetCommentRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/GetCommentRequest;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->getComment()Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$202(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;

    .line 664
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$302(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 665
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$002(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    .line 666
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoaded()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 667
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->access$1900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 668
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 659
    check-cast p1, Lcom/airbnb/android/requests/groups/GetCommentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$16;->onResponse(Lcom/airbnb/android/requests/groups/GetCommentRequest;)V

    return-void
.end method
