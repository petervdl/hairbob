.class Lcom/airbnb/android/services/GroupPhotoUploadService$2;
.super Ljava/lang/Object;
.source "GroupPhotoUploadService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/GroupPhotoUploadService;->onHandleIntent(Landroid/content/Intent;)V
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
        "Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/services/GroupPhotoUploadService;->stopForeground(Z)V

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mPhoto:Lcom/airbnb/android/models/Photo;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$002(Lcom/airbnb/android/services/GroupPhotoUploadService;Lcom/airbnb/android/models/Photo;)Lcom/airbnb/android/models/Photo;

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    # getter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$100(Lcom/airbnb/android/services/GroupPhotoUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_13
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    # getter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$100(Lcom/airbnb/android/services/GroupPhotoUploadService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 147
    invoke-static {p1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackPhotoUploadFailed(Lcom/android/volley/VolleyError;)V

    .line 148
    return-void

    .line 146
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onResponse(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/services/GroupPhotoUploadService;->stopForeground(Z)V

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    iget-object v1, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;->mPhoto:Lcom/airbnb/android/models/Photo;

    # setter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mPhoto:Lcom/airbnb/android/models/Photo;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$002(Lcom/airbnb/android/services/GroupPhotoUploadService;Lcom/airbnb/android/models/Photo;)Lcom/airbnb/android/models/Photo;

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    # getter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$100(Lcom/airbnb/android/services/GroupPhotoUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_14
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    # getter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$100(Lcom/airbnb/android/services/GroupPhotoUploadService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/GroupPhotoUploadService$2;->onResponse(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;)V

    return-void
.end method
