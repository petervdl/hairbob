.class Lcom/airbnb/android/services/GroupPhotoUploadService$3;
.super Ljava/lang/Object;
.source "GroupPhotoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/GroupPhotoUploadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$3;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 167
    new-instance v0, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;

    iget-object v1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$3;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    iget-object v2, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$3;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    # getter for: Lcom/airbnb/android/services/GroupPhotoUploadService;->mPhoto:Lcom/airbnb/android/models/Photo;
    invoke-static {v2}, Lcom/airbnb/android/services/GroupPhotoUploadService;->access$000(Lcom/airbnb/android/services/GroupPhotoUploadService;)Lcom/airbnb/android/models/Photo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;Lcom/airbnb/android/models/Photo;)V

    .line 168
    .local v0, "photoEvent":Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
