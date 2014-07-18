.class Lcom/airbnb/android/services/PhotoUploadService$1;
.super Ljava/lang/Object;
.source "PhotoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/PhotoUploadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$1;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 125
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;

    iget-object v2, p0, Lcom/airbnb/android/services/PhotoUploadService$1;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {v1, v2}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;-><init>(Lcom/airbnb/android/services/PhotoUploadService;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
