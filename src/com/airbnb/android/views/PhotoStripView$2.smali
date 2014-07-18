.class Lcom/airbnb/android/views/PhotoStripView$2;
.super Ljava/lang/Object;
.source "PhotoStripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PhotoStripView;->setImageUrls(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PhotoStripView;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PhotoStripView;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoStripView$2;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    iput-object p2, p0, Lcom/airbnb/android/views/PhotoStripView$2;->val$urls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoStripView$2;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    # getter for: Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoStripView;->access$100(Lcom/airbnb/android/views/PhotoStripView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoStripView$2;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    # getter for: Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoStripView;->access$100(Lcom/airbnb/android/views/PhotoStripView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoStripView$2;->val$urls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoStripView$2;->this$0:Lcom/airbnb/android/views/PhotoStripView;

    # invokes: Lcom/airbnb/android/views/PhotoStripView;->renderImages()V
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoStripView;->access$000(Lcom/airbnb/android/views/PhotoStripView;)V

    .line 128
    return-void
.end method
