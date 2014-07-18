.class Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->loginWithToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity$4$1;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # invokes: Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V
    invoke-static {v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$400(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    .line 179
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 180
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .prologue
    .line 184
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/LoginStatusEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/LoginStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # invokes: Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V
    invoke-static {v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$400(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 187
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1$2;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V

    return-void
.end method
