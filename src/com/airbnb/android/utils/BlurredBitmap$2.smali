.class Lcom/airbnb/android/utils/BlurredBitmap$2;
.super Landroid/os/AsyncTask;
.source "BlurredBitmap.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/BlurredBitmap;->blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/airbnb/android/utils/BlurredBitmap;

.field final synthetic val$callback:Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/content/Context;FLcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V
    .registers 5

    .prologue
    .line 119
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    iput-object p2, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$radius:F

    iput-object p4, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$callback:Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 122
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$context:Landroid/content/Context;

    if-nez v8, :cond_b

    .line 123
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 179
    :goto_a
    return-object v5

    .line 127
    :cond_b
    const-class v9, Lcom/airbnb/android/utils/BlurredBitmap;

    monitor-enter v9

    .line 129
    :try_start_e
    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Lcom/airbnb/android/utils/BlurredBitmap;->access$300()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    if-nez v8, :cond_1d

    .line 130
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    # setter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {v8}, Lcom/airbnb/android/utils/BlurredBitmap;->access$302(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/RenderScript;
    :try_end_1d
    .catch Landroid/support/v8/renderscript/RSRuntimeException; {:try_start_e .. :try_end_1d} :catch_af
    .catchall {:try_start_e .. :try_end_1d} :catchall_b9

    .line 135
    :cond_1d
    :try_start_1d
    monitor-exit v9
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_b9

    .line 137
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    .local v0, "blurEdgeSize":I
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 142
    .local v5, "output":Landroid/graphics/Bitmap;
    :try_start_2b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v9, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 143
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    iget-object v9, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    # invokes: Lcom/airbnb/android/utils/BlurredBitmap;->convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v10}, Lcom/airbnb/android/utils/BlurredBitmap;->access$400(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 146
    :cond_4b
    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Lcom/airbnb/android/utils/BlurredBitmap;->access$300()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    .line 147
    .local v7, "srcAlloc":Landroid/support/v8/renderscript/Allocation;
    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Lcom/airbnb/android/utils/BlurredBitmap;->access$300()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 148
    .local v3, "dstAlloc":Landroid/support/v8/renderscript/Allocation;
    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Lcom/airbnb/android/utils/BlurredBitmap;->access$300()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Lcom/airbnb/android/utils/BlurredBitmap;->access$300()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v6

    .line 149
    .local v6, "script":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    iget v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$radius:F

    invoke-virtual {v6, v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 150
    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 151
    invoke-virtual {v6, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 153
    invoke-virtual {v3, v5}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 157
    if-lez v0, :cond_9b

    .line 158
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    sub-int/2addr v9, v10

    invoke-static {v5, v0, v0, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_9a

    .line 161
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_9a
    move-object v5, v2

    .line 167
    .end local v2    # "cropped":Landroid/graphics/Bitmap;
    :cond_9b
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    # invokes: Lcom/airbnb/android/utils/BlurredBitmap;->convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    invoke-static {v8, v5, v9}, Lcom/airbnb/android/utils/BlurredBitmap;->access$400(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    .local v1, "converted":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_ac

    .line 170
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_ac} :catch_bc

    .line 173
    :cond_ac
    move-object v5, v1

    goto/16 :goto_a

    .line 132
    .end local v0    # "blurEdgeSize":I
    .end local v1    # "converted":Landroid/graphics/Bitmap;
    .end local v3    # "dstAlloc":Landroid/support/v8/renderscript/Allocation;
    .end local v5    # "output":Landroid/graphics/Bitmap;
    .end local v6    # "script":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    .end local v7    # "srcAlloc":Landroid/support/v8/renderscript/Allocation;
    :catch_af
    move-exception v4

    .line 133
    .local v4, "e":Landroid/support/v8/renderscript/RSRuntimeException;
    :try_start_b0
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    monitor-exit v9

    goto/16 :goto_a

    .line 135
    .end local v4    # "e":Landroid/support/v8/renderscript/RSRuntimeException;
    :catchall_b9
    move-exception v8

    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_b0 .. :try_end_bb} :catchall_b9

    throw v8

    .line 174
    .restart local v0    # "blurEdgeSize":I
    .restart local v5    # "output":Landroid/graphics/Bitmap;
    :catch_bc
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v8, "android_eng"

    const/4 v9, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    const-string/jumbo v11, "oom_crash_caught"

    const-string/jumbo v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    const-string/jumbo v11, "action"

    const-string/jumbo v12, "blurred_bitmap"

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 176
    iget-object v8, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/airbnb/android/utils/BlurredBitmap;->access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_a
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "BlurredBitmap$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 119
    :goto_9
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/BlurredBitmap$2;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "BlurredBitmap$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/utils/BlurredBitmap;->access$500(Lcom/airbnb/android/utils/BlurredBitmap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # getter for: Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/utils/BlurredBitmap;->access$500(Lcom/airbnb/android/utils/BlurredBitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->val$callback:Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;

    invoke-interface {v0, p1}, Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;->bitmapBlurComplete(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/airbnb/android/utils/BlurredBitmap;->access$602(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "BlurredBitmap$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 119
    :goto_9
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/BlurredBitmap$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "BlurredBitmap$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method
