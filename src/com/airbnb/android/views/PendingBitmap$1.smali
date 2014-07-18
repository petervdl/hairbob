.class Lcom/airbnb/android/views/PendingBitmap$1;
.super Landroid/os/AsyncTask;
.source "PendingBitmap.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PendingBitmap;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/airbnb/android/views/PendingBitmap;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PendingBitmap;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/views/PendingBitmap$1;->this$0:Lcom/airbnb/android/views/PendingBitmap;

    iput-object p2, p0, Lcom/airbnb/android/views/PendingBitmap$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/views/PendingBitmap$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/views/PendingBitmap$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "PendingBitmap$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 45
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/PendingBitmap$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "PendingBitmap$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/views/PendingBitmap$1;->this$0:Lcom/airbnb/android/views/PendingBitmap;

    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f020219

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PendingBitmap;->access$002(Lcom/airbnb/android/views/PendingBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/views/PendingBitmap$1;->this$0:Lcom/airbnb/android/views/PendingBitmap;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PendingBitmap;->access$002(Lcom/airbnb/android/views/PendingBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method
