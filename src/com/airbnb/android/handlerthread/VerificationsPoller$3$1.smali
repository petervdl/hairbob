.class Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;
.super Ljava/lang/Object;
.source "VerificationsPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/handlerthread/VerificationsPoller$3;->onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/handlerthread/VerificationsPoller$3;

.field final synthetic val$response:Lcom/airbnb/android/requests/VerificationsRequest;


# direct methods
.method constructor <init>(Lcom/airbnb/android/handlerthread/VerificationsPoller$3;Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;->this$1:Lcom/airbnb/android/handlerthread/VerificationsPoller$3;

    iput-object p2, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;->val$response:Lcom/airbnb/android/requests/VerificationsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;->val$response:Lcom/airbnb/android/requests/VerificationsRequest;

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;->this$1:Lcom/airbnb/android/handlerthread/VerificationsPoller$3;

    iget-object v0, v0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    iget-object v0, v0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mListener:Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;

    iget-object v1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$3$1;->val$response:Lcom/airbnb/android/requests/VerificationsRequest;

    iget-object v1, v1, Lcom/airbnb/android/requests/VerificationsRequest;->verifications:Lcom/airbnb/android/models/CheckpointVerifications;

    invoke-interface {v0, v1}, Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;->onVerificationsResponse(Lcom/airbnb/android/models/CheckpointVerifications;)V

    .line 73
    :cond_11
    return-void
.end method
