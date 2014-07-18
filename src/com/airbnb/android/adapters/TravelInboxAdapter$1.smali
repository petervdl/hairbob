.class Lcom/airbnb/android/adapters/TravelInboxAdapter$1;
.super Ljava/lang/Object;
.source "TravelInboxAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/TravelInboxAdapter;->loadMore()V
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
        "Lcom/airbnb/android/requests/MessageRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/TravelInboxAdapter;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 248
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    # getter for: Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->access$200(Lcom/airbnb/android/adapters/TravelInboxAdapter;)Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    # getter for: Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->access$200(Lcom/airbnb/android/adapters/TravelInboxAdapter;)Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;->onTravelInboxLoaded()V

    .line 253
    :cond_18
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MessageRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/MessageRequest;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    iget-object v0, p1, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_36

    const/4 v0, 0x1

    :goto_d
    # setter for: Lcom/airbnb/android/adapters/TravelInboxAdapter;->mRemainingData:Z
    invoke-static {v1, v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->access$102(Lcom/airbnb/android/adapters/TravelInboxAdapter;Z)Z

    .line 235
    iget-object v0, p1, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    iget-object v1, p1, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->addAll(Ljava/util/Collection;)V

    .line 239
    :cond_1f
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->notifyDataSetChanged()V

    .line 241
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    # getter for: Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->access$200(Lcom/airbnb/android/adapters/TravelInboxAdapter;)Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 242
    iget-object v0, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    # getter for: Lcom/airbnb/android/adapters/TravelInboxAdapter;->mCallback:Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->access$200(Lcom/airbnb/android/adapters/TravelInboxAdapter;)Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;->onTravelInboxLoaded()V

    .line 244
    :cond_35
    return-void

    .line 233
    :cond_36
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Lcom/airbnb/android/requests/MessageRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TravelInboxAdapter$1;->onResponse(Lcom/airbnb/android/requests/MessageRequest;)V

    return-void
.end method
