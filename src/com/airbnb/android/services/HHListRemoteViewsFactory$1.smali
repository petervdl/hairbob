.class Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;
.super Ljava/lang/Object;
.source "HHListWidgetService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/HHListRemoteViewsFactory;->onDataSetChanged()V
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
        "Lcom/airbnb/android/requests/HostHomeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    # getter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$000(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_7
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    # getter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$000(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/HostHomeRequest;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/airbnb/android/requests/HostHomeRequest;->current:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$102(Lcom/airbnb/android/services/HHListRemoteViewsFactory;Ljava/util/List;)Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    # getter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$100(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    # getter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$000(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_1e
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->this$0:Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    # getter for: Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->access$000(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, Lcom/airbnb/android/requests/HostHomeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;->onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V

    return-void
.end method
