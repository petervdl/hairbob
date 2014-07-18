.class Lcom/airbnb/android/services/PhotoUploadService$2;
.super Ljava/lang/Object;
.source "PhotoUploadService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/PhotoUploadService;->onHandleIntent(Landroid/content/Intent;)V
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
        "Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/services/PhotoUploadService;->stopForeground(Z)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/PhotoUploadService;->access$002(Lcom/airbnb/android/services/PhotoUploadService;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/PhotoUploadService;->access$100(Lcom/airbnb/android/services/PhotoUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_13
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/PhotoUploadService;->access$100(Lcom/airbnb/android/services/PhotoUploadService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public onResponse(Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/services/PhotoUploadService;->stopForeground(Z)V

    .line 151
    iget-object v1, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    iget-object v0, p1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->mListing:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1, v0}, Lcom/airbnb/android/services/PhotoUploadService;->access$002(Lcom/airbnb/android/services/PhotoUploadService;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/PhotoUploadService;->access$100(Lcom/airbnb/android/services/PhotoUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_1b
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService$2;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/PhotoUploadService;->access$100(Lcom/airbnb/android/services/PhotoUploadService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/PhotoUploadService$2;->onResponse(Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;)V

    return-void
.end method
