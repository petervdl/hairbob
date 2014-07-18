.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;
.super Landroid/os/AsyncTask;
.source "OnlineIdFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->signInToGoogleAsync()V
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

.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

.field final synthetic val$plusClient:Lcom/google/android/gms/plus/PlusClient;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;Lcom/google/android/gms/plus/PlusClient;)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->val$plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "OnlineIdFragment$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 183
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "OnlineIdFragment$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->val$plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v1

    .line 188
    .local v1, "currentPerson":Lcom/google/android/gms/plus/model/people/Person;
    const/4 v0, 0x0

    .line 189
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 190
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->val$plusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/PlusClient;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$300(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/airbnb/android/utils/SignInUtil;->signIntoGooglePlus(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    return-object v2

    .line 192
    :cond_1b
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$200(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 193
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e0218

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 194
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "OnlineIdFragment$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 183
    :goto_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "OnlineIdFragment$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p1, :cond_b

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$300(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/SignInUtil;->googleCallback(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V

    .line 205
    :cond_b
    return-void
.end method
