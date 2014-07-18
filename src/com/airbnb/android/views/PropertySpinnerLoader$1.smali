.class Lcom/airbnb/android/views/PropertySpinnerLoader$1;
.super Ljava/lang/Object;
.source "PropertySpinnerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/PropertySpinnerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PropertySpinnerLoader;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    iget-object v1, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->index:I
    invoke-static {v1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$000(Lcom/airbnb/android/views/PropertySpinnerLoader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I
    invoke-static {v2}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$100(Lcom/airbnb/android/views/PropertySpinnerLoader;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    # setter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->index:I
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$002(Lcom/airbnb/android/views/PropertySpinnerLoader;I)I

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->ivLoader:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$200(Lcom/airbnb/android/views/PropertySpinnerLoader;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->resources:[I
    invoke-static {v1}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$100(Lcom/airbnb/android/views/PropertySpinnerLoader;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->index:I
    invoke-static {v2}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$000(Lcom/airbnb/android/views/PropertySpinnerLoader;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/views/PropertySpinnerLoader$1;->this$0:Lcom/airbnb/android/views/PropertySpinnerLoader;

    # getter for: Lcom/airbnb/android/views/PropertySpinnerLoader;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->access$300(Lcom/airbnb/android/views/PropertySpinnerLoader;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x29

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method
