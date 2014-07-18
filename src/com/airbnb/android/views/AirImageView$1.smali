.class Lcom/airbnb/android/views/AirImageView$1;
.super Landroid/os/AsyncTask;
.source "AirImageView.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/AirImageView;->setImageUri(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mImageUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/airbnb/android/views/AirImageView;

.field final synthetic val$defaultResId:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/AirImageView;I)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    iput p2, p0, Lcom/airbnb/android/views/AirImageView$1;->val$defaultResId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/views/AirImageView$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 68
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/airbnb/android/views/AirImageView$1;->mImageUri:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/AirImageView$1;->mImageUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ImageUtils;->getBitmapForUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_26

    .line 71
    iget-object v1, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/AirImageView$1;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    :cond_26
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirImageView$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 62
    :goto_9
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/AirImageView$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "AirImageView$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView$1;->mImageUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    # getter for: Lcom/airbnb/android/views/AirImageView;->mUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/views/AirImageView;->access$000(Lcom/airbnb/android/views/AirImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 80
    if-eqz p1, :cond_16

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_15
    :goto_15
    return-void

    .line 83
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView$1;->this$0:Lcom/airbnb/android/views/AirImageView;

    iget v1, p0, Lcom/airbnb/android/views/AirImageView$1;->val$defaultResId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    goto :goto_15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirImageView$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 62
    :goto_9
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/AirImageView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "AirImageView$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method
