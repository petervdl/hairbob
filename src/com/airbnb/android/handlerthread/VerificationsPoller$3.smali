.class Lcom/airbnb/android/handlerthread/VerificationsPoller$3;
.super Ljava/lang/Object;
.source "VerificationsPoller.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/handlerthread/VerificationsPoller;->handleRequest()V
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
        "Lcom/airbnb/android/requests/VerificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;


# direct methods
.method constructor <init>(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 79
    const-string/jumbo v0, "VerificationsPoller"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    iget-object v0, v0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mResponseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;-><init>(Lcom/airbnb/android/handlerthread/VerificationsPoller$3;Lcom/airbnb/android/requests/VerificationsRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/airbnb/android/requests/VerificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;->onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V

    return-void
.end method
