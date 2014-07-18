.class public Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;
.super Ljava/lang/Object;
.source "GroupPhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/GroupPhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupPhotoUploadStartedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
