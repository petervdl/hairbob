.class public Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;
.super Ljava/lang/Object;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/PhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoUploadStartedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
