.class Lcom/airbnb/android/views/PhotoStripView$1;
.super Ljava/lang/Object;
.source "PhotoStripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PhotoStripView;->computeImageLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PhotoStripView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PhotoStripView;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoStripView$1;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoStripView$1;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    # invokes: Lcom/airbnb/android/views/PhotoStripView;->renderImages()V
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoStripView;->access$000(Lcom/airbnb/android/views/PhotoStripView;)V

    .line 97
    return-void
.end method
