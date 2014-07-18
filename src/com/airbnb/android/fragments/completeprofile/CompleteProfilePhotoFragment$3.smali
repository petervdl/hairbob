.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;
.super Landroid/os/AsyncTask;
.source "CompleteProfilePhotoFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "CompleteProfilePhotoFragment$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 218
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "CompleteProfilePhotoFragment$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/ImageUtils;->getFilePathForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "CompleteProfilePhotoFragment$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 218
    :goto_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "CompleteProfilePhotoFragment$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p1, :cond_7

    .line 232
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onPhotoCapture(Ljava/lang/String;)V

    .line 234
    :cond_7
    return-void
.end method
