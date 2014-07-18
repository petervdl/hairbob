.class Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;
.super Ljava/lang/Object;
.source "PhotoRearranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/PhotoRearranger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingBitmap"
.end annotation


# instance fields
.field public final mCenter:Landroid/graphics/Point;

.field public final mOffset:Landroid/graphics/Point;

.field public final mScreenSpace:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/airbnb/android/views/PhotoRearranger;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/views/PhotoRearranger;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p2, "screenSpace"    # Landroid/graphics/Rect;
    .param p3, "center"    # Landroid/graphics/Point;
    .param p4, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    .line 346
    iput-object p3, p0, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mCenter:Landroid/graphics/Point;

    .line 347
    iput-object p4, p0, Lcom/airbnb/android/views/PhotoRearranger$PendingBitmap;->mOffset:Landroid/graphics/Point;

    .line 348
    return-void
.end method
