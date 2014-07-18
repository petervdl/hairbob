.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->startPollingForLatestThreads()V
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
        "Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 254
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v2, p1, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->threadsList:Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$002(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 240
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$000(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->companionThreadUpdated(Ljava/util/List;)V

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 243
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3$1;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 236
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$3;->onResponse(Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;)V

    return-void
.end method
