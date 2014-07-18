.class Lcom/airbnb/android/services/GroupPhotoUploadService$1;
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
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$1;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 90
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;

    iget-object v2, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$1;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {v1, v2}, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
