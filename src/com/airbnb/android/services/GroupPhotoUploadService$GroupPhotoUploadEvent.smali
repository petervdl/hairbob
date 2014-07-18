.class public Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;
.super Ljava/lang/Object;
.source "GroupPhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/GroupPhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupPhotoUploadEvent"
.end annotation


# instance fields
.field public mPhoto:Lcom/airbnb/android/models/Photo;

.field final synthetic this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/GroupPhotoUploadService;Lcom/airbnb/android/models/Photo;)V
    .registers 3
    .param p2, "photo"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    .line 53
    return-void
.end method
