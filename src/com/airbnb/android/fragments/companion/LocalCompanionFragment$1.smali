.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->fetchAndShowCurrentMessages()V
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
    .line 98
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 111
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->threadsList:Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mThreadsList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$002(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->messages:Ljava/util/List;

    # invokes: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setupMessagesDisplay(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$100(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$1;->onResponse(Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;)V

    return-void
.end method
