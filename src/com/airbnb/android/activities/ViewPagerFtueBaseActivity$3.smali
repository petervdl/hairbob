.class Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;
.super Landroid/os/AsyncTask;
.source "ViewPagerFtueBaseActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->scaleBackgroundImagesIfNeeded(II)V
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
        "Landroid/graphics/drawable/TransitionDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

.field final synthetic val$currIndex:I

.field final synthetic val$nextIndex:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;II)V
    .registers 4

    .prologue
    .line 241
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iput p2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$currIndex:I

    iput p3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 245
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 248
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$currIndex:I

    aget-object v1, v6, v7

    .line 249
    .local v1, "currImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_3e

    .line 250
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v7}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getBackgroundImageResIds()[I

    move-result-object v7

    iget v8, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$currIndex:I

    aget v7, v7, v8

    invoke-static {v6, v7, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "currImageBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "currImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 252
    .restart local v1    # "currImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$currIndex:I

    aput-object v1, v6, v7

    .line 255
    .end local v0    # "currImageBitmap":Landroid/graphics/Bitmap;
    :cond_3e
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    aget-object v3, v6, v7

    .line 256
    .local v3, "nextImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    aget-object v6, v6, v7

    if-nez v6, :cond_7d

    .line 257
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v7}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getBackgroundImageResIds()[I

    move-result-object v7

    iget v8, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    aget v7, v7, v8

    invoke-static {v6, v7, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    .local v2, "nextImageBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "nextImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 259
    .restart local v3    # "nextImageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    aput-object v3, v6, v7

    .line 261
    .end local v2    # "nextImageBitmap":Landroid/graphics/Bitmap;
    :cond_7d
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 262
    .local v5, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ViewPagerFtueBaseActivity$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 241
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "ViewPagerFtueBaseActivity$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected onPostExecute(Landroid/graphics/drawable/TransitionDrawable;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/drawable/TransitionDrawable;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iget v0, v0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    iget v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->val$nextIndex:I

    if-ne v0, v1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # invokes: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->startBackgroundImagesTransition(Landroid/graphics/drawable/TransitionDrawable;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$400(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Landroid/graphics/drawable/TransitionDrawable;)V

    .line 270
    :cond_d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ViewPagerFtueBaseActivity$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 241
    :goto_9
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;->onPostExecute(Landroid/graphics/drawable/TransitionDrawable;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "ViewPagerFtueBaseActivity$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method
