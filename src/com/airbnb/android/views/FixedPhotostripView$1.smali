.class Lcom/airbnb/android/views/FixedPhotostripView$1;
.super Ljava/lang/Object;
.source "FixedPhotostripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/FixedPhotostripView;->setImageUrls(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/FixedPhotostripView;

.field final synthetic val$pendingCount:I

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/FixedPhotostripView;ILjava/util/List;)V
    .registers 4

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->this$0:Lcom/airbnb/android/views/FixedPhotostripView;

    iput p2, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->val$pendingCount:I

    iput-object p3, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->val$urls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->this$0:Lcom/airbnb/android/views/FixedPhotostripView;

    # getter for: Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/views/FixedPhotostripView;->access$000(Lcom/airbnb/android/views/FixedPhotostripView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->this$0:Lcom/airbnb/android/views/FixedPhotostripView;

    iget v1, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->val$pendingCount:I

    # setter for: Lcom/airbnb/android/views/FixedPhotostripView;->mPendingCount:I
    invoke-static {v0, v1}, Lcom/airbnb/android/views/FixedPhotostripView;->access$102(Lcom/airbnb/android/views/FixedPhotostripView;I)I

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->this$0:Lcom/airbnb/android/views/FixedPhotostripView;

    # getter for: Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/views/FixedPhotostripView;->access$000(Lcom/airbnb/android/views/FixedPhotostripView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->val$urls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView$1;->this$0:Lcom/airbnb/android/views/FixedPhotostripView;

    # invokes: Lcom/airbnb/android/views/FixedPhotostripView;->renderImages()V
    invoke-static {v0}, Lcom/airbnb/android/views/FixedPhotostripView;->access$200(Lcom/airbnb/android/views/FixedPhotostripView;)V

    .line 94
    return-void
.end method
