.class Lcom/airbnb/android/views/LoaderFrame$1;
.super Ljava/lang/Object;
.source "LoaderFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/LoaderFrame;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/LoaderFrame;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/LoaderFrame;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/views/LoaderFrame$1;->this$0:Lcom/airbnb/android/views/LoaderFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/views/LoaderFrame$1;->this$0:Lcom/airbnb/android/views/LoaderFrame;

    # getter for: Lcom/airbnb/android/views/LoaderFrame;->mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;
    invoke-static {v0}, Lcom/airbnb/android/views/LoaderFrame;->access$000(Lcom/airbnb/android/views/LoaderFrame;)Lcom/airbnb/android/views/PropertySpinnerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->stopAnimation()V

    .line 39
    iget-object v0, p0, Lcom/airbnb/android/views/LoaderFrame$1;->this$0:Lcom/airbnb/android/views/LoaderFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 40
    return-void
.end method
