.class Lcom/airbnb/android/activities/SignInActivity$3;
.super Landroid/os/AsyncTask;
.source "SignInActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V
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

.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;)V
    .registers 2

    .prologue
    .line 479
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "SignInActivity$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 479
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "SignInActivity$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$400(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 488
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # invokes: Lcom/airbnb/android/activities/SignInActivity;->fetchGooglePlusAccessToken()Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$500(Lcom/airbnb/android/activities/SignInActivity;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$600(Lcom/airbnb/android/activities/SignInActivity;)Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->access$000(Lcom/airbnb/android/activities/SignInActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oauth2:https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/payments.make_payments"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/utils/SignInUtil;->signIntoGoogleWithScopes(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "SignInActivity$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 479
    :goto_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$3;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "SignInActivity$3#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$400(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 499
    if-eqz p1, :cond_f

    .line 500
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/SignInUtil;->googleCallback(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V

    .line 527
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->access$802(Lcom/airbnb/android/activities/SignInActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 528
    return-void

    .line 503
    :cond_16
    if-eqz p1, :cond_26

    .line 505
    const/4 v0, 0x1

    new-instance v1, Lcom/airbnb/android/activities/SignInActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/activities/SignInActivity$3$1;-><init>(Lcom/airbnb/android/activities/SignInActivity$3;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->forGoogleOAuth(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->execute()V

    goto :goto_f

    .line 524
    :cond_26
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    goto :goto_f
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 483
    return-void
.end method
