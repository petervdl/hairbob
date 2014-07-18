.class Lcom/airbnb/android/fragments/groups/CommentFragment$6;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommentFragment;->deleteComment()V
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
        "Lcom/airbnb/android/requests/groups/DeleteCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 2

    .prologue
    .line 364
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 373
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_b

    .line 374
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 376
    :cond_b
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/DeleteCommentRequest;)V
    .registers 2
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/DeleteCommentRequest;

    .prologue
    .line 368
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 364
    check-cast p1, Lcom/airbnb/android/requests/groups/DeleteCommentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$6;->onResponse(Lcom/airbnb/android/requests/groups/DeleteCommentRequest;)V

    return-void
.end method
